package m.r;

import java.util.concurrent.atomic.AtomicReference;
import m.g;
import m.o.c.c;
import m.o.c.d;
import m.o.c.h;
import m.q.o;
/* compiled from: Schedulers.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicReference<a> f7422d = new AtomicReference<>();
    public final g a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public final g f7423c;

    public a() {
        if (o.f7417f.e() != null) {
            this.a = new c(new m.o.d.c("RxComputationScheduler-"));
            this.b = new m.o.c.a(new m.o.d.c("RxIoScheduler-"));
            this.f7423c = new d(new m.o.d.c("RxNewThreadScheduler-"));
            return;
        }
        throw null;
    }

    public static g a() {
        a aVar;
        while (true) {
            aVar = f7422d.get();
            if (aVar != null) {
                break;
            }
            aVar = new a();
            if (f7422d.compareAndSet(null, aVar)) {
                break;
            }
            synchronized (aVar) {
                if (aVar.a instanceof h) {
                    ((h) aVar.a).shutdown();
                }
                if (aVar.b instanceof h) {
                    ((h) aVar.b).shutdown();
                }
                if (aVar.f7423c instanceof h) {
                    ((h) aVar.f7423c).shutdown();
                }
            }
        }
        return aVar.b;
    }
}
