package h;

import h.o.b.a;
import h.o.c.g;
import java.io.Serializable;

/* compiled from: LazyJVM.kt */
/* loaded from: classes.dex */
public final class e<T> implements b<T>, Serializable {
    public a<? extends T> a;
    public volatile Object b = g.a;

    /* renamed from: c  reason: collision with root package name */
    public final Object f6326c = this;

    public e(a aVar, Object obj, int i2) {
        int i3 = i2 & 2;
        this.a = aVar;
    }

    @Override // h.b
    public T getValue() {
        T t;
        T t2 = (T) this.b;
        if (t2 != g.a) {
            return t2;
        }
        synchronized (this.f6326c) {
            t = (T) this.b;
            if (t == g.a) {
                a<? extends T> aVar = this.a;
                if (aVar != null) {
                    t = (T) aVar.a();
                    this.b = t;
                    this.a = null;
                } else {
                    g.e();
                    throw null;
                }
            }
        }
        return t;
    }

    @Override // java.lang.Object
    public String toString() {
        return this.b != g.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
