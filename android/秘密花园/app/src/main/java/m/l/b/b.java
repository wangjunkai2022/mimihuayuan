package m.l.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import m.g;
import m.k;
import m.m.e;
import m.q.o;

/* compiled from: LooperScheduler.java */
/* loaded from: classes2.dex */
public class b extends g {
    public final Handler a;

    /* compiled from: LooperScheduler.java */
    /* loaded from: classes2.dex */
    public static class a extends g.a {
        public final Handler a;
        public final m.l.a.b b = m.l.a.a.b.a();

        /* renamed from: c  reason: collision with root package name */
        public volatile boolean f7230c;

        public a(Handler handler) {
            this.a = handler;
        }

        @Override // m.k
        public boolean a() {
            return this.f7230c;
        }

        @Override // m.g.a
        public k b(m.n.a aVar) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            if (this.f7230c) {
                return m.s.b.a;
            }
            if (this.b != null) {
                RunnableC0118b bVar = new RunnableC0118b(aVar, this.a);
                Message obtain = Message.obtain(this.a, bVar);
                obtain.obj = this;
                this.a.sendMessageDelayed(obtain, timeUnit.toMillis(0));
                if (!this.f7230c) {
                    return bVar;
                }
                this.a.removeCallbacks(bVar);
                return m.s.b.a;
            }
            throw null;
        }

        @Override // m.k
        public void c() {
            this.f7230c = true;
            this.a.removeCallbacksAndMessages(this);
        }
    }

    /* compiled from: LooperScheduler.java */
    /* renamed from: m.l.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class RunnableC0118b implements Runnable, k {
        public final m.n.a a;
        public final Handler b;

        /* renamed from: c  reason: collision with root package name */
        public volatile boolean f7231c;

        public RunnableC0118b(m.n.a aVar, Handler handler) {
            this.a = aVar;
            this.b = handler;
        }

        @Override // m.k
        public boolean a() {
            return this.f7231c;
        }

        @Override // m.k
        public void c() {
            this.f7231c = true;
            this.b.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            IllegalStateException illegalStateException;
            try {
                this.a.call();
            } catch (Throwable th) {
                if (th instanceof e) {
                    illegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th);
                } else {
                    illegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
                }
                if (o.f7333f.b() != null) {
                    Thread currentThread = Thread.currentThread();
                    currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
                    return;
                }
                throw null;
            }
        }
    }

    public b(Looper looper) {
        this.a = new Handler(looper);
    }

    @Override // m.g
    public g.a a() {
        return new a(this.a);
    }
}
