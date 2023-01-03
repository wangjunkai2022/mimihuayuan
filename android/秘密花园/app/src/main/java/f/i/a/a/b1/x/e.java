package f.i.a.a.b1.x;

import androidx.annotation.Nullable;
import f.i.a.a.b1.c;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.m;
import f.i.a.a.b1.n;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: AdtsExtractor.java */
/* loaded from: classes.dex */
public final class e implements g {
    public static final int n = h0.C("ID3");
    public final int a;
    public final f b;

    /* renamed from: c  reason: collision with root package name */
    public final u f4343c;

    /* renamed from: d  reason: collision with root package name */
    public final u f4344d;

    /* renamed from: e  reason: collision with root package name */
    public final t f4345e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4346f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public h f4347g;

    /* renamed from: h  reason: collision with root package name */
    public long f4348h;

    /* renamed from: i  reason: collision with root package name */
    public long f4349i;

    /* renamed from: j  reason: collision with root package name */
    public int f4350j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4351k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4352l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4353m;

    public e() {
        this(0, 0);
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final int b(d dVar) throws IOException, InterruptedException {
        int i2 = 0;
        while (true) {
            dVar.d(this.f4344d.a, 0, 10, false);
            this.f4344d.A(0);
            if (this.f4344d.r() != n) {
                break;
            }
            this.f4344d.B(3);
            int o = this.f4344d.o();
            i2 += o + 10;
            dVar.a(o, false);
        }
        dVar.f4044f = 0;
        dVar.a(i2, false);
        if (this.f4349i == -1) {
            this.f4349i = (long) i2;
        }
        return i2;
    }

    @Override // f.i.a.a.b1.g
    public int c(d dVar, m mVar) throws IOException, InterruptedException {
        long j2 = dVar.f4041c;
        boolean z = ((this.a & 1) == 0 || j2 == -1) ? false : true;
        if (z && !this.f4351k) {
            this.f4350j = -1;
            dVar.f4044f = 0;
            if (dVar.f4042d == 0) {
                b(dVar);
            }
            long j3 = 0;
            int i2 = 0;
            while (true) {
                if (!dVar.d(this.f4344d.a, 0, 2, true)) {
                    break;
                }
                this.f4344d.A(0);
                if (!f.g(this.f4344d.u())) {
                    i2 = 0;
                    break;
                } else if (!dVar.d(this.f4344d.a, 0, 4, true)) {
                    break;
                } else {
                    this.f4345e.j(14);
                    int f2 = this.f4345e.f(13);
                    if (f2 > 6) {
                        j3 += (long) f2;
                        i2++;
                        if (i2 != 1000) {
                            if (!dVar.a(f2 - 6, true)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        this.f4351k = true;
                        throw new f.i.a.a.h0("Malformed ADTS stream");
                    }
                }
            }
            dVar.f4044f = 0;
            if (i2 > 0) {
                this.f4350j = (int) (j3 / ((long) i2));
            } else {
                this.f4350j = -1;
            }
            this.f4351k = true;
        }
        int e2 = dVar.e(this.f4343c.a, 0, 2048);
        boolean z2 = e2 == -1;
        if (!this.f4353m) {
            boolean z3 = z && this.f4350j > 0;
            if (!z3 || this.b.q != -9223372036854775807L || z2) {
                h hVar = this.f4347g;
                c.a.a.b.g.h.t(hVar);
                if (z3) {
                    long j4 = this.b.q;
                    if (j4 != -9223372036854775807L) {
                        int i3 = this.f4350j;
                        hVar.a(new c(j2, this.f4349i, (int) ((((long) (i3 * 8)) * 1000000) / j4), i3));
                        this.f4353m = true;
                    }
                }
                hVar.a(new n.b(-9223372036854775807L, 0));
                this.f4353m = true;
            }
        }
        if (z2) {
            return -1;
        }
        this.f4343c.A(0);
        this.f4343c.z(e2);
        if (!this.f4352l) {
            this.b.s = this.f4348h;
            this.f4352l = true;
        }
        this.b.c(this.f4343c);
        return 0;
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4347g = hVar;
        this.b.f(hVar, new c0.d(Integer.MIN_VALUE, 0, 1));
        hVar.d();
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4352l = false;
        this.b.a();
        this.f4348h = this.f4346f + j3;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0021, code lost:
        r9.f4044f = 0;
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0029, code lost:
        if ((r3 - r0) < 8192) goto L_0x002c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002b, code lost:
        return false;
     */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean i(f.i.a.a.b1.d r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r8 = this;
            int r0 = r8.b(r9)
            r1 = 0
            r3 = r0
        L_0x0006:
            r2 = 0
            r4 = 0
        L_0x0008:
            f.i.a.a.m1.u r5 = r8.f4344d
            byte[] r5 = r5.a
            r6 = 2
            r9.d(r5, r1, r6, r1)
            f.i.a.a.m1.u r5 = r8.f4344d
            r5.A(r1)
            f.i.a.a.m1.u r5 = r8.f4344d
            int r5 = r5.u()
            boolean r5 = f.i.a.a.b1.x.f.g(r5)
            if (r5 != 0) goto L_0x0030
            r9.f4044f = r1
            int r3 = r3 + 1
            int r2 = r3 - r0
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r2 < r4) goto L_0x002c
            return r1
        L_0x002c:
            r9.a(r3, r1)
            goto L_0x0006
        L_0x0030:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L_0x003a
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L_0x003a
            return r5
        L_0x003a:
            f.i.a.a.m1.u r5 = r8.f4344d
            byte[] r5 = r5.a
            r9.d(r5, r1, r6, r1)
            f.i.a.a.m1.t r5 = r8.f4345e
            r6 = 14
            r5.j(r6)
            f.i.a.a.m1.t r5 = r8.f4345e
            r6 = 13
            int r5 = r5.f(r6)
            r6 = 6
            if (r5 > r6) goto L_0x0054
            return r1
        L_0x0054:
            int r6 = r5 + -6
            r9.a(r6, r1)
            int r4 = r4 + r5
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.e.i(f.i.a.a.b1.d):boolean");
    }

    public e(long j2, int i2) {
        this.f4346f = j2;
        this.f4348h = j2;
        this.a = i2;
        this.b = new f(true, null);
        this.f4343c = new u(2048);
        this.f4350j = -1;
        this.f4349i = -1;
        u uVar = new u(10);
        this.f4344d = uVar;
        this.f4345e = new t(uVar.a);
    }
}
