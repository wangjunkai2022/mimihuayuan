package f.d.a.o.n;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.u.j.a;
import f.d.a.u.j.d;

/* compiled from: LockedResource.java */
/* loaded from: classes.dex */
public final class v<Z> implements w<Z>, a.d {

    /* renamed from: e  reason: collision with root package name */
    public static final Pools.Pool<v<?>> f3703e = f.d.a.u.j.a.a(20, new a());
    public final f.d.a.u.j.d a = new d.b();
    public w<Z> b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3704c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3705d;

    /* compiled from: LockedResource.java */
    /* loaded from: classes.dex */
    public class a implements a.b<v<?>> {
        @Override // f.d.a.u.j.a.b
        public v<?> a() {
            return new v<>();
        }
    }

    @NonNull
    public static <Z> v<Z> a(w<Z> wVar) {
        v<Z> vVar = (v<Z>) f3703e.acquire();
        c.a.a.b.g.h.s(vVar, "Argument must not be null");
        vVar.f3705d = false;
        vVar.f3704c = true;
        vVar.b = wVar;
        return vVar;
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<Z> b() {
        return this.b.b();
    }

    @Override // f.d.a.u.j.a.d
    @NonNull
    public f.d.a.u.j.d c() {
        return this.a;
    }

    @Override // f.d.a.o.n.w
    public synchronized void d() {
        this.a.a();
        this.f3705d = true;
        if (!this.f3704c) {
            this.b.d();
            this.b = null;
            f3703e.release(this);
        }
    }

    public synchronized void e() {
        this.a.a();
        if (this.f3704c) {
            this.f3704c = false;
            if (this.f3705d) {
                d();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Z get() {
        return this.b.get();
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return this.b.getSize();
    }
}
