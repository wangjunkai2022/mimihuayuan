package m.o.d;

import m.g;
import m.n.a;
import m.o.d.d;

/* compiled from: ScalarSynchronousObservable.java */
/* loaded from: classes2.dex */
public class e implements a {
    public final /* synthetic */ a a;
    public final /* synthetic */ g.a b;

    public e(d.b bVar, a aVar, g.a aVar2) {
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
