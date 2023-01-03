package i;

import h.f;
import h.o.c.g;
import h.s.d;
import i.z;
import j.i;
import j.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* compiled from: MultipartBody.kt */
/* loaded from: classes.dex */
public final class a0 extends g0 {

    /* renamed from: k  reason: collision with root package name */
    public static final byte[] f6360k;
    public final z b;

    /* renamed from: c  reason: collision with root package name */
    public long f6362c;

    /* renamed from: d  reason: collision with root package name */
    public final k f6363d;

    /* renamed from: e  reason: collision with root package name */
    public final z f6364e;

    /* renamed from: f  reason: collision with root package name */
    public final List<c> f6365f;

    /* renamed from: l  reason: collision with root package name */
    public static final b f6361l = new b(null);

    /* renamed from: g  reason: collision with root package name */
    public static final z f6356g = z.a.a("multipart/mixed");

    /* renamed from: h  reason: collision with root package name */
    public static final z f6357h = z.a.a("multipart/form-data");

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f6358i = {(byte) 58, (byte) 32};

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f6359j = {(byte) 13, (byte) 10};

    /* compiled from: MultipartBody.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public final k a;
        public z b;

        /* renamed from: c  reason: collision with root package name */
        public final List<c> f6366c;

        public a() {
            String uuid = UUID.randomUUID().toString();
            g.b(uuid, "UUID.randomUUID().toString()");
            if (uuid != null) {
                this.a = k.f6979e.b(uuid);
                this.b = a0.f6356g;
                this.f6366c = new ArrayList();
                return;
            }
            g.f("boundary");
            throw null;
        }

        public final a a(String str, String str2) {
            if (str2 != null) {
                g0 a = g0.a.a(str2, null);
                StringBuilder o = f.b.a.a.a.o("form-data; name=");
                a0.f6361l.a(o, str);
                String sb = o.toString();
                g.b(sb, "StringBuilder().apply(builderAction).toString()");
                ArrayList arrayList = new ArrayList(20);
                boolean z = false;
                for (int i2 = 0; i2 < 19; i2++) {
                    char charAt = "Content-Disposition".charAt(i2);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), "Content-Disposition").toString());
                    }
                }
                arrayList.add("Content-Disposition");
                arrayList.add(d.y(sb).toString());
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    w wVar = new w((String[]) array, null);
                    if (wVar.b("Content-Type") == null) {
                        if (wVar.b("Content-Length") == null) {
                            z = true;
                        }
                        if (z) {
                            b(new c(wVar, a, null));
                            return this;
                        }
                        throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                throw new f("null cannot be cast to non-null type kotlin.Array<T>");
            }
            g.f("value");
            throw null;
        }

        public final a b(c cVar) {
            if (cVar != null) {
                this.f6366c.add(cVar);
                return this;
            }
            g.f("part");
            throw null;
        }

        public final a0 c() {
            if (!this.f6366c.isEmpty()) {
                return new a0(this.a, this.b, i.m0.b.D(this.f6366c));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final a d(z zVar) {
            if (zVar == null) {
                g.f("type");
                throw null;
            } else if (g.a(zVar.b, "multipart")) {
                this.b = zVar;
                return this;
            } else {
                throw new IllegalArgumentException(("multipart != " + zVar).toString());
            }
        }
    }

    /* compiled from: MultipartBody.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(h.o.c.f fVar) {
        }

        public final void a(StringBuilder sb, String str) {
            sb.append('\"');
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (charAt == '\n') {
                    sb.append("%0A");
                } else if (charAt == '\r') {
                    sb.append("%0D");
                } else if (charAt == '\"') {
                    sb.append("%22");
                } else {
                    sb.append(charAt);
                }
            }
            sb.append('\"');
        }
    }

    /* compiled from: MultipartBody.kt */
    /* loaded from: classes.dex */
    public static final class c {
        public final w a;
        public final g0 b;

        public c(w wVar, g0 g0Var, h.o.c.f fVar) {
            this.a = wVar;
            this.b = g0Var;
        }
    }

    static {
        z.a aVar = z.f6789f;
        z.a aVar2 = z.f6789f;
        z.a.a("multipart/alternative");
        z.a aVar3 = z.f6789f;
        z.a.a("multipart/digest");
        z.a aVar4 = z.f6789f;
        z.a.a("multipart/parallel");
        z.a aVar5 = z.f6789f;
        byte b2 = (byte) 45;
        f6360k = new byte[]{b2, b2};
    }

    public a0(k kVar, z zVar, List<c> list) {
        if (kVar == null) {
            g.f("boundaryByteString");
            throw null;
        } else if (zVar != null) {
            this.f6363d = kVar;
            this.f6364e = zVar;
            this.f6365f = list;
            z.a aVar = z.f6789f;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f6364e);
            sb.append("; boundary=");
            k kVar2 = this.f6363d;
            if (kVar2 != null) {
                sb.append(j.c0.a.r(kVar2));
                this.b = z.a.a(sb.toString());
                this.f6362c = -1;
                return;
            }
            throw null;
        } else {
            g.f("type");
            throw null;
        }
    }

    @Override // i.g0
    public long a() throws IOException {
        long j2 = this.f6362c;
        if (j2 != -1) {
            return j2;
        }
        long f2 = f(null, true);
        this.f6362c = f2;
        return f2;
    }

    @Override // i.g0
    public z b() {
        return this.b;
    }

    @Override // i.g0
    public void e(i iVar) throws IOException {
        if (iVar != null) {
            f(iVar, false);
        } else {
            g.f("sink");
            throw null;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: j.g */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: j.g */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: j.g */
    /* JADX WARN: Multi-variable type inference failed */
    public final long f(i iVar, boolean z) throws IOException {
        j.g gVar;
        if (z) {
            iVar = new j.g();
            gVar = iVar;
        } else {
            gVar = 0;
        }
        int size = this.f6365f.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = this.f6365f.get(i2);
            w wVar = cVar.a;
            g0 g0Var = cVar.b;
            if (iVar != null) {
                iVar.r(f6360k);
                iVar.s(this.f6363d);
                iVar.r(f6359j);
                if (wVar != null) {
                    int size2 = wVar.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        iVar.y(wVar.c(i3)).r(f6358i).y(wVar.f(i3)).r(f6359j);
                    }
                }
                z b2 = g0Var.b();
                if (b2 != null) {
                    iVar.y("Content-Type: ").y(b2.a).r(f6359j);
                }
                long a2 = g0Var.a();
                if (a2 != -1) {
                    iVar.y("Content-Length: ").z(a2).r(f6359j);
                } else if (z) {
                    if (gVar != 0) {
                        gVar.skip(gVar.b);
                        return -1;
                    }
                    g.e();
                    throw null;
                }
                iVar.r(f6359j);
                if (z) {
                    j2 += a2;
                } else {
                    g0Var.e(iVar);
                }
                iVar.r(f6359j);
            } else {
                g.e();
                throw null;
            }
        }
        if (iVar != null) {
            iVar.r(f6360k);
            iVar.s(this.f6363d);
            iVar.r(f6360k);
            iVar.r(f6359j);
            if (!z) {
                return j2;
            }
            if (gVar != 0) {
                long j3 = gVar.b;
                long j4 = j2 + j3;
                gVar.skip(j3);
                return j4;
            }
            g.e();
            throw null;
        }
        g.e();
        throw null;
    }
}
