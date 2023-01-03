package k.a.g;

import com.umeng.commonsdk.internal.utils.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k.a.d.a;
import k.a.e.h;

/* compiled from: Elements.java */
/* loaded from: classes.dex */
public class c extends ArrayList<h> {
    public c() {
    }

    @Override // java.util.ArrayList, java.lang.Object
    public Object clone() {
        c cVar = new c(size());
        Iterator<h> it = iterator();
        while (it.hasNext()) {
            cVar.add(it.next().h());
        }
        return cVar;
    }

    @Override // java.util.AbstractCollection, java.lang.Object
    public String toString() {
        StringBuilder b = a.b();
        Iterator<h> it = iterator();
        while (it.hasNext()) {
            h next = it.next();
            if (b.length() != 0) {
                b.append(g.a);
            }
            b.append(next.r());
        }
        return a.j(b);
    }

    public c(int i2) {
        super(i2);
    }

    public c(List<h> list) {
        super(list);
    }
}
