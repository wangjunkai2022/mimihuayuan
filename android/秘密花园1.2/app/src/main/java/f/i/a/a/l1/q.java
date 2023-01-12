package f.i.a.a.l1;

import java.util.Arrays;

/* compiled from: DefaultAllocator.java */
/* loaded from: classes.dex */
public final class q implements e {
    public final boolean a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5684c;

    /* renamed from: d  reason: collision with root package name */
    public final d[] f5685d;

    /* renamed from: e  reason: collision with root package name */
    public int f5686e;

    /* renamed from: f  reason: collision with root package name */
    public int f5687f;

    /* renamed from: g  reason: collision with root package name */
    public int f5688g;

    /* renamed from: h  reason: collision with root package name */
    public d[] f5689h;

    public q(boolean z, int i2) {
        c.a.a.b.g.h.m(i2 > 0);
        c.a.a.b.g.h.m(true);
        this.a = z;
        this.b = i2;
        this.f5688g = 0;
        this.f5689h = new d[100];
        this.f5684c = null;
        this.f5685d = new d[1];
    }

    public synchronized void a(d[] dVarArr) {
        if (this.f5688g + dVarArr.length >= this.f5689h.length) {
            this.f5689h = (d[]) Arrays.copyOf(this.f5689h, Math.max(this.f5689h.length * 2, this.f5688g + dVarArr.length));
        }
        for (d dVar : dVarArr) {
            d[] dVarArr2 = this.f5689h;
            int i2 = this.f5688g;
            this.f5688g = i2 + 1;
            dVarArr2[i2] = dVar;
        }
        this.f5687f -= dVarArr.length;
        notifyAll();
    }

    public synchronized void b(int i2) {
        boolean z = i2 < this.f5686e;
        this.f5686e = i2;
        if (z) {
            c();
        }
    }

    public synchronized void c() {
        int i2 = 0;
        int max = Math.max(0, f.i.a.a.m1.h0.i(this.f5686e, this.b) - this.f5687f);
        if (max >= this.f5688g) {
            return;
        }
        if (this.f5684c != null) {
            int i3 = this.f5688g - 1;
            while (i2 <= i3) {
                d dVar = this.f5689h[i2];
                if (dVar.a == this.f5684c) {
                    i2++;
                } else {
                    d dVar2 = this.f5689h[i3];
                    if (dVar2.a != this.f5684c) {
                        i3--;
                    } else {
                        this.f5689h[i2] = dVar2;
                        this.f5689h[i3] = dVar;
                        i3--;
                        i2++;
                    }
                }
            }
            max = Math.max(max, i2);
            if (max >= this.f5688g) {
                return;
            }
        }
        Arrays.fill(this.f5689h, max, this.f5688g, (Object) null);
        this.f5688g = max;
    }
}
