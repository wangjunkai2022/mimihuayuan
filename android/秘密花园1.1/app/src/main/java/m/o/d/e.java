package m.o.d;

import m.g;
import m.o.d.d;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public class e implements m.n.a {
    public final /* synthetic */ m.n.a a;
    public final /* synthetic */ g.a b;

    public e(d.b bVar, m.n.a aVar, g.a aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    @Override // m.n.a
    public void call() {
        try {
            this.a.call();
        } finally {
            this.b.c();
        }
    }
}
