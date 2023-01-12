package m.o.c;

import m.o.c.a;

/* compiled from: CachedThreadScheduler.java */
/* loaded from: classes2.dex */
public class b implements m.n.a {
    public final /* synthetic */ m.n.a a;
    public final /* synthetic */ a.b b;

    public b(a.b bVar, m.n.a aVar) {
        this.b = bVar;
        this.a = aVar;
    }

    @Override // m.n.a
    public void call() {
        if (this.b.a.b) {
            return;
        }
        this.a.call();
    }
}
