package i;

import h.o.c.f;
import h.o.c.g;
import java.io.IOException;

/* compiled from: Protocol.kt */
/* loaded from: classes.dex */
public enum c0 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    

    /* renamed from: i  reason: collision with root package name */
    public static final a f6395i = new a(null);
    public final String a;

    /* compiled from: Protocol.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }

        public final c0 a(String str) throws IOException {
            c0 c0Var = c0.QUIC;
            c0 c0Var2 = c0.SPDY_3;
            c0 c0Var3 = c0.HTTP_2;
            c0 c0Var4 = c0.H2_PRIOR_KNOWLEDGE;
            c0 c0Var5 = c0.HTTP_1_1;
            c0 c0Var6 = c0.HTTP_1_0;
            if (str == null) {
                g.f("protocol");
                throw null;
            } else if (g.a(str, c0Var6.a)) {
                return c0Var6;
            } else {
                if (g.a(str, c0Var5.a)) {
                    return c0Var5;
                }
                if (g.a(str, c0Var4.a)) {
                    return c0Var4;
                }
                if (g.a(str, c0Var3.a)) {
                    return c0Var3;
                }
                if (g.a(str, c0Var2.a)) {
                    return c0Var2;
                }
                if (g.a(str, c0Var.a)) {
                    return c0Var;
                }
                throw new IOException(f.b.a.a.a.f("Unexpected protocol: ", str));
            }
        }
    }

    c0(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum, java.lang.Object
    public String toString() {
        return this.a;
    }
}
