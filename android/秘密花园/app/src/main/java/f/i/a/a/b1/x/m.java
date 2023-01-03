package f.i.a.a.b1.x;

import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;

/* compiled from: H265Reader.java */
/* loaded from: classes.dex */
public final class m implements j {
    public final x a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public p f4425c;

    /* renamed from: d  reason: collision with root package name */
    public a f4426d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4427e;

    /* renamed from: l  reason: collision with root package name */
    public long f4434l;

    /* renamed from: m  reason: collision with root package name */
    public long f4435m;

    /* renamed from: f  reason: collision with root package name */
    public final boolean[] f4428f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    public final q f4429g = new q(32, 128);

    /* renamed from: h  reason: collision with root package name */
    public final q f4430h = new q(33, 128);

    /* renamed from: i  reason: collision with root package name */
    public final q f4431i = new q(34, 128);

    /* renamed from: j  reason: collision with root package name */
    public final q f4432j = new q(39, 128);

    /* renamed from: k  reason: collision with root package name */
    public final q f4433k = new q(40, 128);
    public final u n = new u();

    /* compiled from: H265Reader.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final p a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4436c;

        /* renamed from: d  reason: collision with root package name */
        public int f4437d;

        /* renamed from: e  reason: collision with root package name */
        public long f4438e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4439f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f4440g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f4441h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f4442i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f4443j;

        /* renamed from: k  reason: collision with root package name */
        public long f4444k;

        /* renamed from: l  reason: collision with root package name */
        public long f4445l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f4446m;

        public a(p pVar) {
            this.a = pVar;
        }

        public final void a(int i2) {
            boolean z = this.f4446m;
            this.a.c(this.f4445l, z ? 1 : 0, (int) (this.b - this.f4444k), i2, null);
        }
    }

    public m(x xVar) {
        this.a = xVar;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        s.a(this.f4428f);
        this.f4429g.c();
        this.f4430h.c();
        this.f4431i.c();
        this.f4432j.c();
        this.f4433k.c();
        a aVar = this.f4426d;
        aVar.f4439f = false;
        aVar.f4440g = false;
        aVar.f4441h = false;
        aVar.f4442i = false;
        aVar.f4443j = false;
        this.f4434l = 0;
    }

    public final void b(byte[] bArr, int i2, int i3) {
        if (this.f4427e) {
            a aVar = this.f4426d;
            if (aVar.f4439f) {
                int i4 = aVar.f4437d;
                int i5 = (i2 + 2) - i4;
                if (i5 < i3) {
                    aVar.f4440g = (bArr[i5] & 128) != 0;
                    aVar.f4439f = false;
                } else {
                    aVar.f4437d = (i3 - i2) + i4;
                }
            }
        } else {
            this.f4429g.a(bArr, i2, i3);
            this.f4430h.a(bArr, i2, i3);
            this.f4431i.a(bArr, i2, i3);
        }
        this.f4432j.a(bArr, i2, i3);
        this.f4433k.a(bArr, i2, i3);
    }

    /* JADX WARNING: Removed duplicated region for block: B:145:0x02f6  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x031f  */
    /* JADX WARNING: Removed duplicated region for block: B:151:0x0346  */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x0392  */
    @Override // f.i.a.a.b1.x.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(f.i.a.a.m1.u r36) {
        /*
        // Method dump skipped, instructions count: 952
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.m.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4435m = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(h hVar, c0.d dVar) {
        dVar.a();
        this.b = dVar.b();
        p q = hVar.q(dVar.c(), 2);
        this.f4425c = q;
        this.f4426d = new a(q);
        this.a.a(hVar, dVar);
    }
}
