package h.o.c;

import h.q.d;

/* compiled from: PropertyReference1.java */
/* loaded from: classes.dex */
public abstract class i extends k implements h.q.d {
    @Override // h.q.d
    public d.a c() {
        h.q.a a = a();
        if (a != this) {
            return ((h.q.d) ((h.q.e) a)).c();
        }
        throw new h.o.a();
    }

    @Override // h.o.b.b
    public Object d(Object obj) {
        return get(obj);
    }
}
