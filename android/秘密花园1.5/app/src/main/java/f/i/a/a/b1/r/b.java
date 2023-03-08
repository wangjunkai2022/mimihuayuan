package f.i.a.a.b1.r;

import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.n;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: FlvExtractor.java */
/* loaded from: classes.dex */
public final class b implements g {
    public static final int q = h0.C("FLV");

    /* renamed from: f  reason: collision with root package name */
    public h f4154f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4156h;

    /* renamed from: i  reason: collision with root package name */
    public long f4157i;

    /* renamed from: j  reason: collision with root package name */
    public int f4158j;

    /* renamed from: k  reason: collision with root package name */
    public int f4159k;

    /* renamed from: l  reason: collision with root package name */
    public int f4160l;

    /* renamed from: m  reason: collision with root package name */
    public long f4161m;
    public boolean n;
    public a o;
    public e p;
    public final u a = new u(4);
    public final u b = new u(9);

    /* renamed from: c  reason: collision with root package name */
    public final u f4151c = new u(11);

    /* renamed from: d  reason: collision with root package name */
    public final u f4152d = new u();

    /* renamed from: e  reason: collision with root package name */
    public final c f4153e = new c();

    /* renamed from: g  reason: collision with root package name */
    public int f4155g = 1;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final void b() {
        if (this.n) {
            return;
        }
        this.f4154f.a(new n.b(-9223372036854775807L, 0L));
        this.n = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0004 A[SYNTHETIC] */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(f.i.a.a.b1.d r17, f.i.a.a.b1.m r18) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 361
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.r.b.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4154f = hVar;
    }

    public final u e(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        int i2 = this.f4160l;
        u uVar = this.f4152d;
        byte[] bArr = uVar.a;
        if (i2 > bArr.length) {
            uVar.a = new byte[Math.max(bArr.length * 2, i2)];
            uVar.f5776c = 0;
            uVar.b = 0;
        } else {
            uVar.A(0);
        }
        this.f4152d.z(this.f4160l);
        dVar.g(this.f4152d.a, 0, this.f4160l, false);
        return this.f4152d;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4155g = 1;
        this.f4156h = false;
        this.f4158j = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        dVar.d(this.a.a, 0, 3, false);
        this.a.A(0);
        if (this.a.r() != q) {
            return false;
        }
        dVar.d(this.a.a, 0, 2, false);
        this.a.A(0);
        if ((this.a.u() & 250) != 0) {
            return false;
        }
        dVar.d(this.a.a, 0, 4, false);
        this.a.A(0);
        int d2 = this.a.d();
        dVar.f4119f = 0;
        dVar.a(d2, false);
        dVar.d(this.a.a, 0, 4, false);
        this.a.A(0);
        return this.a.d() == 0;
    }
}
