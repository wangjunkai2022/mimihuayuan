package m.o.d;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: RxThreadFactory.java */
/* loaded from: classes2.dex */
public final class c extends AtomicLong implements ThreadFactory {
    public static final ThreadFactory b = new a();
    public final String a;

    /* compiled from: RxThreadFactory.java */
    /* loaded from: classes2.dex */
    public static class a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            throw new AssertionError("No threads allowed.");
        }
    }

    public c(String str) {
        this.a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.a + incrementAndGet());
        thread.setDaemon(true);
        return thread;
    }
}
