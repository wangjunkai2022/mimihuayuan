package h.m.e.a;

import androidx.core.app.NotificationCompatJellybean;
import c.a.a.b.g.h;
import h.m.c;
import h.m.e.a.e;
import h.o.c.g;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import l.x;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public abstract class a implements h.m.a<Object>, Object {
    public final h.m.a<Object> a;

    public a(h.m.a<Object> aVar) {
        this.a = aVar;
    }

    @Override // h.m.a
    public final void a(Object obj) {
        a aVar = this;
        while (aVar != null) {
            h.m.a<Object> aVar2 = aVar.a;
            if (aVar2 != null) {
                try {
                    x xVar = (x) aVar;
                    xVar.f7213d = obj;
                    xVar.f7214e |= Integer.MIN_VALUE;
                    obj = j.b.z(null, xVar);
                    if (obj == h.m.d.a.COROUTINE_SUSPENDED) {
                        return;
                    }
                } catch (Throwable th) {
                    obj = h.B(th);
                }
                c cVar = (c) aVar;
                h.m.a<?> aVar3 = cVar.b;
                if (aVar3 != null && aVar3 != cVar) {
                    c.a c2 = cVar.getContext().c(h.m.b.a);
                    if (c2 == null) {
                        g.e();
                        throw null;
                    }
                    ((h.m.b) c2).a(aVar3);
                }
                cVar.b = b.a;
                if (aVar2 instanceof a) {
                    aVar = (a) aVar2;
                } else {
                    aVar2.a(obj);
                    return;
                }
            } else {
                g.e();
                throw null;
            }
        }
        g.f("frame");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.StackTraceElement] */
    public String toString() {
        int i2;
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        StringBuilder o = f.b.a.a.a.o("Continuation at ");
        d dVar = (d) getClass().getAnnotation(d.class);
        if (dVar != null) {
            int v = dVar.v();
            if (v <= 1) {
                try {
                    Field declaredField = getClass().getDeclaredField(NotificationCompatJellybean.KEY_LABEL);
                    g.b(declaredField, "field");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this);
                    if (!(obj instanceof Integer)) {
                        obj = null;
                    }
                    Integer num = (Integer) obj;
                    i2 = (num != null ? num.intValue() : 0) - 1;
                } catch (Exception unused) {
                    i2 = -1;
                }
                int i3 = i2 >= 0 ? dVar.l()[i2] : -1;
                e.a aVar = e.b;
                if (aVar == null) {
                    try {
                        e.a aVar2 = new e.a(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                        e.b = aVar2;
                        aVar = aVar2;
                    } catch (Exception unused2) {
                        aVar = e.a;
                        e.b = aVar;
                    }
                }
                if (aVar != e.a && (method = aVar.a) != null && (invoke = method.invoke(getClass(), new Object[0])) != null && (method2 = aVar.b) != null && (invoke2 = method2.invoke(invoke, new Object[0])) != null) {
                    Method method3 = aVar.f6329c;
                    Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
                    r1 = invoke3 instanceof String ? invoke3 : null;
                }
                if (r1 == null) {
                    str = dVar.c();
                } else {
                    str = r1 + '/' + dVar.c();
                }
                r1 = new StackTraceElement(str, dVar.m(), dVar.f(), i3);
            } else {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v + ". Please update the Kotlin standard library.").toString());
            }
        }
        if (r1 == null) {
            r1 = getClass().getName();
        }
        o.append((Object) r1);
        return o.toString();
    }
}
