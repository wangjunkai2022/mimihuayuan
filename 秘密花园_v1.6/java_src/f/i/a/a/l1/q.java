package f.i.a.a.l1;

import java.util.Arrays;
/* compiled from: DefaultAllocator.java */
/* loaded from: classes.dex */
public final class q implements e {
    public final boolean a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5693c;

    /* renamed from: d  reason: collision with root package name */
    public final d[] f5694d;

    /* renamed from: e  reason: collision with root package name */
    public int f5695e;

    /* renamed from: f  reason: collision with root package name */
    public int f5696f;

    /* renamed from: g  reason: collision with root package name */
    public int f5697g;

    /* renamed from: h  reason: collision with root package name */
    public d[] f5698h;

    public q(boolean z, int i2) {
        c.a.a.b.g.h.m(i2 > 0);
        c.a.a.b.g.h.m(true);
        this.a = z;
        this.b = i2;
        this.f5697g = 0;
        this.f5698h = new d[100];
        this.f5693c = null;
        this.f5694d = new d[1];
    }

    public synchronized void a(d[] dVarArr) {
        if (this.f5697g + dVarArr.length >= this.f5698h.length) {
            this.f5698h = (d[]) Arrays.copyOf(this.f5698h, Math.max(this.f5698h.length * 2, this.f5697g + dVarArr.length));
        }
        for (d dVar : dVarArr) {
            d[] dVarArr2 = this.f5698h;
            int i2 = this.f5697g;
            this.f5697g = i2 + 1;
            dVarArr2[i2] = dVar;
        }
        this.f5696f -= dVarArr.length;
        notifyAll();
    }

    public synchronized void b(int i2) {
        boolean z = i2 < this.f5695e;
        this.f5695e = i2;
        if (z) {
            c();
        }
    }

    public synchronized void c() {
        int i2 = 0;
        int max = Math.max(0, f.i.a.a.m1.h0.i(this.f5695e, this.b) - this.f5696f);
        if (max >= this.f5697g) {
            return;
        }
        if (this.f5693c != null) {
            int i3 = this.f5697g - 1;
            while (i2 <= i3) {
                d dVar = this.f5698h[i2];
                if (dVar.a == this.f5693c) {
                    i2++;
                } else {
                    d dVar2 = this.f5698h[i3];
                    if (dVar2.a != this.f5693c) {
                        i3--;
                    } else {
                        this.f5698h[i2] = dVar2;
                        this.f5698h[i3] = dVar;
                        i3--;
                        i2++;
                    }
                }
            }
            max = Math.max(max, i2);
            if (max >= this.f5697g) {
                return;
            }
        }
        Arrays.fill(this.f5698h, max, this.f5697g, (Object) null);
        this.f5697g = max;
    }
}
