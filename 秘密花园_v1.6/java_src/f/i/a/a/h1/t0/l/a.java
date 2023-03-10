package f.i.a.a.h1.t0.l;

import android.net.Uri;
import f.i.a.a.e1.b0;
import f.i.a.a.e1.c0;
import f.i.a.a.e1.w;
import f.i.a.a.h1.t0.k.b;
import f.i.a.a.h1.t0.k.c;
import f.i.a.a.h1.t0.k.h;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DashDownloader.java */
/* loaded from: classes.dex */
public final class a extends b0<b> {
    public a(Uri uri, List<c0> list, w wVar) {
        super(uri, list, wVar);
    }

    public static void f(long j2, String str, h hVar, ArrayList<b0.b> arrayList) {
        arrayList.add(new b0.b(j2, new p(c.a.a.b.g.h.g1(str, hVar.f5065c), hVar.a, hVar.b, null)));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static f.i.a.a.h1.t0.f g(f.i.a.a.l1.m r12, int r13, f.i.a.a.h1.t0.k.i r14) throws java.io.IOException, java.lang.InterruptedException {
        /*
            f.i.a.a.h1.t0.f r0 = r14.i()
            if (r0 == 0) goto L7
            return r0
        L7:
            f.i.a.a.h1.t0.k.h r0 = r14.f5069e
            r1 = 0
            if (r0 != 0) goto Ld
            goto L49
        Ld:
            f.i.a.a.b0 r2 = r14.a
            java.lang.String r3 = r2.f4096h
            r4 = 0
            if (r3 == 0) goto L26
            java.lang.String r5 = "video/webm"
            boolean r5 = r3.startsWith(r5)
            if (r5 != 0) goto L24
            java.lang.String r5 = "audio/webm"
            boolean r3 = r3.startsWith(r5)
            if (r3 == 0) goto L26
        L24:
            r3 = 1
            goto L27
        L26:
            r3 = 0
        L27:
            if (r3 == 0) goto L2f
            f.i.a.a.b1.s.d r3 = new f.i.a.a.b1.s.d
            r3.<init>(r4)
            goto L3e
        L2f:
            f.i.a.a.b1.u.d r3 = new f.i.a.a.b1.u.d
            java.util.List r10 = java.util.Collections.emptyList()
            r11 = 0
            r8 = 0
            r9 = 0
            r7 = 0
            r6 = 0
            r5 = r3
            r5.<init>(r6, r7, r8, r9, r10, r11)
        L3e:
            f.i.a.a.h1.s0.e r4 = new f.i.a.a.h1.s0.e
            r4.<init>(r3, r13, r2)
            f.i.a.a.h1.t0.k.h r13 = r14.j()
            if (r13 != 0) goto L4b
        L49:
            r4 = r1
            goto L5b
        L4b:
            java.lang.String r2 = r14.b
            f.i.a.a.h1.t0.k.h r2 = r0.a(r13, r2)
            if (r2 != 0) goto L57
            c.a.a.b.g.h.H0(r12, r14, r4, r0)
            goto L58
        L57:
            r13 = r2
        L58:
            c.a.a.b.g.h.H0(r12, r14, r4, r13)
        L5b:
            if (r4 != 0) goto L5f
            r12 = r1
            goto L63
        L5f:
            f.i.a.a.b1.n r12 = r4.f4962h
            f.i.a.a.b1.b r12 = (f.i.a.a.b1.b) r12
        L63:
            if (r12 != 0) goto L66
            goto L6d
        L66:
            f.i.a.a.h1.t0.g r1 = new f.i.a.a.h1.t0.g
            long r13 = r14.f5067c
            r1.<init>(r12, r13)
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.t0.l.a.g(f.i.a.a.l1.m, int, f.i.a.a.h1.t0.k.i):f.i.a.a.h1.t0.f");
    }

    @Override // f.i.a.a.e1.b0
    public b c(m mVar, p pVar) throws IOException {
        return (b) e0.c(mVar, new c(), pVar, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00aa A[SYNTHETIC] */
    @Override // f.i.a.a.e1.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List d(f.i.a.a.l1.m r26, f.i.a.a.h1.t0.k.b r27, boolean r28) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r25 = this;
            r1 = r27
            f.i.a.a.h1.t0.k.b r1 = (f.i.a.a.h1.t0.k.b) r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r4 = 0
        La:
            int r0 = r1.c()
            if (r4 >= r0) goto Lc5
            f.i.a.a.h1.t0.k.f r0 = r1.b(r4)
            long r5 = r0.b
            long r5 = f.i.a.a.q.a(r5)
            long r7 = r1.e(r4)
            java.util.List<f.i.a.a.h1.t0.k.a> r9 = r0.f5060c
            r10 = 0
        L21:
            int r0 = r9.size()
            if (r10 >= r0) goto Lbd
            java.lang.Object r0 = r9.get(r10)
            r11 = r0
            f.i.a.a.h1.t0.k.a r11 = (f.i.a.a.h1.t0.k.a) r11
            r12 = 0
        L2f:
            java.util.List<f.i.a.a.h1.t0.k.i> r0 = r11.f5037c
            int r0 = r0.size()
            if (r12 >= r0) goto Lb3
            java.util.List<f.i.a.a.h1.t0.k.i> r0 = r11.f5037c
            java.lang.Object r0 = r0.get(r12)
            f.i.a.a.h1.t0.k.i r0 = (f.i.a.a.h1.t0.k.i) r0
            int r13 = r11.b     // Catch: java.io.IOException -> La4
            r14 = r26
            f.i.a.a.h1.t0.f r13 = g(r14, r13, r0)     // Catch: java.io.IOException -> L9e
            if (r13 == 0) goto L90
            int r15 = r13.g(r7)
            r3 = -1
            if (r15 == r3) goto L88
            java.lang.String r3 = r0.b
            r16 = r1
            f.i.a.a.h1.t0.k.h r1 = r0.f5069e
            if (r1 == 0) goto L5b
            f(r5, r3, r1, r2)
        L5b:
            f.i.a.a.h1.t0.k.h r0 = r0.j()
            if (r0 == 0) goto L64
            f(r5, r3, r0, r2)
        L64:
            long r0 = r13.f()
            r17 = r7
            long r7 = (long) r15
            long r7 = r7 + r0
            r19 = 1
            long r7 = r7 - r19
        L70:
            int r15 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r15 > 0) goto Laa
            long r21 = r13.b(r0)
            r23 = r7
            long r7 = r21 + r5
            f.i.a.a.h1.t0.k.h r15 = r13.d(r0)
            f(r7, r3, r15, r2)
            long r0 = r0 + r19
            r7 = r23
            goto L70
        L88:
            f.i.a.a.e1.p r0 = new f.i.a.a.e1.p
            java.lang.String r1 = "Unbounded segment index"
            r0.<init>(r1)
            throw r0
        L90:
            r16 = r1
            r17 = r7
            f.i.a.a.e1.p r0 = new f.i.a.a.e1.p     // Catch: java.io.IOException -> L9c
            java.lang.String r1 = "Missing segment index"
            r0.<init>(r1)     // Catch: java.io.IOException -> L9c
            throw r0     // Catch: java.io.IOException -> L9c
        L9c:
            r0 = move-exception
            goto La8
        L9e:
            r0 = move-exception
        L9f:
            r16 = r1
            r17 = r7
            goto La8
        La4:
            r0 = move-exception
            r14 = r26
            goto L9f
        La8:
            if (r28 == 0) goto Lb2
        Laa:
            int r12 = r12 + 1
            r1 = r16
            r7 = r17
            goto L2f
        Lb2:
            throw r0
        Lb3:
            r14 = r26
            r16 = r1
            r17 = r7
            int r10 = r10 + 1
            goto L21
        Lbd:
            r14 = r26
            r16 = r1
            int r4 = r4 + 1
            goto La
        Lc5:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.t0.l.a.d(f.i.a.a.l1.m, f.i.a.a.e1.y, boolean):java.util.List");
    }
}
