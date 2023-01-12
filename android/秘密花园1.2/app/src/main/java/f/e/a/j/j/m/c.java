package f.e.a.j.j.m;

import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import i.y;

/* compiled from: MyInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    public static String a;

    static {
        SignHelper.getLFKey(App.b);
        SignHelper.getLFIv(App.b);
        a = SignHelper.getLfECB(App.b);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d7  */
    @Override // i.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public i.h0 a(i.y.a r20) throws java.io.IOException {
        /*
            r19 = this;
            i.e0 r0 = r20.S()
            r1 = r20
            i.h0 r1 = r1.d(r0)
            i.i0 r0 = r1.f6527h
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
            if (r0 == 0) goto L66
            int r6 = r0.length
            if (r6 == 0) goto L66
            if (r2 == 0) goto L66
            int r6 = r2.length
            if (r6 != 0) goto L36
            goto L66
        L36:
            java.lang.String r6 = "cycw"
            java.lang.String r6 = f.e.a.e.a(r6)     // Catch: java.lang.Throwable -> L62
            boolean r6 = r6.equals(r5)     // Catch: java.lang.Throwable -> L62
            if (r6 == 0) goto L50
            javax.crypto.spec.DESKeySpec r6 = new javax.crypto.spec.DESKeySpec     // Catch: java.lang.Throwable -> L62
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L62
            javax.crypto.SecretKeyFactory r2 = javax.crypto.SecretKeyFactory.getInstance(r5)     // Catch: java.lang.Throwable -> L62
            javax.crypto.SecretKey r2 = r2.generateSecret(r6)     // Catch: java.lang.Throwable -> L62
            goto L56
        L50:
            javax.crypto.spec.SecretKeySpec r6 = new javax.crypto.spec.SecretKeySpec     // Catch: java.lang.Throwable -> L62
            r6.<init>(r2, r5)     // Catch: java.lang.Throwable -> L62
            r2 = r6
        L56:
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)     // Catch: java.lang.Throwable -> L62
            r3.init(r4, r2)     // Catch: java.lang.Throwable -> L62
            byte[] r0 = r3.doFinal(r0)     // Catch: java.lang.Throwable -> L62
            goto L67
        L62:
            r0 = move-exception
            r0.printStackTrace()
        L66:
            r0 = 0
        L67:
            if (r0 == 0) goto L6f
            java.lang.String r2 = new java.lang.String
            r2.<init>(r0)
            goto L71
        L6f:
            java.lang.String r2 = ""
        L71:
            i.i0 r0 = r1.f6527h
            i.z r0 = r0.E()
            i.i0 r10 = i.i0.F(r2, r0)
            i.e0 r4 = r1.b
            i.c0 r5 = r1.f6522c
            int r7 = r1.f6524e
            java.lang.String r6 = r1.f6523d
            i.v r8 = r1.f6525f
            i.w r0 = r1.f6526g
            i.w$a r0 = r0.d()
            i.h0 r11 = r1.f6528i
            i.h0 r12 = r1.f6529j
            i.h0 r13 = r1.f6530k
            long r14 = r1.f6531l
            long r2 = r1.f6532m
            i.m0.d.c r1 = r1.n
            if (r7 < 0) goto L9b
            r9 = 1
            goto L9c
        L9b:
            r9 = 0
        L9c:
            if (r9 == 0) goto Ld7
            if (r4 == 0) goto Lcb
            if (r5 == 0) goto Lbf
            if (r6 == 0) goto Lb3
            i.w r9 = r0.d()
            i.h0 r0 = new i.h0
            r16 = r2
            r3 = r0
            r18 = r1
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r16, r18)
            return r0
        Lb3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "message == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Lbf:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "protocol == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Lcb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "request == null"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Ld7:
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
