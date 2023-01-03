package g.a.f1;

import g.a.e0;
import g.a.v;

/* compiled from: RealmObjectProxy.java */
/* loaded from: classes.dex */
public interface n extends e0 {

    /* compiled from: RealmObjectProxy.java */
    /* loaded from: classes.dex */
    public static class a<E extends e0> {
        public int a;
        public final E b;

        public a(int i2, E e2) {
            this.a = i2;
            this.b = e2;
        }
    }

    void realm$injectObjectContext();

    v realmGet$proxyState();
}
