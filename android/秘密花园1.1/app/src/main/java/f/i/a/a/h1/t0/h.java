package f.i.a.a.h1.t0;

import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import f.i.a.a.b0;
import f.i.a.a.b1.n;
import f.i.a.a.h1.p;
import f.i.a.a.h1.s0.k;
import f.i.a.a.h1.s0.l;
import f.i.a.a.h1.t0.c;
import f.i.a.a.h1.t0.j;
import f.i.a.a.l1.d0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import f.i.a.a.q;
import f.i.a.a.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultDashChunkSource.java */
/* loaded from: classes.dex */
public class h implements f.i.a.a.h1.t0.c {
    public final d0 a;
    public final int[] b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4922c;

    /* renamed from: d  reason: collision with root package name */
    public final m f4923d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4924e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4925f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final j.c f4926g;

    /* renamed from: h  reason: collision with root package name */
    public final b[] f4927h;

    /* renamed from: i  reason: collision with root package name */
    public f.i.a.a.j1.j f4928i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.h1.t0.k.b f4929j;

    /* renamed from: k  reason: collision with root package name */
    public int f4930k;

    /* renamed from: l  reason: collision with root package name */
    public IOException f4931l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4932m;
    public long n;

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes.dex */
    public static final class a implements c.a {
        public final m.a a;
        public final int b = 1;

        public a(m.a aVar) {
            this.a = aVar;
        }

        @Override // f.i.a.a.h1.t0.c.a
        public f.i.a.a.h1.t0.c a(d0 d0Var, f.i.a.a.h1.t0.k.b bVar, int i2, int[] iArr, f.i.a.a.j1.j jVar, int i3, long j2, boolean z, List<b0> list, @Nullable j.c cVar, @Nullable i0 i0Var) {
            m createDataSource = this.a.createDataSource();
            if (i0Var != null) {
                createDataSource.c(i0Var);
            }
            return new h(d0Var, bVar, i2, iArr, jVar, i3, createDataSource, j2, this.b, z, list, cVar);
        }
    }

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes.dex */
    public static final class c extends f.i.a.a.h1.s0.b {
        public c(b bVar, long j2, long j3) {
            super(j2, j3);
        }
    }

    public h(d0 d0Var, f.i.a.a.h1.t0.k.b bVar, int i2, int[] iArr, f.i.a.a.j1.j jVar, int i3, m mVar, long j2, int i4, boolean z, List<b0> list, @Nullable j.c cVar) {
        this.a = d0Var;
        this.f4929j = bVar;
        this.b = iArr;
        this.f4928i = jVar;
        this.f4922c = i3;
        this.f4923d = mVar;
        this.f4930k = i2;
        this.f4924e = j2;
        this.f4925f = i4;
        this.f4926g = cVar;
        long a2 = q.a(bVar.d(i2));
        this.n = -9223372036854775807L;
        ArrayList<f.i.a.a.h1.t0.k.i> j3 = j();
        this.f4927h = new b[jVar.length()];
        for (int i5 = 0; i5 < this.f4927h.length; i5++) {
            this.f4927h[i5] = new b(a2, i3, j3.get(jVar.e(i5)), z, list, cVar);
        }
    }

    @Override // f.i.a.a.h1.s0.h
    public void a() throws IOException {
        IOException iOException = this.f4931l;
        if (iOException == null) {
            this.a.a();
            return;
        }
        throw iOException;
    }

    @Override // f.i.a.a.h1.s0.h
    public long b(long j2, s0 s0Var) {
        b[] bVarArr;
        for (b bVar : this.f4927h) {
            f fVar = bVar.f4933c;
            if (fVar != null) {
                long a2 = fVar.a(j2, bVar.f4934d) + bVar.f4935e;
                long h2 = bVar.h(a2);
                return h0.g0(j2, s0Var, h2, (h2 >= j2 || a2 >= ((long) (bVar.e() + (-1)))) ? h2 : bVar.h(a2 + 1));
            }
        }
        return j2;
    }

    @Override // f.i.a.a.h1.t0.c
    public void c(f.i.a.a.j1.j jVar) {
        this.f4928i = jVar;
    }

