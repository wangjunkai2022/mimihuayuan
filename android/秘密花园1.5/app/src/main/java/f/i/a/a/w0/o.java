package f.i.a.a.w0;

import android.os.Handler;
import androidx.annotation.Nullable;
import f.i.a.a.w0.o;

/* compiled from: AudioRendererEventListener.java */
/* loaded from: classes.dex */
public interface o {

    /* compiled from: AudioRendererEventListener.java */
    /* loaded from: classes.dex */
    public static final class a {
        @Nullable
        public final Handler a;
        @Nullable
        public final o b;

        public a(@Nullable Handler handler, @Nullable o oVar) {
            if (oVar == null) {
                handler = null;
            } else if (handler == null) {
                throw null;
            }
            this.a = handler;
            this.b = oVar;
        }

        public void a(final f.i.a.a.y0.d dVar) {
            synchronized (dVar) {
            }
            if (this.b != null) {
                this.a.post(new Runnable() { // from class: f.i.a.a.w0.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.a.this.e(dVar);
                    }
                });
            }
        }

        public /* synthetic */ void b(int i2) {
            this.b.c(i2);
        }

        public /* synthetic */ void c(int i2, long j2, long j3) {
            this.b.q(i2, j2, j3);
        }

        public /* synthetic */ void d(String str, long j2, long j3) {
            this.b.t(str, j2, j3);
        }

        public void e(f.i.a.a.y0.d dVar) {
            synchronized (dVar) {
            }
            this.b.d(dVar);
        }

        public /* synthetic */ void f(f.i.a.a.y0.d dVar) {
            this.b.g(dVar);
        }

        public /* synthetic */ void g(f.i.a.a.b0 b0Var) {
            this.b.m(b0Var);
        }
    }

    void c(int i2);

    void d(f.i.a.a.y0.d dVar);

    void g(f.i.a.a.y0.d dVar);

    void m(f.i.a.a.b0 b0Var);

    void q(int i2, long j2, long j3);

    void t(String str, long j2, long j3);
}
