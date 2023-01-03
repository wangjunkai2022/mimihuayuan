package f.d.a.o.n;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import f.d.a.o.n.q;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: ActiveResources.java */
/* loaded from: classes.dex */
public final class a {
    public final boolean a;
    @VisibleForTesting
    public final Map<f.d.a.o.f, b> b;

    /* renamed from: c  reason: collision with root package name */
    public final ReferenceQueue<q<?>> f3494c;

    /* renamed from: d  reason: collision with root package name */
    public q.a f3495d;

    /* compiled from: ActiveResources.java */
    /* renamed from: f.d.a.o.n.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class ThreadFactoryC0035a implements ThreadFactory {

        /* compiled from: ActiveResources.java */
        /* renamed from: f.d.a.o.n.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0036a implements Runnable {
            public final /* synthetic */ Runnable a;

            public RunnableC0036a(ThreadFactoryC0035a threadFactoryC0035a, Runnable runnable) {
                this.a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.a.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0036a(this, runnable), "glide-active-resources");
        }
    }

    /* compiled from: ActiveResources.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b extends WeakReference<q<?>> {
        public final f.d.a.o.f a;
        public final boolean b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public w<?> f3496c;

        public b(@NonNull f.d.a.o.f fVar, @NonNull q<?> qVar, @NonNull ReferenceQueue<? super q<?>> referenceQueue, boolean z) {
            super(qVar, referenceQueue);
            w<?> wVar;
            c.a.a.b.g.h.s(fVar, "Argument must not be null");
            this.a = fVar;
            if (qVar.a && z) {
                wVar = qVar.f3618c;
                c.a.a.b.g.h.s(wVar, "Argument must not be null");
            } else {
                wVar = null;
            }
            this.f3496c = wVar;
            this.b = qVar.a;
        }
    }

    public a(boolean z) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0035a());
        this.b = new HashMap();
        this.f3494c = new ReferenceQueue<>();
        this.a = z;
        newSingleThreadExecutor.execute(new f.d.a.o.n.b(this));
    }

    public synchronized void a(f.d.a.o.f fVar, q<?> qVar) {
        b put = this.b.put(fVar, new b(fVar, qVar, this.f3494c, this.a));
        if (put != null) {
            put.f3496c = null;
            put.clear();
        }
    }

    public void b(@NonNull b bVar) {
        synchronized (this) {
            this.b.remove(bVar.a);
            if (bVar.b && bVar.f3496c != null) {
                this.f3495d.a(bVar.a, new q<>(bVar.f3496c, true, false, bVar.a, this.f3495d));
            }
        }
    }
}
