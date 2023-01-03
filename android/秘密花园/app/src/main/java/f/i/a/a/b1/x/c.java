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

/* compiled from: Ac4Extractor.java */
/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: e  reason: collision with root package name */
    public static final int f4324e = h0.C("ID3");
    public final long a = 0;
    public final d b = new d(null);

    /* renamed from: c  reason: collision with root package name */
    public final u f4325c = new u(16384);

    /* renamed from: d  reason: collision with root package name */
    public boolean f4326d;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        int e2 = dVar.e(this.f4325c.a, 0, 16384);
        if (e2 == -1) {
            return -1;
        }
        this.f4325c.A(0);
        this.f4325c.z(e2);
        if (!this.f4326d) {
            this.b.f4342m = this.a;
            this.f4326d = true;
        }
        this.b.c(this.f4325c);
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
        this.f4326d = false;
        this.b.a();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0038, code lost:
        r15.f4044f = 0;
        r4 = r4 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0040, code lost:
        if ((r4 - r3) < 8192) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0042, code lost:
        return false;
     */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean i(f.i.a.a.b1.d r15) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r14 = this;
            f.i.a.a.m1.u r0 = new f.i.a.a.m1.u
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L_0x0009:
            byte[] r4 = r0.a
            r15.d(r4, r2, r1, r2)
            r0.A(r2)
            int r4 = r0.r()
            int r5 = f.i.a.a.b1.x.c.f4324e
            r6 = 3
            if (r4 == r5) goto L_0x008b
            r15.f4044f = r2
            r15.a(r3, r2)
            r4 = r3
        L_0x0020:
            r1 = 0
        L_0x0021:
            byte[] r5 = r0.a
            r7 = 7
            r15.d(r5, r2, r7, r2)
            r0.A(r2)
            int r5 = r0.u()
            r8 = 44096(0xac40, float:6.1792E-41)
            r9 = 44097(0xac41, float:6.1793E-41)
            if (r5 == r8) goto L_0x0047
            if (r5 == r9) goto L_0x0047
            r15.f4044f = r2
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L_0x0043
            return r2
        L_0x0043:
            r15.a(r4, r2)
            goto L_0x0020
        L_0x0047:
            r8 = 1
            int r1 = r1 + r8
            r10 = 4
            if (r1 < r10) goto L_0x004d
            return r8
        L_0x004d:
            byte[] r8 = r0.a
            int r11 = r8.length
            r12 = -1
            if (r11 >= r7) goto L_0x0055
            r11 = -1
            goto L_0x0082
        L_0x0055:
            r11 = 2
            byte r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 8
            byte r13 = r8[r6]
            r13 = r13 & 255(0xff, float:3.57E-43)
            r11 = r11 | r13
            r13 = 65535(0xffff, float:9.1834E-41)
            if (r11 != r13) goto L_0x007c
            byte r10 = r8[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            int r10 = r10 << 16
            r11 = 5
            byte r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 8
            r10 = r10 | r11
            r11 = 6
            byte r8 = r8[r11]
            r8 = r8 & 255(0xff, float:3.57E-43)
            r11 = r10 | r8
            goto L_0x007d
        L_0x007c:
            r7 = 4
        L_0x007d:
            if (r5 != r9) goto L_0x0081
            int r7 = r7 + 2
        L_0x0081:
            int r11 = r11 + r7
        L_0x0082:
            if (r11 != r12) goto L_0x0085
            return r2
        L_0x0085:
            int r11 = r11 + -7
            r15.a(r11, r2)
            goto L_0x0021
        L_0x008b:
            r0.B(r6)
            int r4 = r0.o()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r15.a(r4, r2)
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.c.i(f.i.a.a.b1.d):boolean");
    }
}
