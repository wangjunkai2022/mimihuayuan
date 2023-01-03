package f.i.a.a.n1;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.n1.s;

/* compiled from: VideoRendererEventListener.java */
/* loaded from: classes.dex */
public interface s {

    /* compiled from: VideoRendererEventListener.java */
    /* loaded from: classes.dex */
    public static final class a {
        @Nullable
        public final Handler a;
        @Nullable
        public final s b;

        public a(@Nullable Handler handler, @Nullable s sVar) {
            if (sVar == null) {
                handler = null;
            } else if (handler == null) {
                throw null;
            }
            this.a = handler;
            this.b = sVar;
        }

        public /* synthetic */ void a(String str, long j2, long j3) {
            this.b.h(str, j2, j3);
        }

        public void b(f.i.a.a.y0.d dVar) {
            synchronized (dVar) {
            }
            this.b.s(dVar);
        }

        public /* synthetic */ void c(int i2, long j2) {
            this.b.w(i2, j2);
        }

        public /* synthetic */ void d(f.i.a.a.y0.d dVar) {
            this.b.k(dVar);
        }

        public /* synthetic */ void e(b0 b0Var) {
            this.b.j(b0Var);
        }

        public /* synthetic */ void f(Surface surface) {
            this.b.r(surface);
        }

        public /* synthetic */ void g(int i2, int i3, int i4, float f2) {
            this.b.a(i2, i3, i4, f2);
        }

        public void h(final int i2, final int i3, final int i4, final float f2) {
            if (this.b != null) {
                this.a.post(new Runnable() { // from class: f.i.a.a.n1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.g(i2, i3, i4, f2);
                    }
                });
            }
        }
    }

    void a(int i2, int i3, int i4, float f2);

    void h(String str, long j2, long j3);

    void j(b0 b0Var);

    void k(f.i.a.a.y0.d dVar);

    void r(@Nullable Surface surface);

    void s(f.i.a.a.y0.d dVar);

    void w(int i2, long j2);
}
