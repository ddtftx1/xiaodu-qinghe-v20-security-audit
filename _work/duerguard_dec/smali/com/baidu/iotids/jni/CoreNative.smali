.class public Lcom/baidu/iotids/jni/CoreNative;
.super Lcom/baidu/iotids/new;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/iotids/new;-><init>()V

    return-void
.end method

.method public static native nativeGetCpuInfo()Ljava/lang/String;
.end method

.method public static native nativeGetCpuUsage()D
.end method

.method public static native nativeGetInvalidMount()Ljava/lang/String;
.end method

.method public static native nativeGetMacAddress()Ljava/lang/String;
.end method

.method public static native nativeGetMemUsage()D
.end method

.method public static native nativeGetProcList()[Ljava/lang/String;
.end method

.method public static native nativeGetProcStatus()Lcom/baidu/iotids/jni/StructProcStatus;
.end method

.method public static native nativeGetProcVersion()Ljava/lang/String;
.end method

.method public static native nativeGetProcs()[Ljava/lang/String;
.end method

.method public static native nativeGetSeLinuxStatus()I
.end method

.method public static native nativeGetStatVfs(Ljava/lang/String;)Lcom/baidu/iotids/jni/StructStatVfs;
.end method

.method public static native nativeGetTotalMem()D
.end method

.method public static native nativeGetTracerInfo()Lcom/baidu/iotids/jni/TracerInfo;
.end method

.method public static native nativeGetUname()Lcom/baidu/iotids/jni/StructUtsName;
.end method

.method public static native nativeIsAndroidServerExists()Z
.end method

.method public static native nativeIsDouble(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeIsDoubleSocket(Ljava/lang/String;)Z
.end method

.method public static native nativeIsEdXposedExists()Z
.end method

.method public static native nativeIsEdXposedInjected()Z
.end method

.method public static native nativeIsEmulator()Z
.end method

.method public static native nativeIsEmulatorCache()Z
.end method

.method public static native nativeIsEmulatorFS()Z
.end method

.method public static native nativeIsEmulatorProperty()Z
.end method

.method public static native nativeIsFridaExists()Z
.end method

.method public static native nativeIsFridaInjected()Z
.end method

.method public static native nativeIsMagiskExists()Z
.end method

.method public static native nativeIsPropertyDebuggable()Z
.end method

.method public static native nativeIsPropertyOsSecure()Z
.end method

.method public static native nativeIsPropertyRootAdb()Z
.end method

.method public static native nativeIsPropertySysInitd()Z
.end method

.method public static native nativeIsSuExists()Z
.end method

.method public static native nativeIsSubstrateExists()Z
.end method

.method public static native nativeIsSubstrateInjected()Z
.end method

.method public static native nativeIsSuperUserExists()Z
.end method

.method public static native nativeIsTrustedCA([B)Z
.end method

.method public static native nativeIsUnlocked()Z
.end method

.method public static native nativeIsVirtualAccess(Ljava/lang/String;)Z
.end method

.method public static native nativeIsVirtualPath(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public static native nativeIsVirtualXposedExists()Z
.end method

.method public static native nativeIsVirtualXposedInjected()Z
.end method

.method public static native nativeIsXposedExists()Z
.end method
