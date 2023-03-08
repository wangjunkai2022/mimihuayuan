package f.d.a.p;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: TargetTracker.java */
/* loaded from: classes.dex */
public final class o implements i {
    public final Set<f.d.a.s.h.h<?>> a = Collections.newSetFromMap(new WeakHashMap());

    @Override // f.d.a.p.i
    public void d() {
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((f.d.a.s.h.h) it.next()).d();
        }
    }

    @Override // f.d.a.p.i
    public void onDestroy() {
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((f.d.a.s.h.h) it.next()).onDestroy();
        }
    }

    @Override // f.d.a.p.i
    public void onStart() {
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((f.d.a.s.h.h) it.next()).onStart();
        }
    }
}
