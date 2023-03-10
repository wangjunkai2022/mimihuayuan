package i;
/* compiled from: TlsVersion.kt */
/* loaded from: classes.dex */
public enum l0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: h  reason: collision with root package name */
    public static final a f6576h = new a(null);
    public final String a;

    /* compiled from: TlsVersion.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final l0 a(String str) {
            if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != 79201641) {
                    if (hashCode != 79923350) {
                        switch (hashCode) {
                            case -503070503:
                                if (str.equals("TLSv1.1")) {
                                    return l0.TLS_1_1;
                                }
                                break;
                            case -503070502:
                                if (str.equals("TLSv1.2")) {
                                    return l0.TLS_1_2;
                                }
                                break;
                            case -503070501:
                                if (str.equals("TLSv1.3")) {
                                    return l0.TLS_1_3;
                                }
                                break;
                        }
                    } else if (str.equals("TLSv1")) {
                        return l0.TLS_1_0;
                    }
                } else if (str.equals("SSLv3")) {
                    return l0.SSL_3_0;
                }
                throw new IllegalArgumentException(f.b.a.a.a.f("Unexpected TLS version: ", str));
            }
            h.o.c.g.f("javaName");
            throw null;
        }
    }

    l0(String str) {
        this.a = str;
    }
}
