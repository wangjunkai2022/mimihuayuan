package f.i.a.a.b1.x;

import f.i.a.a.b1.x.c0;
import java.util.Arrays;

/* compiled from: AdtsReader.java */
/* loaded from: classes.dex */
public final class f implements j {
    public static final byte[] v = {73, 68, 51};
    public final boolean a;
    public final f.i.a.a.m1.t b = new f.i.a.a.m1.t(new byte[7]);

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.u f4354c = new f.i.a.a.m1.u(Arrays.copyOf(v, 10));

    /* renamed from: d  reason: collision with root package name */
    public final String f4355d;

    /* renamed from: e  reason: collision with root package name */
    public String f4356e;

    /* renamed from: f  reason: collision with root package name */
    public f.i.a.a.b1.p f4357f;

    /* renamed from: g  reason: collision with root package name */
    public f.i.a.a.b1.p f4358g;

    /* renamed from: h  reason: collision with root package name */
    public int f4359h;

    /* renamed from: i  reason: collision with root package name */
    public int f4360i;

    /* renamed from: j  reason: collision with root package name */
    public int f4361j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4362k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f4363l;

    /* renamed from: m  reason: collision with root package name */
    public int f4364m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public f.i.a.a.b1.p t;
    public long u;

    public f(boolean z, String str) {
        h();
        this.f4364m = -1;
        this.n = -1;
        this.q = -9223372036854775807L;
        this.a = z;
        this.f4355d = str;
    }

    public static boolean g(int i2) {
        return (i2 & 65526) == 65520;
    }

    @Override // f.i.a.a.b1.x.j
    public void a() {
        this.f4363l = false;
        h();
    }

    public final boolean b(f.i.a.a.m1.u uVar, byte[] bArr, int i2) {
        int min = Math.min(uVar.a(), i2 - this.f4360i);
        System.arraycopy(uVar.a, uVar.b, bArr, this.f4360i, min);
        uVar.b += min;
        int i3 = this.f4360i + min;
        this.f4360i = i3;
        return i3 == i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x020b, code lost:
        if (((r23.a[r7] & 8) >> 3) == r15) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0212 A[EDGE_INSN: B:138:0x0212->B:90:0x0212 ?: BREAK  , SYNTHETIC] */
    @Override // f.i.a.a.b1.x.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(f.i.a.a.m1.u r23) throws f.i.a.a.h0 {
        /*
            Method dump skipped, instructions count: 651
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.f.c(f.i.a.a.m1.u):void");
    }

    @Override // f.i.a.a.b1.x.j
    public void d() {
    }

    @Override // f.i.a.a.b1.x.j
    public void e(long j2, int i2) {
        this.s = j2;
    }

    @Override // f.i.a.a.b1.x.j
    public void f(f.i.a.a.b1.h hVar, c0.d dVar) {
        dVar.a();
        this.f4356e = dVar.b();
        this.f4357f = hVar.q(dVar.c(), 1);
        if (this.a) {
            dVar.a();
            f.i.a.a.b1.p q = hVar.q(dVar.c(), 4);
            this.f4358g = q;
            q.d(f.i.a.a.b0.n(dVar.b(), "application/id3", null, -1, null));
            return;
        }
        this.f4358g = new f.i.a.a.b1.f();
    }

    public final void h() {
        this.f4359h = 0;
        this.f4360i = 0;
        this.f4361j = 256;
    }

    public final boolean i(f.i.a.a.m1.u uVar, byte[] bArr, int i2) {
        if (uVar.a() < i2) {
            return false;
        }
        System.arraycopy(uVar.a, uVar.b, bArr, 0, i2);
        uVar.b += i2;
        return true;
    }
}
