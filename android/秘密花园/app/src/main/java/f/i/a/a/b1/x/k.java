package f.i.a.a.b1.x;

import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import java.util.Arrays;

/* compiled from: H262Reader.java */
/* loaded from: classes.dex */
public final class k implements j {
    public static final double[] q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public String a;
    public p b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4378c;

    /* renamed from: d  reason: collision with root package name */
    public long f4379d;

    /* renamed from: e  reason: collision with root package name */
    public final d0 f4380e;

    /* renamed from: f  reason: collision with root package name */
    public final u f4381f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean[] f4382g = new boolean[4];

    /* renamed from: h  reason: collision with root package name */
    public final a f4383h = new a(128);

    /* renamed from: i  reason: collision with root package name */
    public final q f4384i;

    /* renamed from: j  reason: collision with root package name */
    public long f4385j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4386k;

    /* renamed from: l  reason: collision with root package name */
    public long f4387l;

    /* renamed from: m  reason: collision with root package name */
    public long f4388m;
    public long n;
    public boolean o;
    public boolean p;

    /* compiled from: H262Reader.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final byte[] f4389e = {0, 0, 1};
        public boolean a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f4390c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f4391d;

        public a(int i2) {
            this.f4391d = new byte[i2];
        }

        public void a(byte[] bArr, int i2, int i3) {
            if (this.a) {
                int i4 = i3 - i2;
                byte[] bArr2 = this.f4391d;
                int length = bArr2.length;
                int i5 = this.b;
                if (length < i5 + i4) {
                    this.f4391d = Arrays.copyOf(bArr2, (i5 + i4) * 2);
                }
                System.arraycopy(bArr, i2, this.f4391d, this.b, i4);
                this.b += i4;
            }
        }
    }

    public k(d0 d0Var) {
        this.f4380e = d0Var;
        if (d0Var != null) {
            this.f4384i = new q(178, 128);
            this.f4381f = new u();
            return;
        }
        this.f4384i = null;
        this.f4381f = null;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        s.a(this.f4382g);
        a aVar = this.f4383h;
        aVar.a = false;
        aVar.b = 0;
        aVar.f4390c = 0;
        if (this.f4380e != null) {
            this.f4384i.c();
        }
        this.f4385j = 0;
        this.f4386k = false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00ed  */
    @Override // f.i.a.a.b1.x.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(f.i.a.a.m1.u r30) {
        /*
        // Method dump skipped, instructions count: 529
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.k.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4387l = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(h hVar, c0.d dVar) {
        dVar.a();
        this.a = dVar.b();
        this.b = hVar.q(dVar.c(), 2);
        d0 d0Var = this.f4380e;
        if (d0Var != null) {
            for (int i2 = 0; i2 < d0Var.b.length; i2++) {
                dVar.a();
                p q2 = hVar.q(dVar.c(), 3);
                b0 b0Var = d0Var.a.get(i2);
                String str = b0Var.f4013i;
                boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
                c.a.a.b.g.h.n(z, "Invalid closed caption mime type provided: " + str);
                q2.d(b0.r(dVar.b(), str, null, -1, b0Var.f4007c, b0Var.A, b0Var.B, null, RecyclerView.FOREVER_NS, b0Var.f4015k));
                d0Var.b[i2] = q2;
            }
        }
    }
}
