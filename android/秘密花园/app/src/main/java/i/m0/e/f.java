package i.m0.e;

import h.o.c.g;

/* compiled from: HttpMethod.kt */
/* loaded from: classes.dex */
public final class f {
    public static final boolean a(String str) {
        if (str != null) {
            return !g.a(str, "GET") && !g.a(str, "HEAD");
        }
        g.f("method");
        throw null;
    }
}
