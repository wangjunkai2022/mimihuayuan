package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.umeng.commonsdk.proguard.ap;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* compiled from: ObjectSerializer.java */
/* loaded from: classes.dex */
public class y {
    public static String a(Serializable serializable) {
        if (serializable == null) {
            return "";
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            return a(byteArrayOutputStream.toByteArray());
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            int i3 = i2 / 2;
            bArr[i3] = (byte) ((str.charAt(i2) - 'a') << 4);
            bArr[i3] = (byte) ((str.charAt(i2 + 1) - 'a') + bArr[i3]);
        }
        return bArr;
    }

    public static Object a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new ObjectInputStream(new ByteArrayInputStream(b(str))).readObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            stringBuffer.append((char) (((bArr[i2] >> 4) & 15) + 97));
            stringBuffer.append((char) ((bArr[i2] & ap.f3116m) + 97));
        }
        return stringBuffer.toString();
    }
}
