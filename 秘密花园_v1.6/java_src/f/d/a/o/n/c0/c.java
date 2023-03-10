package f.d.a.o.n.c0;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: DiskCacheWriteLocker.java */
/* loaded from: classes.dex */
public final class c {
    public final Map<String, a> a = new HashMap();
    public final b b = new b();

    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    public static class a {
        public final Lock a = new ReentrantLock();
        public int b;
    }

    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    public static class b {
        public final Queue<a> a = new ArrayDeque();
    }

    public void a(String str) {
        a aVar;
        synchronized (this) {
            a aVar2 = this.a.get(str);
            c.a.a.b.g.h.s(aVar2, "Argument must not be null");
            aVar = aVar2;
            if (aVar.b >= 1) {
                int i2 = aVar.b - 1;
                aVar.b = i2;
                if (i2 == 0) {
                    a remove = this.a.remove(str);
                    if (remove.equals(aVar)) {
                        b bVar = this.b;
                        synchronized (bVar.a) {
                            if (bVar.a.size() < 10) {
                                bVar.a.offer(remove);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.b);
            }
        }
        aVar.a.unlock();
    }
}
