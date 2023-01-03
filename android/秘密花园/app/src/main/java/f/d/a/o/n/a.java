package f.d.a.o.n;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c.a.a.b.g.h;
import f.d.a.o.f;
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
    public final Map<f, b> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final ReferenceQueue<q<?>> f3494c = new ReferenceQueue<>();

    /* renamed from: d  reason: collision with root package name */
    public q.a f3495d;

    /* compiled from: ActiveResources.java */
    /* renamed from: f.d.a.o.n.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class ThreadFactoryC0028a implements ThreadFactory {

        /* compiled from: ActiveResources.java */
        /* renamed from: f.d.a.o.n.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0029a implements Runnable {
            public final /* synthetic */ Runnable a;

            public RunnableC0029a(ThreadFactoryC0028a aVar, Runnable runnable) {
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
            return new Thread(new RunnableC0029a(this, runnable), "glide-active-resources");
        }
    }

    /* compiled from: ActiveResources.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b extends WeakReference<q<?>> {
        public final f a;
        public final boolean b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public w<?> f3496c;

        public b(@NonNull f fVar, @NonNull q<?> qVar, @NonNull ReferenceQueue<? super q<?>> referenceQueue, boolean z) {
            super(qVar, referenceQueue);
            w<?> wVar;
            h.s(fVar, "Argument must not be null");
            this.a = fVar;
            if (!qVar.a || !z) {
                wVar = null;
            } else {
                wVar = qVar.f3618c;
                h.s(wVar, "Argument must not be null");
            }
            this.f3496c = wVar;
            this.b = qVar.a;
        }
    }

    public a(boolean z) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC0028a());
        this.a = z;
        newSingleThreadExecutor.execute(new b(this));
    }

    public synchronized void a(f fVar, q<?> qVar) {
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
