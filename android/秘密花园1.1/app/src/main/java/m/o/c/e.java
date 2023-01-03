package m.o.c;

import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import m.q.l;

/* compiled from: NewThreadWorker.java */
/* loaded from: classes2.dex */
public final class e implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            Iterator<ScheduledThreadPoolExecutor> it = f.f7291e.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor next = it.next();
                if (!next.isShutdown()) {
                    next.purge();
                } else {
                    it.remove();
                }
            }
        } catch (Throwable th) {
            j.b.B(th);
            l.a(th);
        }
    }
}
