package l;

import androidx.core.app.NotificationCompat;
import c.a.a.b.g.h;
import com.umeng.commonsdk.proguard.e;
import h.o.c.g;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class t implements f<T> {
    public final /* synthetic */ CancellableContinuation a;

    public t(CancellableContinuation cancellableContinuation) {
        this.a = cancellableContinuation;
    }

    @Override // l.f
    public void a(d<T> dVar, g0<T> g0Var) {
        if (dVar == 0) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (g0Var == 0) {
            g.f("response");
            throw null;
        } else if (g0Var.a()) {
            this.a.a(g0Var.b);
        } else {
            this.a.a(h.B(new n(g0Var)));
        }
    }

    @Override // l.f
    public void b(d<T> dVar, Throwable th) {
        if (dVar == 0) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (th != null) {
            this.a.a(h.B(th));
        } else {
            g.f(e.ar);
            throw null;
        }
    }
}
