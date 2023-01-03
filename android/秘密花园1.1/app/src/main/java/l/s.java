package l;

import androidx.core.app.NotificationCompat;
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
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (g0Var != 0) {
            if (g0Var.a()) {
                Object obj = g0Var.b;
                if (obj == null) {
                    Object cast = p.class.cast(dVar.S().f6435f.get(p.class));
                    if (cast != null) {
                        h.o.c.g.b(cast, "call.request().tag(Invocation::class.java)!!");
                        Method method = ((p) cast).a;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Response from ");
                        h.o.c.g.b(method, "method");
                        Class<?> declaringClass = method.getDeclaringClass();
                        h.o.c.g.b(declaringClass, "method.declaringClass");
                        sb.append(declaringClass.getName());
                        sb.append('.');
                        sb.append(method.getName());
                        sb.append(" was null but response body type was declared as non-null");
                        this.a.a(c.a.a.b.g.h.B(new h.a(sb.toString())));
                        return;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                this.a.a(obj);
                return;
            }
            this.a.a(c.a.a.b.g.h.B(new n(g0Var)));
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
