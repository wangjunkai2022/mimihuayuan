package l;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* compiled from: Invocation.java */
/* loaded from: classes2.dex */
public final class p {
    public final Method a;
    public final List<?> b;

    public p(Method method, List<?> list) {
        this.a = method;
        this.b = Collections.unmodifiableList(list);
    }

    public String toString() {
        return String.format("%s.%s() %s", this.a.getDeclaringClass().getName(), this.a.getName(), this.b);
    }
}
