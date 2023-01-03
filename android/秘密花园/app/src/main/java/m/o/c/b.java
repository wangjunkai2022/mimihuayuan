package m.o.c;

import m.n.a;
import m.o.c.a;

/* compiled from: CachedThreadScheduler.java */
/* loaded from: classes2.dex */
public class b implements a {
    public final /* synthetic */ a a;
    public final /* synthetic */ a.b b;

    public b(a.b bVar, m.n.a aVar) {
        this.b = bVar;
        this.a = aVar;
    }

    @Override // m.n.a
    public void call() {
        if (!this.b.a.b) {
            this.a.call();
        }
    }
}
