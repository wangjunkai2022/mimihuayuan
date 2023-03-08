package f.i.a.a.h1;

import android.os.Handler;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.u0;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ClippingMediaSource.java */
/* loaded from: classes.dex */
public final class r extends s<Void> {

    /* renamed from: i  reason: collision with root package name */
    public final e0 f4918i;

    /* renamed from: j  reason: collision with root package name */
    public final long f4919j;

    /* renamed from: k  reason: collision with root package name */
    public final long f4920k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f4921l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f4922m;
    public final boolean n;
    public final ArrayList<q> o;
    public final u0.c p;
    @Nullable
    public Object q;
    public a r;
    public b s;
    public long t;
    public long u;

    /* compiled from: ClippingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class a extends z {

        /* renamed from: c  reason: collision with root package name */
        public final long f4923c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4924d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4925e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f4926f;

        /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
            if (r13 == r10) goto L32;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public a(f.i.a.a.u0 r10, long r11, long r13) throws f.i.a.a.h1.r.b {
            /*
                r9 = this;
                r9.<init>(r10)
                int r0 = r10.i()
                r1 = 1
                r2 = 0
                if (r0 != r1) goto L75
                f.i.a.a.u0$c r0 = new f.i.a.a.u0$c
                r0.<init>()
                f.i.a.a.u0$c r10 = r10.n(r2, r0)
                r3 = 0
                long r11 = java.lang.Math.max(r3, r11)
                r5 = -9223372036854775808
                int r0 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
                if (r0 != 0) goto L23
                long r13 = r10.f5880i
                goto L27
            L23:
                long r13 = java.lang.Math.max(r3, r13)
            L27:
                long r5 = r10.f5880i
                r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r0 == 0) goto L52
                int r0 = (r13 > r5 ? 1 : (r13 == r5 ? 0 : -1))
                if (r0 <= 0) goto L37
                r13 = r5
            L37:
                int r0 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
                if (r0 == 0) goto L46
                boolean r0 = r10.f5875d
                if (r0 == 0) goto L40
                goto L46
            L40:
                f.i.a.a.h1.r$b r10 = new f.i.a.a.h1.r$b
                r10.<init>(r1)
                throw r10
            L46:
                int r0 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
                if (r0 > 0) goto L4b
                goto L52
            L4b:
                f.i.a.a.h1.r$b r10 = new f.i.a.a.h1.r$b
                r11 = 2
                r10.<init>(r11)
                throw r10
            L52:
                r9.f4923c = r11
                r9.f4924d = r13
                int r0 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
                if (r0 != 0) goto L5c
                r11 = r7
                goto L5e
            L5c:
                long r11 = r13 - r11
            L5e:
                r9.f4925e = r11
                boolean r11 = r10.f5876e
                if (r11 == 0) goto L71
                if (r0 == 0) goto L72
                long r10 = r10.f5880i
                int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
                if (r12 == 0) goto L71
                int r12 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1))
                if (r12 != 0) goto L71
                goto L72
            L71:
                r1 = 0
            L72:
                r9.f4926f = r1
                return
            L75:
                f.i.a.a.h1.r$b r10 = new f.i.a.a.h1.r$b
                r10.<init>(r2)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.r.a.<init>(f.i.a.a.u0, long, long):void");
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public u0.b g(int i2, u0.b bVar, boolean z) {
            this.b.g(0, bVar, z);
            long j2 = bVar.f5872e - this.f4923c;
            long j3 = this.f4925e;
            bVar.g(bVar.a, bVar.b, 0, j3 == -9223372036854775807L ? -9223372036854775807L : j3 - j2, j2);
            return bVar;
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public u0.c o(int i2, u0.c cVar, boolean z, long j2) {
            this.b.o(0, cVar, z, 0L);
            long j3 = cVar.f5881j;
            long j4 = this.f4923c;
            cVar.f5881j = j3 + j4;
            cVar.f5880i = this.f4925e;
            cVar.f5876e = this.f4926f;
            long j5 = cVar.f5879h;
            if (j5 != -9223372036854775807L) {
                long max = Math.max(j5, j4);
                cVar.f5879h = max;
                long j6 = this.f4924d;
                if (j6 != -9223372036854775807L) {
                    max = Math.min(max, j6);
                }
                cVar.f5879h = max;
                cVar.f5879h = max - this.f4923c;
            }
            long b = f.i.a.a.q.b(this.f4923c);
            long j7 = cVar.b;
            if (j7 != -9223372036854775807L) {
                cVar.b = j7 + b;
            }
            long j8 = cVar.f5874c;
            if (j8 != -9223372036854775807L) {
                cVar.f5874c = j8 + b;
            }
            return cVar;
        }
    }

    /* compiled from: ClippingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class b extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public b(int r3) {
            /*
                r2 = this;
                java.lang.String r0 = "Illegal clipping: "
                java.lang.StringBuilder r0 = f.b.a.a.a.o(r0)
                if (r3 == 0) goto L17
                r1 = 1
                if (r3 == r1) goto L14
                r1 = 2
                if (r3 == r1) goto L11
                java.lang.String r3 = "unknown"
                goto L19
            L11:
                java.lang.String r3 = "start exceeds end"
                goto L19
            L14:
                java.lang.String r3 = "not seekable to start"
                goto L19
            L17:
                java.lang.String r3 = "invalid period count"
            L19:
                r0.append(r3)
                java.lang.String r3 = r0.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.r.b.<init>(int):void");
        }
    }

    public r(e0 e0Var, long j2, long j3) {
        c.a.a.b.g.h.m(j2 >= 0);
        if (e0Var != null) {
            this.f4918i = e0Var;
            this.f4919j = j2;
            this.f4920k = j3;
            this.f4921l = true;
            this.f4922m = false;
            this.n = false;
            this.o = new ArrayList<>();
            this.p = new u0.c();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.f4918i.a();
    }

    @Override // f.i.a.a.h1.s, f.i.a.a.h1.e0
    public void b() throws IOException {
        b bVar = this.s;
        if (bVar == null) {
            super.b();
            return;
        }
        throw bVar;
    }

    @Override // f.i.a.a.h1.e0
    public d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        q qVar = new q(this.f4918i.c(aVar, eVar, j2), this.f4921l, this.t, this.u);
        this.o.add(qVar);
        return qVar;
    }

    @Override // f.i.a.a.h1.e0
    public void d(d0 d0Var) {
        c.a.a.b.g.h.v(this.o.remove(d0Var));
        this.f4918i.d(((q) d0Var).a);
        if (!this.o.isEmpty() || this.f4922m) {
            return;
        }
        w(this.r.b);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable f.i.a.a.l1.i0 i0Var) {
        this.f4935h = i0Var;
        this.f4934g = new Handler();
        v(null, this.f4918i);
    }

    @Override // f.i.a.a.h1.s, f.i.a.a.h1.o
    public void n() {
        super.n();
        this.s = null;
        this.r = null;
    }

    @Override // f.i.a.a.h1.s
    public long q(Void r7, long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long b2 = f.i.a.a.q.b(this.f4919j);
        long max = Math.max(0L, j2 - b2);
        long j3 = this.f4920k;
        if (j3 != Long.MIN_VALUE) {
            max = Math.min(f.i.a.a.q.b(j3) - b2, max);
        }
        return max;
    }

    @Override // f.i.a.a.h1.s
    public void u(Void r1, e0 e0Var, u0 u0Var, @Nullable Object obj) {
        if (this.s != null) {
            return;
        }
        this.q = obj;
        w(u0Var);
    }

    public final void w(u0 u0Var) {
        long j2;
        long j3;
        u0Var.n(0, this.p);
        long j4 = this.p.f5881j;
        if (this.r != null && !this.o.isEmpty() && !this.f4922m) {
            long j5 = this.t - j4;
            j3 = this.f4920k != Long.MIN_VALUE ? this.u - j4 : Long.MIN_VALUE;
            j2 = j5;
        } else {
            long j6 = this.f4919j;
            long j7 = this.f4920k;
            if (this.n) {
                long j8 = this.p.f5879h;
                j6 += j8;
                j7 += j8;
            }
            this.t = j4 + j6;
            this.u = this.f4920k != Long.MIN_VALUE ? j4 + j7 : Long.MIN_VALUE;
            int size = this.o.size();
            for (int i2 = 0; i2 < size; i2++) {
                q qVar = this.o.get(i2);
                long j9 = this.t;
                long j10 = this.u;
                qVar.f4915e = j9;
                qVar.f4916f = j10;
            }
            j2 = j6;
            j3 = j7;
        }
        try {
            a aVar = new a(u0Var, j2, j3);
            this.r = aVar;
            m(aVar, this.q);
        } catch (b e2) {
            this.s = e2;
        }
    }
}
