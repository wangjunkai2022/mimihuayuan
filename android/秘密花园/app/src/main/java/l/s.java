package l;

import androidx.core.app.NotificationCompat;
import c.a.a.b.g.h;
import com.umeng.commonsdk.proguard.e;
import h.a;
import h.o.c.g;
import java.lang.reflect.Method;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class s implements f<T> {
    public final /* synthetic */ CancellableContinuation a;

    public s(CancellableContinuation cancellableContinuation) {
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
            Object obj = g0Var.b;
            if (obj == null) {
                Object cast = p.class.cast(dVar.S().f6435f.get(p.class));
                if (cast != null) {
                    g.b(cast, "call.request().tag(Invocation::class.java)!!");
                    Method method = ((p) cast).a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Response from ");
                    g.b(method, "method");
                    Class<?> declaringClass = method.getDeclaringClass();
                    g.b(declaringClass, "method.declaringClass");
                    sb.append(declaringClass.getName());
                    sb.append('.');
                    sb.append(method.getName());
                    sb.append(" was null but response body type was declared as non-null");
                    this.a.a(h.B(new a(sb.toString())));
                    return;
                }
                g.e();
                throw null;
            }
            this.a.a(obj);
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
