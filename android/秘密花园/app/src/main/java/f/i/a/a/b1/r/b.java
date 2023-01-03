package f.i.a.a.b1.r;

import f.i.a.a.b1.d;
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
    public h f4079f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4081h;

    /* renamed from: i  reason: collision with root package name */
    public long f4082i;

    /* renamed from: j  reason: collision with root package name */
    public int f4083j;

    /* renamed from: k  reason: collision with root package name */
    public int f4084k;

    /* renamed from: l  reason: collision with root package name */
    public int f4085l;

    /* renamed from: m  reason: collision with root package name */
    public long f4086m;
    public boolean n;
    public a o;
    public e p;
    public final u a = new u(4);
    public final u b = new u(9);

    /* renamed from: c  reason: collision with root package name */
    public final u f4076c = new u(11);

    /* renamed from: d  reason: collision with root package name */
    public final u f4077d = new u();

    /* renamed from: e  reason: collision with root package name */
    public final c f4078e = new c();

    /* renamed from: g  reason: collision with root package name */
    public int f4080g = 1;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final void b() {
        if (!this.n) {
            this.f4079f.a(new n.b(-9223372036854775807L, 0));
            this.n = true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x00ad A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0004 A[SYNTHETIC] */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int c(f.i.a.a.b1.d r17, f.i.a.a.b1.m r18) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 361
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.r.b.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4079f = hVar;
    }

    public final u e(d dVar) throws IOException, InterruptedException {
        int i2 = this.f4085l;
        u uVar = this.f4077d;
        byte[] bArr = uVar.a;
        if (i2 > bArr.length) {
            uVar.a = new byte[Math.max(bArr.length * 2, i2)];
            uVar.f5701c = 0;
            uVar.b = 0;
        } else {
            uVar.A(0);
        }
        this.f4077d.z(this.f4085l);
        dVar.g(this.f4077d.a, 0, this.f4085l, false);
        return this.f4077d;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4080g = 1;
        this.f4081h = false;
        this.f4083j = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
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
        dVar.f4044f = 0;
        dVar.a(d2, false);
        dVar.d(this.a.a, 0, 4, false);
        this.a.A(0);
        if (this.a.d() == 0) {
            return true;
        }
        return false;
    }
}
