package f.d.a.u.j;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import f.d.a.u.j.d;

/* compiled from: FactoryPools.java */
/* loaded from: classes.dex */
public final class a {
    public static final e<Object> a = new C0055a();

    /* compiled from: FactoryPools.java */
    /* renamed from: f.d.a.u.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0055a implements e<Object> {
        @Override // f.d.a.u.j.a.e
        public void a(@NonNull Object obj) {
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        T a();
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public static final class c<T> implements Pools.Pool<T> {
        public final b<T> a;
        public final e<T> b;

        /* renamed from: c  reason: collision with root package name */
        public final Pools.Pool<T> f3862c;

        public c(@NonNull Pools.Pool<T> pool, @NonNull b<T> bVar, @NonNull e<T> eVar) {
            this.f3862c = pool;
            this.a = bVar;
            this.b = eVar;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f3862c.acquire();
            if (acquire == null) {
                acquire = this.a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    StringBuilder o = f.b.a.a.a.o("Created new ");
                    o.append(acquire.getClass());
                    o.toString();
                }
            }
            if (acquire instanceof d) {
                ((d.b) ((d) acquire).c()).a = false;
            }
            return acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof d) {
                ((d.b) ((d) t).c()).a = true;
            }
            this.b.a(t);
            return this.f3862c.release(t);
        }
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface d {
        @NonNull
        f.d.a.u.j.d c();
    }

    /* compiled from: FactoryPools.java */
    /* loaded from: classes.dex */
    public interface e<T> {
        void a(@NonNull T t);
    }

    @NonNull
    public static <T extends d> Pools.Pool<T> a(int i2, @NonNull b<T> bVar) {
        return new c(new Pools.SynchronizedPool(i2), bVar, a);
    }
}
