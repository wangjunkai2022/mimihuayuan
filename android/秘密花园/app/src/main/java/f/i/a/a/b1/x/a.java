package f.i.a.a.b1.x;

import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.m;
import f.i.a.a.b1.n;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: Ac3Extractor.java */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: e  reason: collision with root package name */
    public static final int f4291e = h0.C("ID3");
    public final long a = 0;
    public final b b = new b(null);

    /* renamed from: c  reason: collision with root package name */
    public final u f4292c = new u(2786);

    /* renamed from: d  reason: collision with root package name */
    public boolean f4293d;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        int e2 = dVar.e(this.f4292c.a, 0, 2786);
        if (e2 == -1) {
            return -1;
        }
        this.f4292c.A(0);
        this.f4292c.z(e2);
        if (!this.f4293d) {
            this.b.f4309l = this.a;
            this.f4293d = true;
        }
        this.b.c(this.f4292c);
        return 0;
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.b.f(hVar, new c0.d(Integer.MIN_VALUE, 0, 1));
        hVar.d();
        hVar.a(new n.b(-9223372036854775807L, 0));
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4293d = false;
        this.b.a();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x003a, code lost:
        if ((r4 - r3) < 8192) goto L_0x003d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x003c, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0032, code lost:
        r14.f4044f = 0;
        r4 = r4 + 1;
     */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean i(f.i.a.a.b1.d r14) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r13 = this;
            f.i.a.a.m1.u r0 = new f.i.a.a.m1.u
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L_0x0009:
            byte[] r4 = r0.a
            r14.d(r4, r2, r1, r2)
            r0.A(r2)
            int r4 = r0.r()
            int r5 = f.i.a.a.b1.x.a.f4291e
            r6 = 3
            if (r4 == r5) goto L_0x0084
            r14.f4044f = r2
            r14.a(r3, r2)
            r4 = r3
        L_0x0020:
            r1 = 0
        L_0x0021:
            byte[] r5 = r0.a
            r7 = 6
            r14.d(r5, r2, r7, r2)
            r0.A(r2)
            int r5 = r0.u()
            r8 = 2935(0xb77, float:4.113E-42)
            if (r5 == r8) goto L_0x0041
            r14.f4044f = r2
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L_0x003d
            return r2
        L_0x003d:
            r14.a(r4, r2)
            goto L_0x0020
        L_0x0041:
            r5 = 1
            int r1 = r1 + r5
            r8 = 4
            if (r1 < r8) goto L_0x0047
            return r5
        L_0x0047:
            byte[] r9 = r0.a
            int r10 = r9.length
            r11 = -1
            if (r10 >= r7) goto L_0x004f
            r8 = -1
            goto L_0x007b
        L_0x004f:
            r10 = 5
            byte r10 = r9[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            int r10 = r10 >> r6
            r12 = 16
            if (r10 != r12) goto L_0x005b
            r10 = 1
            goto L_0x005c
        L_0x005b:
            r10 = 0
        L_0x005c:
            if (r10 == 0) goto L_0x006e
            r7 = 2
            byte r8 = r9[r7]
            r8 = r8 & 7
            int r8 = r8 << 8
            byte r9 = r9[r6]
            r9 = r9 & 255(0xff, float:3.57E-43)
            r8 = r8 | r9
            int r8 = r8 + r5
            int r8 = r8 * 2
            goto L_0x007b
        L_0x006e:
            byte r5 = r9[r8]
            r5 = r5 & 192(0xc0, float:2.69E-43)
            int r5 = r5 >> r7
            byte r7 = r9[r8]
            r7 = r7 & 63
            int r8 = f.i.a.a.w0.g.a(r5, r7)
        L_0x007b:
            if (r8 != r11) goto L_0x007e
            return r2
        L_0x007e:
            int r8 = r8 + -6
            r14.a(r8, r2)
            goto L_0x0021
        L_0x0084:
            r0.B(r6)
            int r4 = r0.o()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r14.a(r4, r2)
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.a.i(f.i.a.a.b1.d):boolean");
    }
}
