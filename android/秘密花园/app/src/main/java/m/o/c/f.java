package m.o.c;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import m.g;
import m.k;
import m.o.c.g;
import m.o.d.a;
import m.o.d.c;
import m.q.l;
import m.s.b;

/* compiled from: NewThreadWorker.java */
/* loaded from: classes2.dex */
public class f extends g.a implements k {

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f7289c;

    /* renamed from: g  reason: collision with root package name */
    public static volatile Object f7293g;
    public final ScheduledExecutorService a;
    public volatile boolean b;

    /* renamed from: h  reason: collision with root package name */
    public static final Object f7294h = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f7291e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    public static final AtomicReference<ScheduledExecutorService> f7292f = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    public static final int f7290d = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();

    static {
        boolean z = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
        int i2 = a.a;
        f7289c = !z && (i2 == 0 || i2 >= 21);
    }

    public f(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!f(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) newScheduledThreadPool;
            while (true) {
                if (f7292f.get() != null) {
                    break;
                }
                ScheduledExecutorService newScheduledThreadPool2 = Executors.newScheduledThreadPool(1, new c("RxSchedulerPurge-"));
                if (f7292f.compareAndSet(null, newScheduledThreadPool2)) {
                    e eVar = new e();
                    long j2 = (long) f7290d;
                    newScheduledThreadPool2.scheduleAtFixedRate(eVar, j2, j2, TimeUnit.MILLISECONDS);
                    break;
                }
                newScheduledThreadPool2.shutdownNow();
            }
            f7291e.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
        }
        this.a = newScheduledThreadPool;
    }

    public static Method d(ScheduledExecutorService scheduledExecutorService) {
        Method[] methods = scheduledExecutorService.getClass().getMethods();
        for (Method method : methods) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    public static boolean f(ScheduledExecutorService scheduledExecutorService) {
        Method method;
        Object obj;
        if (f7289c) {
            if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
                Object obj2 = f7293g;
                if (obj2 == f7294h) {
                    return false;
                }
                if (obj2 == null) {
                    method = d(scheduledExecutorService);
                    if (method != null) {
                        obj = method;
                    } else {
                        obj = f7294h;
                    }
                    f7293g = obj;
                } else {
                    method = (Method) obj2;
                }
            } else {
                method = d(scheduledExecutorService);
            }
            if (method != null) {
                try {
                    method.invoke(scheduledExecutorService, Boolean.TRUE);
                    return true;
                } catch (IllegalAccessException e2) {
                    l.a(e2);
                } catch (IllegalArgumentException e3) {
                    l.a(e3);
                } catch (InvocationTargetException e4) {
                    l.a(e4);
                }
            }
        }
        return false;
    }

    @Override // m.k
    public boolean a() {
        return this.b;
    }

    @Override // m.g.a
    public k b(m.n.a aVar) {
        if (this.b) {
            return b.a;
        }
        return e(aVar, 0, null);
    }

    @Override // m.k
    public void c() {
        this.b = true;
        this.a.shutdownNow();
        f7291e.remove(this.a);
    }

    public g e(m.n.a aVar, long j2, TimeUnit timeUnit) {
        Future<?> future;
        m.n.c<m.n.a, m.n.a> cVar = l.f7329f;
        if (cVar != null) {
            aVar = cVar.a(aVar);
        }
        g gVar = new g(aVar);
        if (j2 <= 0) {
            future = this.a.submit(gVar);
        } else {
            future = this.a.schedule(gVar, j2, timeUnit);
        }
        gVar.a.b(new g.a(future));
        return gVar;
    }
}