    @Override // f.i.a.a.h1.t0.c
    public void d(f.i.a.a.h1.t0.k.b bVar, int i2) {
        try {
            this.f4929j = bVar;
            this.f4930k = i2;
            long e2 = bVar.e(i2);
            ArrayList<f.i.a.a.h1.t0.k.i> j2 = j();
            for (int i3 = 0; i3 < this.f4927h.length; i3++) {
                this.f4927h[i3] = this.f4927h[i3].a(e2, j2.get(this.f4928i.e(i3)));
            }
        } catch (p e3) {
            this.f4931l = e3;
        }
    }

    @Override // f.i.a.a.h1.s0.h
    public int e(long j2, List<? extends l> list) {
        if (this.f4931l == null && this.f4928i.length() >= 2) {
            return this.f4928i.f(j2, list);
        }
        return list.size();
    }

    @Override // f.i.a.a.h1.s0.h
    public void f(f.i.a.a.h1.s0.d dVar) {
        n nVar;
        if (dVar instanceof k) {
            int g2 = this.f4928i.g(((k) dVar).f4867c);
            b[] bVarArr = this.f4927h;
            b bVar = bVarArr[g2];
            if (bVar.f4933c == null && (nVar = bVar.a.f4878h) != null) {
                bVarArr[g2] = new b(bVar.f4934d, bVar.b, bVar.a, bVar.f4935e, new g((f.i.a.a.b1.b) nVar, bVar.b.f4983c));
            }
        }
        j.c cVar = this.f4926g;
        if (cVar != null) {
            j jVar = j.this;
            long j2 = jVar.f4947h;
            if (j2 != -9223372036854775807L || dVar.f4871g > j2) {
                jVar.f4947h = dVar.f4871g;
            }
        }
    }

