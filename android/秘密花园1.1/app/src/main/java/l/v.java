package l;

import androidx.core.app.NotificationCompat;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class v implements f<T> {
    public final /* synthetic */ CancellableContinuation a;

    public v(CancellableContinuation cancellableContinuation) {
        this.a = cancellableContinuation;
    }

    @Override // l.f
    public void a(d<T> dVar, g0<T> g0Var) {
        if (dVar == 0) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (g0Var != 0) {
            this.a.a(g0Var);
        } else {
            h.o.c.g.f("response");
            throw null;
        }
    }

    @Override // l.f
    public void b(d<T> dVar, Throwable th) {
        if (dVar == 0) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (th != null) {
            this.a.a(c.a.a.b.g.h.B(th));
        } else {
            h.o.c.g.f(com.umeng.commonsdk.proguard.e.ar);
            throw null;
        }
    }
}
