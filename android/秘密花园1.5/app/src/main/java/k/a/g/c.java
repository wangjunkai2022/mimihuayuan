package k.a.g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Elements.java */
/* loaded from: classes2.dex */
public class c extends ArrayList<k.a.e.h> {
    public c() {
    }

    @Override // java.util.ArrayList
    public Object clone() {
        c cVar = new c(size());
        Iterator<k.a.e.h> it = iterator();
        while (it.hasNext()) {
            cVar.add(it.next().h());
        }
        return cVar;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder b = k.a.d.a.b();
        Iterator<k.a.e.h> it = iterator();
        while (it.hasNext()) {
            k.a.e.h next = it.next();
            if (b.length() != 0) {
                b.append(com.umeng.commonsdk.internal.utils.g.a);
            }
            b.append(next.r());
        }
        return k.a.d.a.j(b);
    }

    public c(int i2) {
        super(i2);
    }

    public c(List<k.a.e.h> list) {
        super(list);
    }
}
