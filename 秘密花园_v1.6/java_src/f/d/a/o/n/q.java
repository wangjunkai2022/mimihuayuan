package f.d.a.o.n;

import androidx.annotation.NonNull;
/* compiled from: EngineResource.java */
/* loaded from: classes.dex */
public class q<Z> implements w<Z> {
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final w<Z> f3697c;

    /* renamed from: d  reason: collision with root package name */
    public final a f3698d;

    /* renamed from: e  reason: collision with root package name */
    public final f.d.a.o.f f3699e;

    /* renamed from: f  reason: collision with root package name */
    public int f3700f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3701g;

    /* compiled from: EngineResource.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(f.d.a.o.f fVar, q<?> qVar);
    }

    public q(w<Z> wVar, boolean z, boolean z2, f.d.a.o.f fVar, a aVar) {
        c.a.a.b.g.h.s(wVar, "Argument must not be null");
        this.f3697c = wVar;
        this.a = z;
        this.b = z2;
        this.f3699e = fVar;
        c.a.a.b.g.h.s(aVar, "Argument must not be null");
        this.f3698d = aVar;
    }

    public synchronized void a() {
        if (!this.f3701g) {
            this.f3700f++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<Z> b() {
        return this.f3697c.b();
    }

    public void c() {
        boolean z;
        synchronized (this) {
            if (this.f3700f > 0) {
                z = true;
                int i2 = this.f3700f - 1;
                this.f3700f = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.f3698d.a(this.f3699e, this);
        }
    }

    @Override // f.d.a.o.n.w
    public synchronized void d() {
        if (this.f3700f <= 0) {
            if (!this.f3701g) {
                this.f3701g = true;
                if (this.b) {
                    this.f3697c.d();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Z get() {
        return this.f3697c.get();
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return this.f3697c.getSize();
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.a + ", listener=" + this.f3698d + ", key=" + this.f3699e + ", acquired=" + this.f3700f + ", isRecycled=" + this.f3701g + ", resource=" + this.f3697c + '}';
    }
}
