package f.i.a.a.l1;

import java.util.Arrays;

/* compiled from: DefaultAllocator.java */
/* loaded from: classes.dex */
public final class q implements e {
    public final boolean a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5609c;

    /* renamed from: d  reason: collision with root package name */
    public final d[] f5610d;

    /* renamed from: e  reason: collision with root package name */
    public int f5611e;

    /* renamed from: f  reason: collision with root package name */
    public int f5612f;

    /* renamed from: g  reason: collision with root package name */
    public int f5613g;

    /* renamed from: h  reason: collision with root package name */
    public d[] f5614h;

    public q(boolean z, int i2) {
        c.a.a.b.g.h.m(i2 > 0);
        c.a.a.b.g.h.m(true);
        this.a = z;
        this.b = i2;
        this.f5613g = 0;
        this.f5614h = new d[100];
        this.f5609c = null;
        this.f5610d = new d[1];
    }

    public synchronized void a(d[] dVarArr) {
        if (this.f5613g + dVarArr.length >= this.f5614h.length) {
            this.f5614h = (d[]) Arrays.copyOf(this.f5614h, Math.max(this.f5614h.length * 2, this.f5613g + dVarArr.length));
        }
        for (d dVar : dVarArr) {
            d[] dVarArr2 = this.f5614h;
            int i2 = this.f5613g;
            this.f5613g = i2 + 1;
            dVarArr2[i2] = dVar;
        }
        this.f5612f -= dVarArr.length;
        notifyAll();
    }

    public synchronized void b(int i2) {
        boolean z = i2 < this.f5611e;
        this.f5611e = i2;
        if (z) {
            c();
        }
    }

    public synchronized void c() {
        int i2 = 0;
        int max = Math.max(0, f.i.a.a.m1.h0.i(this.f5611e, this.b) - this.f5612f);
        if (max >= this.f5613g) {
            return;
        }
        if (this.f5609c != null) {
            int i3 = this.f5613g - 1;
            while (i2 <= i3) {
                d dVar = this.f5614h[i2];
                if (dVar.a == this.f5609c) {
                    i2++;
                } else {
                    d dVar2 = this.f5614h[i3];
                    if (dVar2.a != this.f5609c) {
                        i3--;
                    } else {
                        this.f5614h[i2] = dVar2;
                        this.f5614h[i3] = dVar;
                        i3--;
                        i2++;
                    }
                }
            }
            max = Math.max(max, i2);
            if (max >= this.f5613g) {
                return;
            }
        }
        Arrays.fill(this.f5614h, max, this.f5613g, (Object) null);
        this.f5613g = max;
    }
}
