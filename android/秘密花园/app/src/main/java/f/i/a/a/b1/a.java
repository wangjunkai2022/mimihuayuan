package f.i.a.a.b1;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b1.n;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: BinarySearchSeeker.java */
/* loaded from: classes.dex */
public abstract class a {
    public final C0053a a;
    public final g b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public d f4018c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4019d;

    /* compiled from: BinarySearchSeeker.java */
    /* renamed from: f.i.a.a.b1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0053a implements n {
        public final e a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4020c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4021d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4022e;

        /* renamed from: f  reason: collision with root package name */
        public final long f4023f;

        /* renamed from: g  reason: collision with root package name */
        public final long f4024g;

        public C0053a(e eVar, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.a = eVar;
            this.b = j2;
            this.f4020c = j3;
            this.f4021d = j4;
            this.f4022e = j5;
            this.f4023f = j6;
            this.f4024g = j7;
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            if (((b) this.a) != null) {
                return new n.a(new o(j2, d.a(j2, this.f4020c, this.f4021d, this.f4022e, this.f4023f, this.f4024g)));
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
        public final long f4025c;

        /* renamed from: d  reason: collision with root package name */
        public long f4026d;

        /* renamed from: e  reason: collision with root package name */
        public long f4027e;

        /* renamed from: f  reason: collision with root package name */
        public long f4028f;

        /* renamed from: g  reason: collision with root package name */
        public long f4029g;

        /* renamed from: h  reason: collision with root package name */
        public long f4030h;

        public d(long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
            this.a = j2;
            this.b = j3;
            this.f4026d = j4;
            this.f4027e = j5;
            this.f4028f = j6;
            this.f4029g = j7;
            this.f4025c = j8;
            this.f4030h = a(j3, j4, j5, j6, j7, j8);
        }

        public static long a(long j2, long j3, long j4, long j5, long j6, long j7) {
            if (j5 + 1 >= j6 || j3 + 1 >= j4) {
                return j5;
            }
            long j8 = (long) (((float) (j2 - j3)) * (((float) (j6 - j5)) / ((float) (j4 - j3))));
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
        public static final f f4031d = new f(-3, -9223372036854775807L, -1);
        public final int a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4032c;

        public f(int i2, long j2, long j3) {
            this.a = i2;
            this.b = j2;
            this.f4032c = j3;
        }

        public static f a(long j2) {
            return new f(0, -9223372036854775807L, j2);
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public interface g {
        f a(d dVar, long j2, c cVar) throws IOException, InterruptedException;

        void b();
    }

    public a(e eVar, g gVar, long j2, long j3, long j4, long j5, long j6, long j7, int i2) {
        this.b = gVar;
        this.f4019d = i2;
        this.a = new C0053a(eVar, j2, j3, j4, j5, j6, j7);
    }

    public int a(d dVar, m mVar, c cVar) throws InterruptedException, IOException {
        d dVar2 = dVar;
        m mVar2 = mVar;
        g gVar = this.b;
        h.t(gVar);
        while (true) {
            d dVar3 = this.f4018c;
            h.t(dVar3);
            long j2 = dVar3.f4028f;
            long j3 = dVar3.f4029g;
            long j4 = dVar3.f4030h;
            if (j3 - j2 <= ((long) this.f4019d)) {
                b(false, j2);
                return c(dVar2, j2, mVar2);
            } else if (!e(dVar2, j4)) {
                return c(dVar2, j4, mVar2);
            } else {
                dVar2.f4044f = 0;
                f a = gVar.a(dVar2, dVar3.b, null);
                int i2 = a.a;
                if (i2 != -3) {
                    if (i2 == -2) {
                        long j5 = a.b;
                        long j6 = a.f4032c;
                        dVar3.f4026d = j5;
                        dVar3.f4028f = j6;
                        dVar3.f4030h = d.a(dVar3.b, j5, dVar3.f4027e, j6, dVar3.f4029g, dVar3.f4025c);
                    } else if (i2 == -1) {
                        long j7 = a.b;
                        long j8 = a.f4032c;
                        dVar3.f4027e = j7;
                        dVar3.f4029g = j8;
                        dVar3.f4030h = d.a(dVar3.b, dVar3.f4026d, j7, dVar3.f4028f, j8, dVar3.f4025c);
                    } else if (i2 == 0) {
                        b(true, a.f4032c);
                        e(dVar2, a.f4032c);
                        return c(dVar2, a.f4032c, mVar2);
                    } else {
                        throw new IllegalStateException("Invalid case");
                    }
                    dVar2 = dVar;
                    mVar2 = mVar;
                } else {
                    b(false, j4);
                    return c(dVar, j4, mVar);
                }
            }
        }
    }

    public final void b(boolean z, long j2) {
        this.f4018c = null;
        this.b.b();
    }

    public final int c(d dVar, long j2, m mVar) {
        if (j2 == dVar.f4042d) {
            return 0;
        }
        mVar.a = j2;
        return 1;
    }

    public final void d(long j2) {
        d dVar = this.f4018c;
        if (dVar == null || dVar.a != j2) {
            C0053a aVar = this.a;
            if (((b) aVar.a) != null) {
                this.f4018c = new d(j2, j2, aVar.f4020c, aVar.f4021d, aVar.f4022e, aVar.f4023f, aVar.f4024g);
                return;
            }
            throw null;
        }
    }

    public final boolean e(d dVar, long j2) throws IOException, InterruptedException {
        long j3 = j2 - dVar.f4042d;
        if (j3 < 0 || j3 > 262144) {
            return false;
        }
        dVar.h((int) j3);
        return true;
    }
}
