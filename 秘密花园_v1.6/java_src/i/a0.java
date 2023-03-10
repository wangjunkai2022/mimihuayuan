package i;

import i.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* compiled from: MultipartBody.kt */
/* loaded from: classes.dex */
public final class a0 extends g0 {

    /* renamed from: g  reason: collision with root package name */
    public static final z f6440g;

    /* renamed from: h  reason: collision with root package name */
    public static final z f6441h;

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f6442i;

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f6443j;

    /* renamed from: k  reason: collision with root package name */
    public static final byte[] f6444k;

    /* renamed from: l  reason: collision with root package name */
    public static final b f6445l = new b(null);
    public final z b;

    /* renamed from: c  reason: collision with root package name */
    public long f6446c;

    /* renamed from: d  reason: collision with root package name */
    public final j.k f6447d;

    /* renamed from: e  reason: collision with root package name */
    public final z f6448e;

    /* renamed from: f  reason: collision with root package name */
    public final List<c> f6449f;

    /* compiled from: MultipartBody.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public final j.k a;
        public z b;

        /* renamed from: c  reason: collision with root package name */
        public final List<c> f6450c;

        public a() {
            String uuid = UUID.randomUUID().toString();
            h.o.c.g.b(uuid, "UUID.randomUUID().toString()");
            if (uuid != null) {
                this.a = j.k.f7063e.b(uuid);
                this.b = a0.f6440g;
                this.f6450c = new ArrayList();
                return;
            }
            h.o.c.g.f("boundary");
            throw null;
        }

        public final a a(String str, String str2) {
            if (str2 != null) {
                g0 a = g0.a.a(str2, null);
                StringBuilder o = f.b.a.a.a.o("form-data; name=");
                a0.f6445l.a(o, str);
                String sb = o.toString();
                h.o.c.g.b(sb, "StringBuilder().apply(builderAction).toString()");
                ArrayList arrayList = new ArrayList(20);
                for (int i2 = 0; i2 < 19; i2++) {
                    char charAt = "Content-Disposition".charAt(i2);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), "Content-Disposition").toString());
                    }
                }
                arrayList.add("Content-Disposition");
                arrayList.add(h.s.d.y(sb).toString());
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    w wVar = new w((String[]) array, null);
                    if (wVar.b("Content-Type") == null) {
                        if (wVar.b("Content-Length") == null) {
                            b(new c(wVar, a, null));
                            return this;
                        }
                        throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
            }
            h.o.c.g.f("value");
            throw null;
        }

        public final a b(c cVar) {
            if (cVar != null) {
                this.f6450c.add(cVar);
                return this;
            }
            h.o.c.g.f("part");
            throw null;
        }

        public final a0 c() {
            if (!this.f6450c.isEmpty()) {
                return new a0(this.a, this.b, i.m0.b.D(this.f6450c));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        public final a d(z zVar) {
            if (zVar != null) {
                if (h.o.c.g.a(zVar.b, "multipart")) {
                    this.b = zVar;
                    return this;
                }
                throw new IllegalArgumentException(("multipart != " + zVar).toString());
            }
            h.o.c.g.f("type");
            throw null;
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
        z.a aVar = z.f6873f;
        f6440g = z.a.a("multipart/mixed");
        z.a aVar2 = z.f6873f;
        z.a.a("multipart/alternative");
        z.a aVar3 = z.f6873f;
        z.a.a("multipart/digest");
        z.a aVar4 = z.f6873f;
        z.a.a("multipart/parallel");
        z.a aVar5 = z.f6873f;
        f6441h = z.a.a("multipart/form-data");
        f6442i = new byte[]{(byte) 58, (byte) 32};
        f6443j = new byte[]{(byte) 13, (byte) 10};
        byte b2 = (byte) 45;
        f6444k = new byte[]{b2, b2};
    }

    public a0(j.k kVar, z zVar, List<c> list) {
        if (kVar == null) {
            h.o.c.g.f("boundaryByteString");
            throw null;
        } else if (zVar != null) {
            this.f6447d = kVar;
            this.f6448e = zVar;
            this.f6449f = list;
            z.a aVar = z.f6873f;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f6448e);
            sb.append("; boundary=");
            j.k kVar2 = this.f6447d;
            if (kVar2 != null) {
                sb.append(j.c0.a.r(kVar2));
                this.b = z.a.a(sb.toString());
                this.f6446c = -1L;
                return;
            }
            throw null;
        } else {
            h.o.c.g.f("type");
            throw null;
        }
    }

    @Override // i.g0
    public long a() throws IOException {
        long j2 = this.f6446c;
        if (j2 == -1) {
            long f2 = f(null, true);
            this.f6446c = f2;
            return f2;
        }
        return j2;
    }

    @Override // i.g0
    public z b() {
        return this.b;
    }

    @Override // i.g0
    public void e(j.i iVar) throws IOException {
        if (iVar != null) {
            f(iVar, false);
        } else {
            h.o.c.g.f("sink");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long f(j.i iVar, boolean z) throws IOException {
        j.g gVar;
        if (z) {
            iVar = new j.g();
            gVar = iVar;
        } else {
            gVar = 0;
        }
        int size = this.f6449f.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = this.f6449f.get(i2);
            w wVar = cVar.a;
            g0 g0Var = cVar.b;
            if (iVar != null) {
                iVar.r(f6444k);
                iVar.s(this.f6447d);
                iVar.r(f6443j);
                if (wVar != null) {
                    int size2 = wVar.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        iVar.y(wVar.c(i3)).r(f6442i).y(wVar.f(i3)).r(f6443j);
                    }
                }
                z b2 = g0Var.b();
                if (b2 != null) {
                    iVar.y("Content-Type: ").y(b2.a).r(f6443j);
                }
                long a2 = g0Var.a();
                if (a2 != -1) {
                    iVar.y("Content-Length: ").z(a2).r(f6443j);
                } else if (z) {
                    if (gVar != 0) {
                        gVar.skip(gVar.b);
                        return -1L;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                iVar.r(f6443j);
                if (z) {
                    j2 += a2;
                } else {
                    g0Var.e(iVar);
                }
                iVar.r(f6443j);
            } else {
                h.o.c.g.e();
                throw null;
            }
        }
        if (iVar != null) {
            iVar.r(f6444k);
            iVar.s(this.f6447d);
            iVar.r(f6444k);
            iVar.r(f6443j);
            if (z) {
                if (gVar != 0) {
                    long j3 = gVar.b;
                    long j4 = j2 + j3;
                    gVar.skip(j3);
                    return j4;
                }
                h.o.c.g.e();
                throw null;
            }
            return j2;
        }
        h.o.c.g.e();
        throw null;
    }
}
