package i.m0.e;

/* compiled from: HttpMethod.kt */
/* loaded from: classes.dex */
public final class f {
    public static final boolean a(String str) {
        if (str != null) {
            return (h.o.c.g.a(str, "GET") || h.o.c.g.a(str, "HEAD")) ? false : true;
        }
        h.o.c.g.f("method");
        throw null;
    }
}
