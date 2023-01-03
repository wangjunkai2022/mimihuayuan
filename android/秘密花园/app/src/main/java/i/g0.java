package i;

import h.o.c.f;
import h.o.c.g;
import i.m0.b;
import i.z;
import j.i;
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
        public static final class C0098a extends g0 {
            public final /* synthetic */ byte[] b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ z f6440c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ int f6441d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ int f6442e;

            public C0098a(byte[] bArr, z zVar, int i2, int i3) {
                this.b = bArr;
                this.f6440c = zVar;
                this.f6441d = i2;
                this.f6442e = i3;
            }

            @Override // i.g0
            public long a() {
                return (long) this.f6441d;
            }

            @Override // i.g0
            public z b() {
                return this.f6440c;
            }

            @Override // i.g0
            public void e(i iVar) {
                if (iVar != null) {
                    iVar.a(this.b, this.f6442e, this.f6441d);
                } else {
                    g.f("sink");
                    throw null;
                }
            }
        }

        public a(f fVar) {
        }

        public final g0 a(String str, z zVar) {
            if (str != null) {
                Charset charset = h.s.a.a;
                if (zVar != null && (charset = z.a(zVar, null, 1)) == null) {
                    charset = h.s.a.a;
                    z.a aVar = z.f6789f;
                    zVar = z.a.b(zVar + "; charset=utf-8");
                }
                byte[] bytes = str.getBytes(charset);
                g.b(bytes, "(this as java.lang.String).getBytes(charset)");
                return b(bytes, zVar, 0, bytes.length);
            }
            g.f("$this$toRequestBody");
            throw null;
        }

        public final g0 b(byte[] bArr, z zVar, int i2, int i3) {
            if (bArr != null) {
                b.e((long) bArr.length, (long) i2, (long) i3);
                return new C0098a(bArr, zVar, i3, i2);
            }
            g.f("$this$toRequestBody");
            throw null;
        }
    }

    public static final g0 c(String str, z zVar) {
        return a.a(str, zVar);
    }

    public static final g0 d(z zVar, byte[] bArr) {
        int length = bArr.length;
        b.e((long) bArr.length, (long) 0, (long) length);
        return new a.C0098a(bArr, null, length, 0);
    }

    public long a() throws IOException {
        return -1;
    }

    public abstract z b();

    public abstract void e(i iVar) throws IOException;
}
