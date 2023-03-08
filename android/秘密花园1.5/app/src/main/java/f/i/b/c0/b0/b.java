package f.i.b.c0.b0;

import f.i.b.c0.p;
import java.lang.reflect.AccessibleObject;

/* compiled from: ReflectionAccessor.java */
/* loaded from: classes.dex */
public abstract class b {
    public static final b a;

    static {
        a = p.a < 9 ? new a() : new c();
    }

    public abstract void a(AccessibleObject accessibleObject);
}
