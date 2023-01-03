package f.e.a.j.j.m;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import i.y;

/* compiled from: MyInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    public static String a = SignHelper.getLfECB(App.b);

    static {
        SignHelper.getLFKey(App.b);
        SignHelper.getLFIv(App.b);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d7  */
    @Override // i.y
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public i.h0 a(i.y.a r20) throws java.io.IOException {
        /*
            r19 = this;
            i.e0 r0 = r20.S()
            r1 = r20
            i.h0 r1 = r1.d(r0)
            i.i0 r0 = r1.f6452h
            java.lang.String r0 = r0.H()
            byte[] r0 = r0.getBytes()
            java.lang.String r2 = f.e.a.j.j.m.c.a
            byte[] r2 = r2.getBytes()
            java.lang.String r3 = "dicwSy4wexwjLXc0TToCD1MLDQM="
            java.lang.String r3 = f.e.a.e.a(r3)
            r4 = 2
            byte[] r0 = android.util.Base64.decode(r0, r4)
            java.lang.String r5 = "dicw"
            java.lang.String r5 = f.e.a.e.a(r5)
            if (r0 == 0) goto L_0x0066
            int r6 = r0.length
            if (r6 == 0) goto L_0x0066
            if (r2 == 0) goto L_0x0066
            int r6 = r2.length
            if (r6 != 0) goto L_0x0036
            goto L_0x0066
        L_0x0036:
            java.lang.String r6 = "cycw"
            java.lang.String r6 = f.e.a.e.a(r6)     // Catch: all -> 0x0062
            boolean r6 = r6.equals(r5)     // Catch: all -> 0x0062
            if (r6 == 0) goto L_0x0050
            javax.crypto.spec.DESKeySpec r6 = new javax.crypto.spec.DESKeySpec     // Catch: all -> 0x0062
            r6.<init>(r2)     // Catch: all -> 0x0062
            javax.crypto.SecretKeyFactory r2 = javax.crypto.SecretKeyFactory.getInstance(r5)     // Catch: all -> 0x0062
            javax.crypto.SecretKey r2 = r2.generateSecret(r6)     // Catch: all -> 0x0062
            goto L_0x0056
        L_0x0050:
            javax.crypto.spec.SecretKeySpec r6 = new javax.crypto.spec.SecretKeySpec     // Catch: all -> 0x0062
            r6.<init>(r2, r5)     // Catch: all -> 0x0062
            r2 = r6
        L_0x0056:
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)     // Catch: all -> 0x0062
            r3.init(r4, r2)     // Catch: all -> 0x0062
            byte[] r0 = r3.doFinal(r0)     // Catch: all -> 0x0062
            goto L_0x0067
        L_0x0062:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0066:
            r0 = 0
        L_0x0067:
            if (r0 == 0) goto L_0x006f
            java.lang.String r2 = new java.lang.String
            r2.<init>(r0)
            goto L_0x0071
        L_0x006f:
            java.lang.String r2 = ""
        L_0x0071:
            i.i0 r0 = r1.f6452h
            i.z r0 = r0.E()
            i.i0 r10 = i.i0.F(r2, r0)
            i.e0 r4 = r1.b
            i.c0 r5 = r1.f6447c
            int r7 = r1.f6449e
            java.lang.String r6 = r1.f6448d
            i.v r8 = r1.f6450f
            i.w r0 = r1.f6451g
            i.w$a r0 = r0.d()
            i.h0 r11 = r1.f6453i
            i.h0 r12 = r1.f6454j
            i.h0 r13 = r1.f6455k
            long r14 = r1.f6456l
            long r2 = r1.f6457m
            i.m0.d.c r1 = r1.n
            if (r7 < 0) goto L_0x009b
            r9 = 1
            goto L_0x009c
        L_0x009b:
            r9 = 0
        L_0x009c:
            if (r9 == 0) goto L_0x00d7
            if (r4 == 0) goto L_0x00cb
            if (r5 == 0) goto L_0x00bf
            if (r6 == 0) goto L_0x00b3
            i.w r9 = r0.d()
            i.h0 r0 = new i.h0
            r16 = r2
            r3 = r0
            r18 = r1
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r16, r18)
            return r0
        L_0x00b3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "message == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00bf:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "protocol == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00cb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "request == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00d7:
            java.lang.String r0 = "code < 0: "
            java.lang.String r0 = f.b.a.a.a.J(r0, r7)
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.j.m.c.a(i.y$a):i.h0");
    }
}
