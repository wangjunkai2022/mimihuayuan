package com.comeback.data.ui.tomato.bean;

import c.a.a.b.g.h;
import com.umeng.commonsdk.internal.utils.g;
import f.e.a.e;
import f.e.a.f.k;
import f.h.a.a.a;
import java.security.KeyFactory;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* loaded from: classes.dex */
public class TomatoLiveBase<T> extends k {
    public int code;
    public TomatoLiveBase<T>.DataEntity data;
    public String msg;

    /* loaded from: classes.dex */
    public class DataEntity {
        public static final String ENCRYPT_FILE_KEY = e.a("eisqJw8UcHEyInUpOg0IGl8JCiNSBAlxMjdxITkrMCh2DyITDBRzUDIBcSY5BSQpdihXJj4eV3IlC0ZMSCAmXE0uUl1eAghiOgEFKTk9TBFbDFZQJhl8fkUXQlNNJRM/dU0JFFkJa1cEX11TEyQzABgrCRYkI2BjG1JQEUxBOgxuNTIPPQAJRQkwWh0NGQZSRQAFCy44fXURHFFeCBMMWHIELwoZIGxbFlVQLQhTITxADBJVW0YWSTU2XwAaElQ6QVc3Vl4wdFE/MlIjSAklI0EtIipEO3x9XAoELzkNLil2IyYnDCp7XTUVUVYcCwAYUAQSIQ9AWAUFU2EUASQCDk8yEyMtRHoKRDV1BigbDBMAW1seO0IBBjw1eRU6LVYkYzM2USAFdWUhCkA2DF4QDlBXLlYTCXZZCgUHMyFeTDNwOCo1HyF4AEY1WxEARRBAeRQwHV0lfRg/U2ciMl4RUxgxOzZTHmF4OQBMLC4NWwF5LQAzAiFrByUTZQoxBRkRZyclFTE7AEI6MH4ELgA0HwczKSYqPHd7Hy9mKUwlNS1NESBXAxtaAgoQBhEhMBkRXToAMBxLV0NKEVgfSTsJHkdRER49G1tAMgIFLCAbEy10Njk9BwJqVQETUCMrHTIocjoCIhIGCgEGE18kKTsgExwuGi4kHHdRHStWNysBOSRYMwg1DSNTVDsXTVcBKwsaXiwoMFwQUHolH2YiPgcTCXVTMl0bB2hkNwt5ED0oAVlcETcmJTBLVCYpbEgxL1YgRDspEioYfHJAMU5RIV9IDHIoVAIjNHtEJg9/ISAEGy5tJVADL1xechgUfDcSJi4nehU0PBxEe2pBDX0GLx8CQEUAKSsHNW1UGxFcNxQ8UV56FCVUX1xDUSEoYjUzOykqclcvEl0qX0dYFgVQFy8nAXQQLwYPNUN4KhZCXj0ZNiVtSQxUDQZ6VD08AgFBBFMMRzopA10qWwAFLGIuH1kJKV0BUyMbB1IKXAAHCQIPSDNFL1oUJiJzciJUcRUXLA47YjYWElNFflsEAl4JEFoZX3MMKQ8ZRQlSRQVXCDYDEiVtEg4wKj19BRwBDV4cABkhRiU0IiM0fXQgSX4rHggKPVMDBR4BRWhpRjJlJQI7XlY=");
        public String data;
        public String key;

        public DataEntity() {
        }

        public String getData() {
            return this.data;
        }

        public String getJsonData() throws Exception {
            String[] split;
            RSAPrivateKey rSAPrivateKey;
            byte[] F;
            String str = this.key;
            String str2 = ENCRYPT_FILE_KEY;
            StringBuilder sb = new StringBuilder();
            for (String str3 : str2.split(g.a)) {
                if (str3.charAt(0) != '-') {
                    sb.append(str3);
                    sb.append('\n');
                }
            }
            byte[] F2 = h.F(sb.toString().getBytes());
            try {
                if (F2.length == 0) {
                    a.c("base64 is empty");
                } else {
                    try {
                        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                        try {
                            rSAPrivateKey = (RSAPrivateKey) keyFactory.generatePrivate(new PKCS8EncodedKeySpec(F2));
                        } catch (InvalidKeySpecException e2) {
                            a.c(e2);
                            rSAPrivateKey = (RSAPrivateKey) keyFactory.generatePrivate(new X509EncodedKeySpec(F2));
                        }
                    } catch (Exception e3) {
                        a.c(e3);
                    }
                    F = h.F(str.trim().getBytes());
                    if (F == null && F.length != 0) {
                        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                        cipher.init(2, rSAPrivateKey);
                        return TomatoLiveBase.des(new String(cipher.doFinal(F), e.a("QhYFSVM=")), this.data);
                    }
                    throw new IllegalArgumentException("encrypted SecretKey is empty");
                }
                F = h.F(str.trim().getBytes());
                if (F == null) {
                }
                throw new IllegalArgumentException("encrypted SecretKey is empty");
            }
            rSAPrivateKey = null;
        }

        public String getKey() {
            return this.key;
        }

        public void setData(String str) {
            this.data = str;
        }

        public void setKey(String str) {
            this.key = str;
        }
    }

    public static String des(String str, String str2) throws Exception, BadPaddingException, IllegalBlockSizeException {
        SecretKey generateSecret = SecretKeyFactory.getInstance(e.a("UwcQAQ8W")).generateSecret(new DESedeKeySpec(str.getBytes()));
        Cipher cipher = Cipher.getInstance(e.a("UwcQAQ8WFnAxJRs3MykwXmcDBwACHV4="));
        cipher.init(2, generateSecret, new IvParameterSpec(e.a("B1NRV19GDwQ=").getBytes()));
        return new String(cipher.doFinal(h.F(str2.getBytes())), e.a("QhYFSVM="));
    }

    public int getCode() {
        return this.code;
    }

    public TomatoLiveBase<T>.DataEntity getData() {
        return this.data;
    }

    public String getJsonData() {
        try {
            return this.data.getJsonData();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public String getMsg() {
        return this.msg;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(TomatoLiveBase<T>.DataEntity dataEntity) {
        this.data = dataEntity;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
