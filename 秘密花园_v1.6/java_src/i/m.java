package i;

import i.j;
import i.m0.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
/* compiled from: ConnectionSpec.kt */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: e  reason: collision with root package name */
    public static final j[] f6577e;

    /* renamed from: f  reason: collision with root package name */
    public static final j[] f6578f;

    /* renamed from: g  reason: collision with root package name */
    public static final m f6579g;

    /* renamed from: h  reason: collision with root package name */
    public static final m f6580h;
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f6581c;

    /* renamed from: d  reason: collision with root package name */
    public final String[] f6582d;

    /* compiled from: ConnectionSpec.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public boolean a;
        public String[] b;

        /* renamed from: c  reason: collision with root package name */
        public String[] f6583c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f6584d;

        public a(boolean z) {
            this.a = z;
        }

        public final m a() {
            return new m(this.a, this.f6584d, this.b, this.f6583c);
        }

        public final a b(String... strArr) {
            if (strArr != null) {
                if (this.a) {
                    if (!(strArr.length == 0)) {
                        Object clone = strArr.clone();
                        if (clone != null) {
                            this.b = (String[]) clone;
                            return this;
                        }
                        throw new h.f("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    }
                    throw new IllegalArgumentException("At least one cipher suite is required".toString());
                }
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            h.o.c.g.f("cipherSuites");
            throw null;
        }

        public final a c(j... jVarArr) {
            if (jVarArr != null) {
                if (this.a) {
                    ArrayList arrayList = new ArrayList(jVarArr.length);
                    for (j jVar : jVarArr) {
                        arrayList.add(jVar.a);
                    }
                    Object[] array = arrayList.toArray(new String[0]);
                    if (array != null) {
                        String[] strArr = (String[]) array;
                        b((String[]) Arrays.copyOf(strArr, strArr.length));
                        return this;
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                }
                throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
            }
            h.o.c.g.f("cipherSuites");
            throw null;
        }

        public final a d(boolean z) {
            if (this.a) {
                this.f6584d = z;
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
        }

        public final a e(String... strArr) {
            if (strArr != null) {
                if (this.a) {
                    if (!(strArr.length == 0)) {
                        Object clone = strArr.clone();
                        if (clone != null) {
                            this.f6583c = (String[]) clone;
                            return this;
                        }
                        throw new h.f("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    }
                    throw new IllegalArgumentException("At least one TLS version is required".toString());
                }
                throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
            }
            h.o.c.g.f("tlsVersions");
            throw null;
        }

        public final a f(l0... l0VarArr) {
            if (this.a) {
                ArrayList arrayList = new ArrayList(l0VarArr.length);
                for (l0 l0Var : l0VarArr) {
                    arrayList.add(l0Var.a);
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    e((String[]) Arrays.copyOf(strArr, strArr.length));
                    return this;
                }
                throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        public a(m mVar) {
            if (mVar != null) {
                this.a = mVar.a;
                this.b = mVar.f6581c;
                this.f6583c = mVar.f6582d;
                this.f6584d = mVar.b;
                return;
            }
            h.o.c.g.f("connectionSpec");
            throw null;
        }
    }

    static {
        l0 l0Var = l0.TLS_1_2;
        l0 l0Var2 = l0.TLS_1_3;
        f6577e = new j[]{j.q, j.r, j.s, j.f6564k, j.f6566m, j.f6565l, j.n, j.p, j.o};
        f6578f = new j[]{j.q, j.r, j.s, j.f6564k, j.f6566m, j.f6565l, j.n, j.p, j.o, j.f6562i, j.f6563j, j.f6560g, j.f6561h, j.f6558e, j.f6559f, j.f6557d};
        a aVar = new a(true);
        j[] jVarArr = f6577e;
        aVar.c((j[]) Arrays.copyOf(jVarArr, jVarArr.length));
        aVar.f(l0Var2, l0Var);
        aVar.d(true);
        aVar.a();
        a aVar2 = new a(true);
        j[] jVarArr2 = f6578f;
        aVar2.c((j[]) Arrays.copyOf(jVarArr2, jVarArr2.length));
        aVar2.f(l0Var2, l0Var);
        aVar2.d(true);
        f6579g = aVar2.a();
        a aVar3 = new a(true);
        j[] jVarArr3 = f6578f;
        aVar3.c((j[]) Arrays.copyOf(jVarArr3, jVarArr3.length));
        aVar3.f(l0Var2, l0Var, l0.TLS_1_1, l0.TLS_1_0);
        aVar3.d(true);
        aVar3.a();
        f6580h = new m(false, false, null, null);
    }

    public m(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.a = z;
        this.b = z2;
        this.f6581c = strArr;
        this.f6582d = strArr2;
    }

    public final List<j> a() {
        String[] strArr = this.f6581c;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(j.t.b(str));
            }
            return h.k.g.b(arrayList);
        }
        return null;
    }

    public final boolean b(SSLSocket sSLSocket) {
        if (sSLSocket != null) {
            if (this.a) {
                String[] strArr = this.f6582d;
                if (strArr == null || b.m(strArr, sSLSocket.getEnabledProtocols(), h.l.a.a)) {
                    String[] strArr2 = this.f6581c;
                    if (strArr2 != null) {
                        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
                        j.b bVar = j.t;
                        return b.m(strArr2, enabledCipherSuites, j.b);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        h.o.c.g.f("socket");
        throw null;
    }

    public final List<l0> c() {
        String[] strArr = this.f6582d;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(l0.f6576h.a(str));
            }
            return h.k.g.b(arrayList);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            if (obj == this) {
                return true;
            }
            boolean z = this.a;
            m mVar = (m) obj;
            if (z != mVar.a) {
                return false;
            }
            return !z || (Arrays.equals(this.f6581c, mVar.f6581c) && Arrays.equals(this.f6582d, mVar.f6582d) && this.b == mVar.b);
        }
        return false;
    }

    public int hashCode() {
        if (this.a) {
            String[] strArr = this.f6581c;
            int hashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
            String[] strArr2 = this.f6582d;
            return ((hashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (this.a) {
            StringBuilder r = f.b.a.a.a.r("ConnectionSpec(", "cipherSuites=");
            r.append(Objects.toString(a(), "[all enabled]"));
            r.append(", ");
            r.append("tlsVersions=");
            r.append(Objects.toString(c(), "[all enabled]"));
            r.append(", ");
            r.append("supportsTlsExtensions=");
            r.append(this.b);
            r.append(')');
            return r.toString();
        }
        return "ConnectionSpec()";
    }
}
