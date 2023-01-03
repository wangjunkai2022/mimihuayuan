package f.i.a.a.l1;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.tencent.smtt.sdk.TbsReaderView;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* compiled from: Loader.java */
/* loaded from: classes.dex */
public final class c0 implements d0 {

    /* renamed from: d  reason: collision with root package name */
    public static final c f5488d = new c(2, -9223372036854775807L, null);

    /* renamed from: e  reason: collision with root package name */
    public static final c f5489e = new c(3, -9223372036854775807L, null);
    public final ExecutorService a;
    public d<? extends e> b;

    /* renamed from: c  reason: collision with root package name */
    public IOException f5490c;

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public interface b<T extends e> {
        void k(T t, long j2, long j3, boolean z);

        c p(T t, long j2, long j3, IOException iOException, int i2);

        void r(T t, long j2, long j3);
    }

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final int a;
        public final long b;

        public c(int i2, long j2, a aVar) {
            this.a = i2;
            this.b = j2;
        }

        public boolean a() {
            int i2 = this.a;
            return i2 == 0 || i2 == 1;
        }
    }

    /* compiled from: Loader.java */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes.dex */
    public final class d<T extends e> extends Handler implements Runnable {
        public final int a;
        public final T b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5491c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public b<T> f5492d;

        /* renamed from: e  reason: collision with root package name */
        public IOException f5493e;

        /* renamed from: f  reason: collision with root package name */
        public int f5494f;

        /* renamed from: g  reason: collision with root package name */
        public volatile Thread f5495g;

        /* renamed from: h  reason: collision with root package name */
        public volatile boolean f5496h;

        /* renamed from: i  reason: collision with root package name */
        public volatile boolean f5497i;

        public d(Looper looper, T t, b<T> bVar, int i2, long j2) {
            super(looper);
            this.b = t;
            this.f5492d = bVar;
            this.a = i2;
            this.f5491c = j2;
        }

        public void a(boolean z) {
            this.f5497i = z;
            this.f5493e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f5496h = true;
                this.b.b();
                if (this.f5495g != null) {
                    this.f5495g.interrupt();
                }
            }
            if (z) {
                c0.this.b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f5492d.k(this.b, elapsedRealtime, elapsedRealtime - this.f5491c, true);
                this.f5492d = null;
            }
        }

        public void b(long j2) {
            c.a.a.b.g.h.v(c0.this.b == null);
            c0 c0Var = c0.this;
            c0Var.b = this;
            if (j2 > 0) {
                sendEmptyMessageDelayed(0, j2);
                return;
            }
            this.f5493e = null;
            c0Var.a.execute(this);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.f5497i) {
                int i2 = message.what;
                if (i2 == 0) {
                    this.f5493e = null;
                    c0 c0Var = c0.this;
                    c0Var.a.execute(c0Var.b);
                } else if (i2 != 4) {
                    c0.this.b = null;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j2 = elapsedRealtime - this.f5491c;
                    if (this.f5496h) {
                        this.f5492d.k(this.b, elapsedRealtime, j2, false);
                        return;
                    }
                    int i3 = message.what;
                    if (i3 == 1) {
                        this.f5492d.k(this.b, elapsedRealtime, j2, false);
                    } else if (i3 == 2) {
                        try {
                            this.f5492d.r(this.b, elapsedRealtime, j2);
                        } catch (RuntimeException e2) {
                            c0.this.f5490c = new h(e2);
                        }
                    } else if (i3 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f5493e = iOException;
                        int i4 = this.f5494f + 1;
                        this.f5494f = i4;
                        c p = this.f5492d.p(this.b, elapsedRealtime, j2, iOException, i4);
                        int i5 = p.a;
                        if (i5 == 3) {
                            c0.this.f5490c = this.f5493e;
                        } else if (i5 != 2) {
                            if (i5 == 1) {
                                this.f5494f = 1;
                            }
                            long j3 = p.b;
                            if (j3 == -9223372036854775807L) {
                                j3 = (long) Math.min((this.f5494f - 1) * 1000, (int) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING);
                            }
                            b(j3);
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        /* JADX INFO: finally extract failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5495g = Thread.currentThread();
                if (!this.f5496h) {
                    c.a.a.b.g.h.g("load:" + this.b.getClass().getSimpleName());
                    try {
                        this.b.a();
                        c.a.a.b.g.h.N();
                    } catch (Throwable th) {
                        c.a.a.b.g.h.N();
                        throw th;
                    }
                }
                if (!this.f5497i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e2) {
                if (!this.f5497i) {
                    obtainMessage(3, e2).sendToTarget();
                }
            } catch (Error e3) {
                if (!this.f5497i) {
                    obtainMessage(4, e3).sendToTarget();
                }
                throw e3;
            } catch (InterruptedException unused) {
                c.a.a.b.g.h.v(this.f5496h);
                if (!this.f5497i) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                if (!this.f5497i) {
                    obtainMessage(3, new h(e4)).sendToTarget();
                }
            } catch (OutOfMemoryError e5) {
                if (!this.f5497i) {
                    obtainMessage(3, new h(e5)).sendToTarget();
                }
            }
        }
    }

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public interface e {
        void a() throws IOException, InterruptedException;

        void b();
    }

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public interface f {
        void h();
    }

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public static final class g implements Runnable {
        public final f a;

        public g(f fVar) {
            this.a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.h();
        }
    }

    /* compiled from: Loader.java */
    /* loaded from: classes.dex */
    public static final class h extends IOException {
        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public h(java.lang.Throwable r3) {
            /*
                r2 = this;
                java.lang.String r0 = "Unexpected "
                java.lang.StringBuilder r0 = f.b.a.a.a.o(r0)
                java.lang.Class r1 = r3.getClass()
                java.lang.String r1 = r1.getSimpleName()
                r0.append(r1)
                java.lang.String r1 = ": "
                r0.append(r1)
                java.lang.String r1 = r3.getMessage()
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r2.<init>(r0, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.c0.h.<init>(java.lang.Throwable):void");
        }
    }

    public c0(String str) {
        this.a = h0.Z(str);
    }

    public static c c(boolean z, long j2) {
        return new c(z ? 1 : 0, j2, null);
    }

    @Override // f.i.a.a.l1.d0
    public void a() throws IOException {
        e(Integer.MIN_VALUE);
    }

    public void b() {
        this.b.a(false);
    }

    public boolean d() {
        return this.b != null;
    }

    public void e(int i2) throws IOException {
        IOException iOException = this.f5490c;
        if (iOException == null) {
            d<? extends e> dVar = this.b;
            if (dVar != null) {
                if (i2 == Integer.MIN_VALUE) {
                    i2 = dVar.a;
                }
                IOException iOException2 = dVar.f5493e;
                if (iOException2 != null && dVar.f5494f > i2) {
                    throw iOException2;
                }
                return;
            }
            return;
        }
        throw iOException;
    }

    public void f(@Nullable f fVar) {
        d<? extends e> dVar = this.b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.a.execute(new g(fVar));
        }
        this.a.shutdown();
    }

    public <T extends e> long g(T t, b<T> bVar, int i2) {
        Looper myLooper = Looper.myLooper();
        c.a.a.b.g.h.v(myLooper != null);
        this.f5490c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d(myLooper, t, bVar, i2, elapsedRealtime).b(0);
        return elapsedRealtime;
    }
}
