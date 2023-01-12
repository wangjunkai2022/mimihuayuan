package m.s;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import m.k;

/* compiled from: CompositeSubscription.java */
/* loaded from: classes2.dex */
public final class a implements k {
    public Set<k> a;
    public volatile boolean b;

    public static void f(Collection<k> collection) {
        if (collection == null) {
            return;
        }
        ArrayList arrayList = null;
        for (k kVar : collection) {
            try {
                kVar.c();
            } catch (Throwable th) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        j.b.A(arrayList);
    }

    @Override // m.k
    public boolean a() {
        return this.b;
    }

    public void b(k kVar) {
        if (kVar.a()) {
            return;
        }
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    if (this.a == null) {
                        this.a = new HashSet(4);
                    }
                    this.a.add(kVar);
                    return;
                }
            }
        }
        kVar.c();
    }

    @Override // m.k
    public void c() {
        if (this.b) {
            return;
        }
        synchronized (this) {
            if (this.b) {
                return;
            }
            this.b = true;
            Set<k> set = this.a;
            this.a = null;
            f(set);
        }
    }

    public void d() {
        if (this.b) {
            return;
        }
        synchronized (this) {
            if (!this.b && this.a != null) {
                Set<k> set = this.a;
                this.a = null;
                f(set);
            }
        }
    }

    public void e(k kVar) {
        if (this.b) {
            return;
        }
        synchronized (this) {
            if (!this.b && this.a != null) {
                boolean remove = this.a.remove(kVar);
                if (remove) {
                    kVar.c();
                }
            }
        }
    }
}
