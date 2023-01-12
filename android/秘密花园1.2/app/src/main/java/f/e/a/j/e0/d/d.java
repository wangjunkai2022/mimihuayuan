package f.e.a.j.e0.d;

import android.util.Base64;
import c.a.a.b.g.h;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: MdUtils.java */
/* loaded from: classes.dex */
public class d {
    public static String a = f.e.a.e.a("YRNRV18Je1YgAnMAITIZPWMnBQoFGVNXHgdgDBNdIl8=");
    public static String b = f.e.a.e.a("GhJaJjANaV0jFQ==");

    /* renamed from: c  reason: collision with root package name */
    public static String f3919c = f.e.a.e.a("dicwSygxehwjLXc0TzoCD1MLDQM=");

    public static Map<String, String> a(TreeMap<String, String> treeMap) {
        treeMap.put(f.e.a.e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb.append(f.e.a.e.a("EQ=="));
            sb.append(entry.getKey());
            sb.append(f.e.a.e.a("Cg=="));
            sb.append((Object) entry.getValue());
        }
        String a2 = f.e.a.e.a("UgwACw8WZkAaAVo=");
        treeMap.put(a2, h.R0(sb.toString().substring(1) + f.e.a.e.a("EQ8eFU4WWAVJKnAEFTlcCnxLIAEtQQEEETZCA0FTIy4bWzYUNQ==")));
        return treeMap;
    }

    public static InputStream b(InputStream inputStream) {
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
            byte[] e2 = f.e.a.k.c.e(Base64.decode(byteArray, 2), f.e.a.e.a("RwwLPAw9CWY=").getBytes(), f.e.a.e.a("cycw"), f.e.a.e.a("cycwSygxehwjLXc0TzoCD1MLDQM="), f.e.a.e.a("cDtXAy4Fe3c=").getBytes(), false);
            if (e2 != null) {
                return new ByteArrayInputStream(Base64.decode(new String(e2).substring(22), 0));
            }
            return new ByteArrayInputStream(byteArray);
        } catch (Exception e3) {
            e3.printStackTrace();
            return inputStream;
        }
    }
}
