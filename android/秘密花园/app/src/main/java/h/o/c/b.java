package h.o.c;

import h.q.e;
import java.io.Serializable;

/* compiled from: CallableReference.java */
/* loaded from: classes.dex */
public abstract class b implements h.q.a, Serializable {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f6330c = a.a;
    public transient h.q.a a;
    public final Object b = f6330c;

    /* compiled from: CallableReference.java */
    /* loaded from: classes.dex */
    public static class a implements Serializable {
        public static final a a = new a();
    }

    public h.q.a a() {
        h.q.a aVar = this.a;
        if (aVar == null) {
            aVar = (i) this;
            if (l.a != null) {
                this.a = aVar;
            } else {
                throw null;
            }
        }
        return aVar;
    }

    @Override // h.q.a
    public Object call(Object... objArr) {
        k kVar = (k) this;
        h.q.a a2 = kVar.a();
        if (a2 != kVar) {
            return ((e) a2).call(objArr);
        }
        throw new h.o.a();
    }
}
