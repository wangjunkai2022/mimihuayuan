package f.d.a.o.n;

import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.f;

/* compiled from: EngineResource.java */
/* loaded from: classes.dex */
public class q<Z> implements w<Z> {
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final w<Z> f3618c;

    /* renamed from: d  reason: collision with root package name */
    public final a f3619d;

    /* renamed from: e  reason: collision with root package name */
    public final f f3620e;

    /* renamed from: f  reason: collision with root package name */
    public int f3621f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3622g;

    /* compiled from: EngineResource.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(f fVar, q<?> qVar);
    }

    public q(w<Z> wVar, boolean z, boolean z2, f fVar, a aVar) {
        h.s(wVar, "Argument must not be null");
        this.f3618c = wVar;
        this.a = z;
        this.b = z2;
        this.f3620e = fVar;
        h.s(aVar, "Argument must not be null");
        this.f3619d = aVar;
    }

    public synchronized void a() {
        if (!this.f3622g) {
            this.f3621f++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<Z> b() {
        return this.f3618c.b();
    }

    public void c() {
        boolean z;
        synchronized (this) {
            if (this.f3621f > 0) {
                z = true;
                int i2 = this.f3621f - 1;
                this.f3621f = i2;
                if (i2 != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.f3619d.a(this.f3620e, this);
        }
    }

    @Override // f.d.a.o.n.w
    public synchronized void d() {
        if (this.f3621f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (!this.f3622g) {
            this.f3622g = true;
            if (this.b) {
                this.f3618c.d();
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Z get() {
        return this.f3618c.get();
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return this.f3618c.getSize();
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.a + ", listener=" + this.f3619d + ", key=" + this.f3620e + ", acquired=" + this.f3621f + ", isRecycled=" + this.f3622g + ", resource=" + this.f3618c + '}';
    }
}
