package f.e.a.j.m.p;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* compiled from: AESImageUtils.java */
/* loaded from: classes.dex */
public class a {
    public static String a = f.e.a.e.a("QDIoXCgLblI8EWQSLhAEGA==");
    public static String b = f.e.a.e.a("dicwSy4wexwjLXc0TzoCD1MLDQM=");

    public static InputStream a(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] a2 = f.e.a.k.c.a(byteArray, a.getBytes(), b, null);
            if (a2 != null) {
                return new ByteArrayInputStream(a2);
            }
            return new ByteArrayInputStream(byteArray);
        } catch (Exception e2) {
            e2.printStackTrace();
            return inputStream;
        }
    }
}
