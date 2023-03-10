package f.i.a.a.b1;

import androidx.annotation.Nullable;
import f.i.a.a.b1.n;
import f.i.a.a.m1.h0;
import java.io.IOException;
/* compiled from: BinarySearchSeeker.java */
/* loaded from: classes.dex */
public abstract class a {
    public final C0060a a;
    public final g b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public d f4102c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4103d;

    /* compiled from: BinarySearchSeeker.java */
    /* renamed from: f.i.a.a.b1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0060a implements n {
        public final e a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4104c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4105d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4106e;

        /* renamed from: f  reason: collision with root package name */
        public final long f4107f;

        /* renamed from: g  reason: collision with root package name */
        public final long f4108g;

        public C0060a(e eVar, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.a = eVar;
            this.b = j2;
            this.f4104c = j3;
            this.f4105d = j4;
            this.f4106e = j5;
            this.f4107f = j6;
            this.f4108g = j7;
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            if (((b) this.a) != null) {
                return new n.a(new o(j2, d.a(j2, this.f4104c, this.f4105d, this.f4106e, this.f4107f, this.f4108g)));
            }
            throw null;
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            return this.b;
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static final class b implements e {
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static final class c {
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static class d {
        public final long a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4109c;

        /* renamed from: d  reason: collision with root package name */
        public long f4110d;

        /* renamed from: e  reason: collision with root package name */
        public long f4111e;

        /* renamed from: f  reason: collision with root package name */
        public long f4112f;

        /* renamed from: g  reason: collision with root package name */
        public long f4113g;

        /* renamed from: h  reason: collision with root package name */
        public long f4114h;

        public d(long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
            this.a = j2;
            this.b = j3;
            this.f4110d = j4;
            this.f4111e = j5;
            this.f4112f = j6;
            this.f4113g = j7;
            this.f4109c = j8;
            this.f4114h = a(j3, j4, j5, j6, j7, j8);
        }

        public static long a(long j2, long j3, long j4, long j5, long j6, long j7) {
            if (j5 + 1 >= j6 || j3 + 1 >= j4) {
                return j5;
            }
            long j8 = ((float) (j2 - j3)) * (((float) (j6 - j5)) / ((float) (j4 - j3)));
            return h0.p(((j8 + j5) - j7) - (j8 / 20), j5, j6 - 1);
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public interface e {
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: d  reason: collision with root package name */
        public static final f f4115d = new f(-3, -9223372036854775807L, -1);
        public final int a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4116c;

        public f(int i2, long j2, long j3) {
            this.a = i2;
            this.b = j2;
            this.f4116c = j3;
        }

        public static f a(long j2) {
            return new f(0, -9223372036854775807L, j2);
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public interface g {
        f a(f.i.a.a.b1.d dVar, long j2, c cVar) throws IOException, InterruptedException;

        void b();
    }

    public a(e eVar, g gVar, long j2, long j3, long j4, long j5, long j6, long j7, int i2) {
        this.b = gVar;
        this.f4103d = i2;
        this.a = new C0060a(eVar, j2, j3, j4, j5, j6, j7);
    }

    public int a(f.i.a.a.b1.d dVar, m mVar, c cVar) throws InterruptedException, IOException {
        f.i.a.a.b1.d dVar2 = dVar;
        m mVar2 = mVar;
        g gVar = this.b;
        c.a.a.b.g.h.t(gVar);
        while (true) {
            d dVar3 = this.f4102c;
            c.a.a.b.g.h.t(dVar3);
            long j2 = dVar3.f4112f;
            long j3 = dVar3.f4113g;
            long j4 = dVar3.f4114h;
            if (j3 - j2 <= this.f4103d) {
                b(false, j2);
                return c(dVar2, j2, mVar2);
            } else if (!e(dVar2, j4)) {
                return c(dVar2, j4, mVar2);
            } else {
                dVar2.f4128f = 0;
                f a = gVar.a(dVar2, dVar3.b, null);
                int i2 = a.a;
                if (i2 == -3) {
                    b(false, j4);
                    return c(dVar, j4, mVar);
                }
                if (i2 == -2) {
                    long j5 = a.b;
                    long j6 = a.f4116c;
                    dVar3.f4110d = j5;
                    dVar3.f4112f = j6;
                    dVar3.f4114h = d.a(dVar3.b, j5, dVar3.f4111e, j6, dVar3.f4113g, dVar3.f4109c);
                } else if (i2 != -1) {
                    if (i2 == 0) {
                        b(true, a.f4116c);
                        e(dVar2, a.f4116c);
                        return c(dVar2, a.f4116c, mVar2);
                    }
                    throw new IllegalStateException("Invalid case");
                } else {
                    long j7 = a.b;
                    long j8 = a.f4116c;
                    dVar3.f4111e = j7;
                    dVar3.f4113g = j8;
                    dVar3.f4114h = d.a(dVar3.b, dVar3.f4110d, j7, dVar3.f4112f, j8, dVar3.f4109c);
                }
                dVar2 = dVar;
                mVar2 = mVar;
            }
        }
    }

    public final void b(boolean z, long j2) {
        this.f4102c = null;
        this.b.b();
    }

    public final int c(f.i.a.a.b1.d dVar, long j2, m mVar) {
        if (j2 == dVar.f4126d) {
            return 0;
        }
        mVar.a = j2;
        return 1;
    }

    public final void d(long j2) {
        d dVar = this.f4102c;
        if (dVar == null || dVar.a != j2) {
            C0060a c0060a = this.a;
            if (((b) c0060a.a) != null) {
                this.f4102c = new d(j2, j2, c0060a.f4104c, c0060a.f4105d, c0060a.f4106e, c0060a.f4107f, c0060a.f4108g);
                return;
            }
            throw null;
        }
    }

    public final boolean e(f.i.a.a.b1.d dVar, long j2) throws IOException, InterruptedException {
        long j3 = j2 - dVar.f4126d;
        if (j3 < 0 || j3 > 262144) {
            return false;
        }
        dVar.h((int) j3);
        return true;
    }
}
