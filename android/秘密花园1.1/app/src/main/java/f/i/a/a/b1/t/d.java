package f.i.a.a.b1.t;

import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.j;
import f.i.a.a.b1.k;
import f.i.a.a.b1.l;
import f.i.a.a.b1.n;
import f.i.a.a.b1.p;
import f.i.a.a.d1.i.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: Mp3Extractor.java */
/* loaded from: classes.dex */
public final class d implements g {
    public static final g.a p = f.i.a.a.b1.t.a.a;
    public static final int q = h0.C("Xing");
    public static final int r = h0.C("Info");
    public static final int s = h0.C("VBRI");
    public final int a;
    public final long b;

    /* renamed from: g  reason: collision with root package name */
    public h f4130g;

    /* renamed from: h  reason: collision with root package name */
    public p f4131h;

    /* renamed from: i  reason: collision with root package name */
    public int f4132i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.d1.a f4133j;

    /* renamed from: k  reason: collision with root package name */
    public a f4134k;

    /* renamed from: m  reason: collision with root package name */
    public long f4136m;
    public long n;
    public int o;

    /* renamed from: c  reason: collision with root package name */
    public final u f4126c = new u(10);

    /* renamed from: d  reason: collision with root package name */
    public final l f4127d = new l();

    /* renamed from: e  reason: collision with root package name */
    public final j f4128e = new j();

    /* renamed from: l  reason: collision with root package name */
    public long f4135l = -9223372036854775807L;

    /* renamed from: f  reason: collision with root package name */
    public final k f4129f = new k();

    /* compiled from: Mp3Extractor.java */
    /* loaded from: classes.dex */
    public interface a extends n {
        long b(long j2);

        long e();
    }

    public d(int i2, long j2) {
        this.a = i2;
        this.b = j2;
    }

    public static boolean e(int i2, long j2) {
        return ((long) (i2 & (-128000))) == (j2 & (-128000));
    }

    public static /* synthetic */ boolean g(int i2, int i3, int i4, int i5, int i6) {
        return (i3 == 67 && i4 == 79 && i5 == 77 && (i6 == 77 || i2 == 2)) || (i3 == 77 && i4 == 76 && i5 == 76 && (i6 == 84 || i2 == 2));
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final a b(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        dVar.d(this.f4126c.a, 0, 4, false);
        this.f4126c.A(0);
        l.b(this.f4126c.d(), this.f4127d);
        return new b(dVar.f4041c, dVar.f4042d, this.f4127d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r10 != f.i.a.a.b1.t.d.r) goto L141;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e0  */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(f.i.a.a.b1.d r41, f.i.a.a.b1.m r42) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 857
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.t.d.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4130g = hVar;
        this.f4131h = hVar.q(0, 1);
        this.f4130g.d();
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4132i = 0;
        this.f4135l = -9223372036854775807L;
        this.f4136m = 0L;
        this.o = 0;
    }

    public final boolean h(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        a aVar = this.f4134k;
        if (aVar != null) {
            long e2 = aVar.e();
            if (e2 != -1 && dVar.c() > e2 - 4) {
                return true;
            }
        }
        try {
            return !dVar.d(this.f4126c.a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        return j(dVar, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e3, code lost:
        if (r13 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e5, code lost:
        r12.h(r3 + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ea, code lost:
        r12.f4044f = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ec, code lost:
        r11.f4132i = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ee, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean j(f.i.a.a.b1.d r12, boolean r13) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.t.d.j(f.i.a.a.b1.d, boolean):boolean");
    }
}
