package i;

import i.m0.b;
import i.z;
import java.io.IOException;
import java.nio.charset.Charset;

/* compiled from: RequestBody.kt */
/* loaded from: classes.dex */
public abstract class g0 {
    public static final a a = new a(null);

    /* compiled from: RequestBody.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* compiled from: RequestBody.kt */
        /* renamed from: i.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0105a extends g0 {
            public final /* synthetic */ byte[] b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ z f6515c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ int f6516d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ int f6517e;

            public C0105a(byte[] bArr, z zVar, int i2, int i3) {
                this.b = bArr;
                this.f6515c = zVar;
                this.f6516d = i2;
                this.f6517e = i3;
            }

            @Override // i.g0
            public long a() {
                return this.f6516d;
            }

            @Override // i.g0
            public z b() {
                return this.f6515c;
            }

            @Override // i.g0
            public void e(j.i iVar) {
                if (iVar != null) {
                    iVar.a(this.b, this.f6517e, this.f6516d);
                } else {
                    h.o.c.g.f("sink");
                    throw null;
                }
            }
        }

        public a(h.o.c.f fVar) {
        }

        public final g0 a(String str, z zVar) {
            if (str != null) {
                Charset charset = h.s.a.a;
                if (zVar != null && (charset = z.a(zVar, null, 1)) == null) {
                    charset = h.s.a.a;
                    z.a aVar = z.f6864f;
                    zVar = z.a.b(zVar + "; charset=utf-8");
                }
                byte[] bytes = str.getBytes(charset);
                h.o.c.g.b(bytes, "(this as java.lang.String).getBytes(charset)");
                return b(bytes, zVar, 0, bytes.length);
            }
            h.o.c.g.f("$this$toRequestBody");
            throw null;
        }

        public final g0 b(byte[] bArr, z zVar, int i2, int i3) {
            if (bArr != null) {
                b.e(bArr.length, i2, i3);
                return new C0105a(bArr, zVar, i3, i2);
            }
            h.o.c.g.f("$this$toRequestBody");
            throw null;
        }
    }

    public static final g0 c(String str, z zVar) {
        return a.a(str, zVar);
    }

    public static final g0 d(z zVar, byte[] bArr) {
        int length = bArr.length;
        b.e(bArr.length, 0, length);
        return new a.C0105a(bArr, null, length, 0);
    }

    public long a() throws IOException {
        return -1L;
    }

    public abstract z b();

    public abstract void e(j.i iVar) throws IOException;
}
