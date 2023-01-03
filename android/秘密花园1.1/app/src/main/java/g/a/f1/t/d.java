package g.a.f1.t;

import java.io.File;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

/* compiled from: RealmThreadPoolExecutor.java */
/* loaded from: classes.dex */
public class d extends ThreadPoolExecutor {

    /* renamed from: c  reason: collision with root package name */
    public static final int f6242c;
    public ReentrantLock a;
    public Condition b;

    static {
        int i2 = 0;
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new c(Pattern.compile("cpu[0-9]+")));
            if (listFiles != null) {
                i2 = listFiles.length;
            }
        } catch (SecurityException unused) {
        }
        if (i2 <= 0) {
            i2 = Runtime.getRuntime().availableProcessors();
        }
        f6242c = i2 > 0 ? 1 + (i2 * 2) : 1;
    }

    public d(int i2, int i3) {
        super(i2, i3, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = reentrantLock;
        this.b = reentrantLock.newCondition();
    }

    public Future<?> a(Runnable runnable) {
        return super.submit(new a(runnable));
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.a.lock();
        this.a.unlock();
    }
}
