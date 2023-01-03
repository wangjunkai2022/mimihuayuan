package i.m0.d;

import h.o.c.g;
import i.k0;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: RouteDatabase.kt */
/* loaded from: classes.dex */
public final class j {
    public final Set<k0> a = new LinkedHashSet();

    public final synchronized void a(k0 k0Var) {
        if (k0Var != null) {
            this.a.remove(k0Var);
        } else {
            g.f("route");
            throw null;
        }
    }
}
