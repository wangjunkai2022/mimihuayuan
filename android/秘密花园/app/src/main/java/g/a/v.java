package g.a;

import g.a.e0;
import g.a.f1.k;
import g.a.f1.p;
import io.realm.internal.OsObject;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.UncheckedRow;

/* compiled from: ProxyState.java */
/* loaded from: classes.dex */
public final class v<E extends e0> {

    /* renamed from: h  reason: collision with root package name */
    public static b f6304h = new b(null);
    public E a;

    /* renamed from: c  reason: collision with root package name */
    public p f6305c;

    /* renamed from: d  reason: collision with root package name */
    public OsObject f6306d;

    /* renamed from: e  reason: collision with root package name */
    public a f6307e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6308f;
    public boolean b = true;

    /* renamed from: g  reason: collision with root package name */
    public k<OsObject.b> f6309g = new k<>();

    /* compiled from: ProxyState.java */
    /* loaded from: classes.dex */
    public static class b implements k.a<OsObject.b> {
        public b(a aVar) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [g.a.f1.k$b, java.lang.Object] */
        @Override // g.a.f1.k.a
        public void a(OsObject.b bVar, Object obj) {
            ((h0) bVar.b).a((e0) obj, null);
        }
    }

    /* compiled from: ProxyState.java */
    /* loaded from: classes.dex */
    public static class c<T extends e0> implements h0<T> {
        public final a0<T> a;

        public c(a0<T> a0Var) {
            if (a0Var != null) {
                this.a = a0Var;
                return;
            }
            throw new IllegalArgumentException("Listener should not be null");
        }

        @Override // g.a.h0
        public void a(T t, r rVar) {
            this.a.a(t);
        }

        public boolean equals(Object obj) {
            return (obj instanceof c) && this.a == ((c) obj).a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public v(E e2) {
        this.a = e2;
    }

    public final void a() {
        OsSharedRealm osSharedRealm = this.f6307e.f6191d;
        if (osSharedRealm != null && !osSharedRealm.isClosed() && this.f6305c.v() && this.f6306d == null) {
            OsObject osObject = new OsObject(this.f6307e.f6191d, (UncheckedRow) this.f6305c);
            this.f6306d = osObject;
            osObject.setObserverPairs(this.f6309g);
            this.f6309g = null;
        }
    }
}
