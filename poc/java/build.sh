#!/bin/sh
# 用 Android SDK build-tools 编译 SrmiClient
# 依赖: ANDROID_HOME / build-tools (aapt2, d8, apksigner), 以及 android.jar
set -e

ANDROID_JAR=${ANDROID_JAR:-$ANDROID_HOME/platforms/android-31/android.jar}
BT=${BT:-$ANDROID_HOME/build-tools/31.0.0}
OUT=out
rm -rf $OUT && mkdir -p $OUT/gen $OUT/classes

# 1. AIDL -> Java
$BT/aidl --lang=java -o $OUT/gen -I. ISrmiCallback.aidl ISrmiService.aidl
echo "[1/4] aidl OK"

# 2. javac
find $OUT/gen SrmiClient.java -name '*.java' > $OUT/srcs.txt
javac -source 8 -target 8 -bootclasspath $ANDROID_JAR -d $OUT/classes @$OUT/srcs.txt 2>&1 | grep -v 'bootstrap class path' || true
echo "[2/4] javac OK"

# 3. d8 -> classes.dex
d8 --lib $ANDROID_JAR --min-api 31 --output $OUT $OUT/classes/com/poc/srmi/*.class $OUT/classes/com/sprd/srmi/*.class
echo "[3/4] d8 OK"

# 4. 打包 + 签名
mkdir -p $OUT/apk
cp $OUT/classes.dex $OUT/apk/
$BT/aapt2 link -o $OUT/unsigned.apk -I $ANDROID_JAR --manifest AndroidManifest.xml
cd $OUT/apk; zip -q ../unsigned.apk classes.dex; cd ../..

[ -f poc.keystore ] || keytool -genkeypair -keystore poc.keystore -alias poc -storepass pocpass -keypass pocpass -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=PoC" >/dev/null 2>&1

$BT/apksigner sign --ks poc.keystore --ks-pass pass:pocpass --out SrmiClient.apk $OUT/unsigned.apk
echo "[4/4] 签名完成 -> SrmiClient.apk"
echo "安装: adb install -r SrmiClient.apk"
