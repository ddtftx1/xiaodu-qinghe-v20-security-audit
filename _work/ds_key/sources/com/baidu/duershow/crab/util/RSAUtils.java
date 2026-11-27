package com.baidu.duershow.crab.util;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class RSAUtils {
    public static final String KEY_ALGORITHM = "RSA";
    private static final int MAX_ENCRYPT_BLOCK = 117;
    public static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDcNo7OFl4AMWXHXHQ/Uyr5Qwmi1EJXbxtkWHQPiT3tBxAgCApZyZXI8Sc0L+g2e3csrK+Mi/uD0W7AFmxdqSunmbiCEP4N8o5+X8NyREPRofM8cfFtIY/kHemCWR65V69FLv++/tPp5DlJQaHERWIvWL5aJXNGhUNzqUQMjRzEPwIDAQAB";

    public static String getPublicKey() {
        return publicKey;
    }

    public static byte[] encryptByPublicKey(byte[] bArr) throws Exception {
        return encryptByPublicKey(bArr, publicKey);
    }

    public static byte[] encryptByPublicKey(byte[] bArr, String str) throws Exception {
        byte[] bArrDoFinal;
        X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(str, 0));
        KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
        BLog.e(keyFactory.getProvider().toString());
        PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(x509EncodedKeySpec);
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKeyGeneratePublic);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = length - i;
            if (i3 > 0) {
                if (i3 > MAX_ENCRYPT_BLOCK) {
                    bArrDoFinal = cipher.doFinal(bArr, i, MAX_ENCRYPT_BLOCK);
                } else {
                    bArrDoFinal = cipher.doFinal(bArr, i, i3);
                }
                byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                i2++;
                i = i2 * MAX_ENCRYPT_BLOCK;
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
        }
    }

    public static String encryptIntoBase64(String str) throws Exception {
        return Base64.encodeToString(encryptByPublicKey(str.getBytes(), publicKey), 2);
    }

    public static boolean verify(byte[] bArr, String str) throws Exception {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(KEY_ALGORITHM).generatePublic(new X509EncodedKeySpec(Base64.decode(publicKey, 0)));
        Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM);
        signature.initVerify(publicKeyGeneratePublic);
        signature.update(bArr);
        return signature.verify(Base64.decode(str, 0));
    }
}
