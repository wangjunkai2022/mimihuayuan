package f.d.a.o.n.b0;

import f.d.a.o.n.b0.l;
import f.d.a.u.i;
import java.util.Queue;

/* compiled from: BaseKeyPool.java */
/* loaded from: classes.dex */
public abstract class c<T extends l> {
    public final Queue<T> a = i.d(20);

    public abstract T a();

    public T b() {
        T poll = this.a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t) {
        if (this.a.size() < 20) {
            this.a.offer(t);
        }
    }
}
