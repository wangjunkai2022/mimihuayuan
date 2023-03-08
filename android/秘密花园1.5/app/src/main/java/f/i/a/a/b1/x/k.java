package f.i.a.a.b1.x;

import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.x.c0;
import java.util.Arrays;

/* compiled from: H262Reader.java */
/* loaded from: classes.dex */
public final class k implements j {
    public static final double[] q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public String a;
    public f.i.a.a.b1.p b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4453c;

    /* renamed from: d  reason: collision with root package name */
    public long f4454d;

    /* renamed from: e  reason: collision with root package name */
    public final d0 f4455e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.m1.u f4456f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean[] f4457g = new boolean[4];

    /* renamed from: h  reason: collision with root package name */
    public final a f4458h = new a(128);

    /* renamed from: i  reason: collision with root package name */
    public final q f4459i;

    /* renamed from: j  reason: collision with root package name */
    public long f4460j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4461k;

    /* renamed from: l  reason: collision with root package name */
    public long f4462l;

    /* renamed from: m  reason: collision with root package name */
    public long f4463m;
    public long n;
    public boolean o;
    public boolean p;

    /* compiled from: H262Reader.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final byte[] f4464e = {0, 0, 1};
        public boolean a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f4465c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f4466d;

        public a(int i2) {
            this.f4466d = new byte[i2];
        }

        public void a(byte[] bArr, int i2, int i3) {
            if (this.a) {
                int i4 = i3 - i2;
                byte[] bArr2 = this.f4466d;
                int length = bArr2.length;
                int i5 = this.b;
                if (length < i5 + i4) {
                    this.f4466d = Arrays.copyOf(bArr2, (i5 + i4) * 2);
                }
                System.arraycopy(bArr, i2, this.f4466d, this.b, i4);
                this.b += i4;
            }
        }
    }

    public k(d0 d0Var) {
        this.f4455e = d0Var;
        if (d0Var != null) {
            this.f4459i = new q(178, 128);
            this.f4456f = new f.i.a.a.m1.u();
            return;
        }
        this.f4459i = null;
        this.f4456f = null;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        f.i.a.a.m1.s.a(this.f4457g);
        a aVar = this.f4458h;
        aVar.a = false;
        aVar.b = 0;
        aVar.f4465c = 0;
        if (this.f4455e != null) {
            this.f4459i.c();
        }
        this.f4460j = 0L;
        this.f4461k = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ed  */
    @Override // f.i.a.a.b1.x.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(f.i.a.a.m1.u r30) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.k.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.f4462l = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.a = dVar.b();
        this.b = hVar.q(dVar.c(), 2);
        d0 d0Var = this.f4455e;
        if (d0Var != null) {
            for (int i2 = 0; i2 < d0Var.b.length; i2++) {
                dVar.a();
                f.i.a.a.b1.p q2 = hVar.q(dVar.c(), 3);
                f.i.a.a.b0 b0Var = d0Var.a.get(i2);
                String str = b0Var.f4088i;
                boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
                c.a.a.b.g.h.n(z, "Invalid closed caption mime type provided: " + str);
                q2.d(f.i.a.a.b0.r(dVar.b(), str, null, -1, b0Var.f4082c, b0Var.A, b0Var.B, null, RecyclerView.FOREVER_NS, b0Var.f4090k));
                d0Var.b[i2] = q2;
            }
        }
    }
}
