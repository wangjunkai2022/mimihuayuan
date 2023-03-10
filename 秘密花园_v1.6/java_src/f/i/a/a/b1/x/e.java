package f.i.a.a.b1.x;

import androidx.annotation.Nullable;
import f.i.a.a.b1.n;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.h0;
import java.io.IOException;
/* compiled from: AdtsExtractor.java */
/* loaded from: classes.dex */
public final class e implements f.i.a.a.b1.g {
    public static final int n = h0.C("ID3");
    public final int a;
    public final f b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.u f4427c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.m1.u f4428d;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.m1.t f4429e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4430f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public f.i.a.a.b1.h f4431g;

    /* renamed from: h  reason: collision with root package name */
    public long f4432h;

    /* renamed from: i  reason: collision with root package name */
    public long f4433i;

    /* renamed from: j  reason: collision with root package name */
    public int f4434j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4435k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4436l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4437m;

    public e() {
        this(0L, 0);
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final int b(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        int i2 = 0;
        while (true) {
            dVar.d(this.f4428d.a, 0, 10, false);
            this.f4428d.A(0);
            if (this.f4428d.r() != n) {
                break;
            }
            this.f4428d.B(3);
            int o = this.f4428d.o();
            i2 += o + 10;
            dVar.a(o, false);
        }
        dVar.f4128f = 0;
        dVar.a(i2, false);
        if (this.f4433i == -1) {
            this.f4433i = i2;
        }
        return i2;
    }

    @Override // f.i.a.a.b1.g
    public int c(f.i.a.a.b1.d dVar, f.i.a.a.b1.m mVar) throws IOException, InterruptedException {
        int i2;
        long j2 = dVar.f4125c;
        boolean z = ((this.a & 1) == 0 || j2 == -1) ? false : true;
        if (z && !this.f4435k) {
            this.f4434j = -1;
            dVar.f4128f = 0;
            if (dVar.f4126d == 0) {
                b(dVar);
            }
            long j3 = 0;
            int i3 = 0;
            while (true) {
                if (!dVar.d(this.f4428d.a, 0, 2, true)) {
                    break;
                }
                this.f4428d.A(0);
                if (!f.g(this.f4428d.u())) {
                    i3 = 0;
                    break;
                } else if (!dVar.d(this.f4428d.a, 0, 4, true)) {
                    break;
                } else {
                    this.f4429e.j(14);
                    int f2 = this.f4429e.f(13);
                    if (f2 <= 6) {
                        this.f4435k = true;
                        throw new f.i.a.a.h0("Malformed ADTS stream");
                    }
                    j3 += f2;
                    i3++;
                    if (i3 == 1000) {
                        break;
                    } else if (!dVar.a(f2 - 6, true)) {
                        break;
                    }
                }
            }
            dVar.f4128f = 0;
            if (i3 > 0) {
                this.f4434j = (int) (j3 / i3);
            } else {
                this.f4434j = -1;
            }
            this.f4435k = true;
        }
        int e2 = dVar.e(this.f4427c.a, 0, 2048);
        boolean z2 = e2 == -1;
        if (!this.f4437m) {
            boolean z3 = z && this.f4434j > 0;
            if (!z3 || this.b.q != -9223372036854775807L || z2) {
                f.i.a.a.b1.h hVar = this.f4431g;
                c.a.a.b.g.h.t(hVar);
                if (z3) {
                    long j4 = this.b.q;
                    if (j4 != -9223372036854775807L) {
                        hVar.a(new f.i.a.a.b1.c(j2, this.f4433i, (int) (((i2 * 8) * 1000000) / j4), this.f4434j));
                        this.f4437m = true;
                    }
                }
                hVar.a(new n.b(-9223372036854775807L, 0L));
                this.f4437m = true;
            }
        }
        if (z2) {
            return -1;
        }
        this.f4427c.A(0);
        this.f4427c.z(e2);
        if (!this.f4436l) {
            this.b.s = this.f4432h;
            this.f4436l = true;
        }
        this.b.c(this.f4427c);
        return 0;
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.f4431g = hVar;
        this.b.f(hVar, new c0.d(Integer.MIN_VALUE, 0, 1));
        hVar.d();
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4436l = false;
        this.b.a();
        this.f4432h = this.f4430f + j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        r9.f4128f = 0;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if ((r3 - r0) < 8192) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002b, code lost:
        return false;
     */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(f.i.a.a.b1.d r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r8 = this;
            int r0 = r8.b(r9)
            r1 = 0
            r3 = r0
        L6:
            r2 = 0
            r4 = 0
        L8:
            f.i.a.a.m1.u r5 = r8.f4428d
            byte[] r5 = r5.a
            r6 = 2
            r9.d(r5, r1, r6, r1)
            f.i.a.a.m1.u r5 = r8.f4428d
            r5.A(r1)
            f.i.a.a.m1.u r5 = r8.f4428d
            int r5 = r5.u()
            boolean r5 = f.i.a.a.b1.x.f.g(r5)
            if (r5 != 0) goto L30
            r9.f4128f = r1
            int r3 = r3 + 1
            int r2 = r3 - r0
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r2 < r4) goto L2c
            return r1
        L2c:
            r9.a(r3, r1)
            goto L6
        L30:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L3a
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L3a
            return r5
        L3a:
            f.i.a.a.m1.u r5 = r8.f4428d
            byte[] r5 = r5.a
            r9.d(r5, r1, r6, r1)
            f.i.a.a.m1.t r5 = r8.f4429e
            r6 = 14
            r5.j(r6)
            f.i.a.a.m1.t r5 = r8.f4429e
            r6 = 13
            int r5 = r5.f(r6)
            r6 = 6
            if (r5 > r6) goto L54
            return r1
        L54:
            int r6 = r5 + (-6)
            r9.a(r6, r1)
            int r4 = r4 + r5
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.e.i(f.i.a.a.b1.d):boolean");
    }

    public e(long j2, int i2) {
        this.f4430f = j2;
        this.f4432h = j2;
        this.a = i2;
        this.b = new f(true, null);
        this.f4427c = new f.i.a.a.m1.u(2048);
        this.f4434j = -1;
        this.f4433i = -1L;
        f.i.a.a.m1.u uVar = new f.i.a.a.m1.u(10);
        this.f4428d = uVar;
        this.f4429e = new f.i.a.a.m1.t(uVar.a);
    }
}
