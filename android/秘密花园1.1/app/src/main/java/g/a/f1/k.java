package g.a.f1;

import g.a.f1.k.b;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ObserverPairList.java */
/* loaded from: classes.dex */
public class k<T extends b> {
    public List<T> a = new CopyOnWriteArrayList();
    public boolean b = false;

    /* compiled from: ObserverPairList.java */
    /* loaded from: classes.dex */
    public interface a<T extends b> {
        void a(T t, Object obj);
    }

    /* compiled from: ObserverPairList.java */
    /* loaded from: classes.dex */
    public static abstract class b<T, S> {
        public final WeakReference<T> a;
        public final S b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f6234c = false;

        public b(T t, S s) {
            this.b = s;
            this.a = new WeakReference<>(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.b.equals(bVar.b) && this.a.get() == bVar.a.get();
            }
            return false;
        }

        public int hashCode() {
            T t = this.a.get();
            int hashCode = (527 + (t != null ? t.hashCode() : 0)) * 31;
            S s = this.b;
            return hashCode + (s != null ? s.hashCode() : 0);
        }
    }

    public void a(T t) {
        if (!this.a.contains(t)) {
            this.a.add(t);
            t.f6234c = false;
        }
        if (this.b) {
            this.b = false;
        }
    }

    public void b(a<T> aVar) {
        for (T t : this.a) {
            if (this.b) {
                return;
            }
            Object obj = t.a.get();
            if (obj == null) {
                this.a.remove(t);
            } else if (!t.f6234c) {
                aVar.a(t, obj);
            }
        }
    }

    public boolean c() {
        return this.a.isEmpty();
    }

    public <S, U> void d(S s, U u) {
        for (T t : this.a) {
            if (s == t.a.get() && u.equals(t.b)) {
                t.f6234c = true;
                this.a.remove(t);
                return;
            }
        }
    }

    public void e(Object obj) {
        for (T t : this.a) {
            Object obj2 = t.a.get();
            if (obj2 == null || obj2 == obj) {
                t.f6234c = true;
                this.a.remove(t);
            }
        }
    }
}
