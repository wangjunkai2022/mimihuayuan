package h.o.c;

import h.q.a;
import h.q.d;
import h.q.e;

/* compiled from: PropertyReference1.java */
/* loaded from: classes.dex */
public abstract class i extends k implements d {
    @Override // h.q.d
    public d.a c() {
        a a = a();
        if (a != this) {
            return ((d) ((e) a)).c();
        }
        throw new h.o.a();
    }

    @Override // h.o.b.b
    public Object d(Object obj) {
        return get(obj);
    }
}
