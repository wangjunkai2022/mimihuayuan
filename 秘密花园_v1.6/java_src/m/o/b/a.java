package m.o.b;

import j.b;
import java.util.concurrent.atomic.AtomicBoolean;
import m.f;
import m.j;
/* compiled from: SingleProducer.java */
/* loaded from: classes2.dex */
public final class a<T> extends AtomicBoolean implements f {
    public final j<? super T> a;
    public final T b;

    public a(j<? super T> jVar, T t) {
        this.a = jVar;
        this.b = t;
    }

    @Override // m.f
    public void b(long j2) {
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 >= 0) {
            if (i2 != 0 && compareAndSet(false, true)) {
                j<? super T> jVar = this.a;
                if (jVar.a.b) {
                    return;
                }
                Object obj = (T) this.b;
                try {
                    jVar.f(obj);
                    if (jVar.a.b) {
                        return;
                    }
                    jVar.d();
                    return;
                } catch (Throwable th) {
                    b.C(th, jVar, obj);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("n >= 0 required");
    }
}