    @Override // f.i.a.a.h1.s0.h
    public void h(long j2, long j3, List<? extends l> list, f.i.a.a.h1.s0.f fVar) {
        long currentTimeMillis;
        f.i.a.a.h1.s0.d iVar;
        f.i.a.a.h1.s0.f fVar2;
        int i2;
        int i3;
        f.i.a.a.h1.s0.m[] mVarArr;
        long j4;
        boolean z;
        if (this.f4931l != null) {
            return;
        }
        long j5 = j3 - j2;
        long j6 = this.f4929j.f4957d && (this.n > (-9223372036854775807L) ? 1 : (this.n == (-9223372036854775807L) ? 0 : -1)) != 0 ? this.n - j2 : -9223372036854775807L;
        long a2 = q.a(this.f4929j.b(this.f4930k).b) + q.a(this.f4929j.a) + j3;
        j.c cVar = this.f4926g;
        if (cVar != null) {
            j jVar = j.this;
            f.i.a.a.h1.t0.k.b bVar = jVar.f4945f;
            if (!bVar.f4957d) {
                z = false;
            } else if (jVar.f4949j) {
                z = true;
            } else {
                Map.Entry<Long, Long> ceilingEntry = jVar.f4944e.ceilingEntry(Long.valueOf(bVar.f4961h));
                if (ceilingEntry == null || ceilingEntry.getValue().longValue() >= a2) {
                    z = false;
                } else {
                    long longValue = ceilingEntry.getKey().longValue();
                    jVar.f4946g = longValue;
                    DashMediaSource dashMediaSource = DashMediaSource.this;
                    long j7 = dashMediaSource.J;
                    if (j7 == -9223372036854775807L || j7 < longValue) {
                        dashMediaSource.J = longValue;
                    }
                    z = true;
                }
                if (z) {
                    jVar.a();
                }
            }
            if (z) {
                return;
            }
        }
        if (this.f4924e != 0) {
            currentTimeMillis = SystemClock.elapsedRealtime() + this.f4924e;
        } else {
            currentTimeMillis = System.currentTimeMillis();
        }
        long j8 = currentTimeMillis * 1000;
        l lVar = list.isEmpty() ? null : list.get(list.size() - 1);
        int length = this.f4928i.length();
        f.i.a.a.h1.s0.m[] mVarArr2 = new f.i.a.a.h1.s0.m[length];
        int i4 = 0;
        while (i4 < length) {
            b bVar2 = this.f4927h[i4];
            if (bVar2.f4933c == null) {
                mVarArr2[i4] = f.i.a.a.h1.s0.m.a;
                i2 = i4;
                i3 = length;
                mVarArr = mVarArr2;
                j4 = j8;
            } else {
                long b2 = bVar2.b(this.f4929j, this.f4930k, j8);
                long d2 = bVar2.d(this.f4929j, this.f4930k, j8);
                i2 = i4;
                i3 = length;
                mVarArr = mVarArr2;
                j4 = j8;
                long k2 = k(bVar2, lVar, j3, b2, d2);
                if (k2 < b2) {
                    mVarArr[i2] = f.i.a.a.h1.s0.m.a;
                } else {
                    mVarArr[i2] = new c(bVar2, k2, d2);
                }
            }
            i4 = i2 + 1;
            length = i3;
            mVarArr2 = mVarArr;
            j8 = j4;
        }
        long j9 = j8;
        int i5 = 1;
        this.f4928i.h(j2, j5, j6, list, mVarArr2);
        b bVar3 = this.f4927h[this.f4928i.m()];
        f.i.a.a.h1.s0.e eVar = bVar3.a;
        if (eVar != null) {
            f.i.a.a.h1.t0.k.i iVar2 = bVar3.b;
            f.i.a.a.h1.t0.k.h hVar = eVar.f4879i == null ? iVar2.f4985e : null;
            f.i.a.a.h1.t0.k.h j10 = bVar3.f4933c == null ? iVar2.j() : null;
            if (hVar != null || j10 != null) {
                m mVar = this.f4923d;
                b0 k3 = this.f4928i.k();
                int l2 = this.f4928i.l();
                Object p = this.f4928i.p();
                String str = bVar3.b.b;
                if (hVar == null || (j10 = hVar.a(j10, str)) != null) {
                    hVar = j10;
                }
                fVar.a = new k(mVar, new f.i.a.a.l1.p(hVar.b(str), hVar.a, hVar.b, bVar3.b.h()), k3, l2, p, bVar3.a);
                return;
            }
        }
        long j11 = bVar3.f4934d;
        int i6 = (j11 > (-9223372036854775807L) ? 1 : (j11 == (-9223372036854775807L) ? 0 : -1));
        boolean z2 = i6 != 0;
        if (bVar3.e() == 0) {
            fVar.b = z2;
            return;
        }
        long b3 = bVar3.b(this.f4929j, this.f4930k, j9);
        long d3 = bVar3.d(this.f4929j, this.f4930k, j9);
        this.n = this.f4929j.f4957d ? bVar3.f(d3) : -9223372036854775807L;
        boolean z3 = z2;
        long k4 = k(bVar3, lVar, j3, b3, d3);
        if (k4 < b3) {
            this.f4931l = new p();
            return;
        }
        int i7 = (k4 > d3 ? 1 : (k4 == d3 ? 0 : -1));
        if (i7 <= 0 && (!this.f4932m || i7 < 0)) {
            if (z3 && bVar3.h(k4) >= j11) {
                fVar.b = true;
                return;
            }
            int min = (int) Math.min(this.f4925f, (d3 - k4) + 1);
            if (i6 != 0) {
                while (min > 1 && bVar3.h((min + k4) - 1) >= j11) {
                    min--;
                }
            }
            long j12 = list.isEmpty() ? j3 : -9223372036854775807L;
            m mVar2 = this.f4923d;
            int i8 = this.f4922c;
            b0 k5 = this.f4928i.k();
            int l3 = this.f4928i.l();
            Object p2 = this.f4928i.p();
            f.i.a.a.h1.t0.k.i iVar3 = bVar3.b;
            long b4 = bVar3.f4933c.b(k4 - bVar3.f4935e);
            f.i.a.a.h1.t0.k.h d4 = bVar3.f4933c.d(k4 - bVar3.f4935e);
            String str2 = iVar3.b;
            if (bVar3.a == null) {
                iVar = new f.i.a.a.h1.s0.n(mVar2, new f.i.a.a.l1.p(d4.b(str2), d4.a, d4.b, iVar3.h()), k5, l3, p2, b4, bVar3.f(k4), k4, i8, k5);
                fVar2 = fVar;
            } else {
                int i9 = 1;
                while (i5 < min) {
                    f.i.a.a.h1.t0.k.h a3 = d4.a(bVar3.f4933c.d((i5 + k4) - bVar3.f4935e), str2);
                    if (a3 == null) {
                        break;
                    }
                    i9++;
                    i5++;
                    d4 = a3;
                }
                long f2 = bVar3.f((i9 + k4) - 1);
                long j13 = bVar3.f4934d;
                iVar = new f.i.a.a.h1.s0.i(mVar2, new f.i.a.a.l1.p(d4.b(str2), d4.a, d4.b, iVar3.h()), k5, l3, p2, b4, f2, j12, (j13 == -9223372036854775807L || j13 > f2) ? -9223372036854775807L : j13, k4, i9, -iVar3.f4983c, bVar3.a);
                fVar2 = fVar;
            }
            fVar2.a = iVar;
            return;
        }
        fVar.b = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0035 A[RETURN] */
    @Override // f.i.a.a.h1.s0.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean i(f.i.a.a.h1.s0.d r10, boolean r11, java.lang.Exception r12, long r13) {
        /*
            r9 = this;
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            f.i.a.a.h1.t0.j$c r11 = r9.f4926g
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r3 = 1
            if (r11 == 0) goto L36
            f.i.a.a.h1.t0.j r11 = f.i.a.a.h1.t0.j.this
            f.i.a.a.h1.t0.k.b r4 = r11.f4945f
            boolean r4 = r4.f4957d
            if (r4 != 0) goto L17
            goto L32
        L17:
            boolean r4 = r11.f4949j
            if (r4 == 0) goto L1c
            goto L30
        L1c:
            long r4 = r11.f4947h
            int r6 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r6 == 0) goto L2a
            long r6 = r10.f4870f
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 >= 0) goto L2a
            r4 = 1
            goto L2b
        L2a:
            r4 = 0
        L2b:
            if (r4 == 0) goto L32
            r11.a()
        L30:
            r11 = 1
            goto L33
        L32:
            r11 = 0
        L33:
            if (r11 == 0) goto L36
            return r3
        L36:
            f.i.a.a.h1.t0.k.b r11 = r9.f4929j
            boolean r11 = r11.f4957d
            if (r11 != 0) goto L78
            boolean r11 = r10 instanceof f.i.a.a.h1.s0.l
            if (r11 == 0) goto L78
            boolean r11 = r12 instanceof f.i.a.a.l1.a0.e
            if (r11 == 0) goto L78
            f.i.a.a.l1.a0$e r12 = (f.i.a.a.l1.a0.e) r12
            int r11 = r12.a
            r12 = 404(0x194, float:5.66E-43)
            if (r11 != r12) goto L78
            f.i.a.a.h1.t0.h$b[] r11 = r9.f4927h
            f.i.a.a.j1.j r12 = r9.f4928i
            f.i.a.a.b0 r4 = r10.f4867c
            int r12 = r12.g(r4)
            r11 = r11[r12]
            int r12 = r11.e()
            r4 = -1
            if (r12 == r4) goto L78
            if (r12 == 0) goto L78
            long r4 = r11.c()
            long r11 = (long) r12
            long r4 = r4 + r11
            r11 = 1
            long r4 = r4 - r11
            r11 = r10
            f.i.a.a.h1.s0.l r11 = (f.i.a.a.h1.s0.l) r11
            long r11 = r11.c()
            int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r6 <= 0) goto L78
            r9.f4932m = r3
            return r3
        L78:
            int r11 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r11 == 0) goto L8b
            f.i.a.a.j1.j r11 = r9.f4928i
            f.i.a.a.b0 r10 = r10.f4867c
            int r10 = r11.g(r10)
            boolean r10 = r11.a(r10, r13)
            if (r10 == 0) goto L8b
            r0 = 1
        L8b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.t0.h.i(f.i.a.a.h1.s0.d, boolean, java.lang.Exception, long):boolean");
    }

    public final ArrayList<f.i.a.a.h1.t0.k.i> j() {
        List<f.i.a.a.h1.t0.k.a> list = this.f4929j.b(this.f4930k).f4976c;
        ArrayList<f.i.a.a.h1.t0.k.i> arrayList = new ArrayList<>();
        for (int i2 : this.b) {
            arrayList.addAll(list.get(i2).f4953c);
        }
        return arrayList;
    }

    public final long k(b bVar, @Nullable l lVar, long j2, long j3, long j4) {
        if (lVar != null) {
            return lVar.c();
        }
        return h0.p(bVar.f4933c.a(j2, bVar.f4934d) + bVar.f4935e, j3, j4);
    }

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes.dex */
    public static final class b {
        @Nullable
        public final f.i.a.a.h1.s0.e a;
        public final f.i.a.a.h1.t0.k.i b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f f4933c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4934d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4935e;

        public b(long j2, f.i.a.a.h1.t0.k.i iVar, @Nullable f.i.a.a.h1.s0.e eVar, long j3, @Nullable f fVar) {
            this.f4934d = j2;
            this.b = iVar;
            this.f4935e = j3;
            this.a = eVar;
            this.f4933c = fVar;
        }

        @CheckResult
        public b a(long j2, f.i.a.a.h1.t0.k.i iVar) throws p {
            long a;
            f i2 = this.b.i();
            f i3 = iVar.i();
            if (i2 == null) {
                return new b(j2, iVar, this.a, this.f4935e, i2);
            }
            if (!i2.e()) {
                return new b(j2, iVar, this.a, this.f4935e, i3);
            }
            int g2 = i2.g(j2);
            if (g2 == 0) {
                return new b(j2, iVar, this.a, this.f4935e, i3);
            }
            long f2 = (i2.f() + g2) - 1;
            long c2 = i2.c(f2, j2) + i2.b(f2);
            long f3 = i3.f();
            long b = i3.b(f3);
            long j3 = this.f4935e;
            int i4 = (c2 > b ? 1 : (c2 == b ? 0 : -1));
            if (i4 == 0) {
                a = f2 + 1;
            } else if (i4 >= 0) {
                a = i2.a(b, j2);
            } else {
                throw new p();
            }
            return new b(j2, iVar, this.a, (a - f3) + j3, i3);
        }

        public long b(f.i.a.a.h1.t0.k.b bVar, int i2, long j2) {
            if (e() == -1 && bVar.f4959f != -9223372036854775807L) {
                return Math.max(c(), g(((j2 - q.a(bVar.a)) - q.a(bVar.f4965l.get(i2).b)) - q.a(bVar.f4959f)));
            }
            return c();
        }

        public long c() {
            return this.f4933c.f() + this.f4935e;
        }

        public long d(f.i.a.a.h1.t0.k.b bVar, int i2, long j2) {
            long c2;
            int e2 = e();
            if (e2 == -1) {
                c2 = g((j2 - q.a(bVar.a)) - q.a(bVar.f4965l.get(i2).b));
            } else {
                c2 = c() + e2;
            }
            return c2 - 1;
        }

        public int e() {
            return this.f4933c.g(this.f4934d);
        }

        public long f(long j2) {
            return this.f4933c.c(j2 - this.f4935e, this.f4934d) + this.f4933c.b(j2 - this.f4935e);
        }

        public long g(long j2) {
            return this.f4933c.a(j2, this.f4934d) + this.f4935e;
        }

        public long h(long j2) {
            return this.f4933c.b(j2 - this.f4935e);
        }

        public b(long j2, int i2, f.i.a.a.h1.t0.k.i iVar, boolean z, List<b0> list, f.i.a.a.b1.p pVar) {
            f.i.a.a.b1.g dVar;
            f.i.a.a.h1.s0.e eVar;
            String str = iVar.a.f4012h;
            if (r.i(str) || "application/ttml+xml".equals(str)) {
                eVar = null;
            } else {
                if ("application/x-rawcc".equals(str)) {
                    dVar = new f.i.a.a.b1.w.a(iVar.a);
                } else {
                    if (str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm")) {
                        dVar = new f.i.a.a.b1.s.d(1);
                    } else {
                        dVar = new f.i.a.a.b1.u.d(z ? 4 : 0, null, null, null, list, pVar);
                    }
                }
                eVar = new f.i.a.a.h1.s0.e(dVar, i2, iVar.a);
            }
            f i3 = iVar.i();
            this.f4934d = j2;
            this.b = iVar;
            this.f4935e = 0L;
            this.a = eVar;
            this.f4933c = i3;
        }
    }
}
