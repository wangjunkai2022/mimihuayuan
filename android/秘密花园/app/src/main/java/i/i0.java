package i;

import androidx.appcompat.widget.ActivityChooserView;
import c.a.a.b.g.h;
import h.o.c.f;
import h.o.c.g;
import i.z;
import j.j;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* compiled from: ResponseBody.kt */
/* loaded from: classes.dex */
public abstract class i0 implements Closeable {
    public static final b b = new b(null);
    public Reader a;

    /* compiled from: ResponseBody.kt */
    /* loaded from: classes.dex */
    public static final class a extends Reader {
        public boolean a;
        public Reader b;

        /* renamed from: c  reason: collision with root package name */
        public final j f6470c;

        /* renamed from: d  reason: collision with root package name */
        public final Charset f6471d;

        public a(j jVar, Charset charset) {
            if (jVar == null) {
                g.f("source");
                throw null;
            } else if (charset != null) {
                this.f6470c = jVar;
                this.f6471d = charset;
            } else {
                g.f("charset");
                throw null;
            }
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.a = true;
            Reader reader = this.b;
            if (reader != null) {
                reader.close();
            } else {
                this.f6470c.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i3) throws IOException {
            if (cArr == null) {
                g.f("cbuf");
                throw null;
            } else if (!this.a) {
                Reader reader = this.b;
                if (reader == null) {
                    reader = new InputStreamReader(this.f6470c.C(), i.m0.b.x(this.f6470c, this.f6471d));
                    this.b = reader;
                }
                return reader.read(cArr, i2, i3);
            } else {
                throw new IOException("Stream closed");
            }
        }
    }

    /* compiled from: ResponseBody.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(f fVar) {
        }
    }

    public static final i0 F(String str, z zVar) {
        if (str != null) {
            Charset charset = h.s.a.a;
            if (zVar != null && (charset = z.a(zVar, null, 1)) == null) {
                charset = h.s.a.a;
                z.a aVar = z.f6789f;
                zVar = z.a.b(zVar + "; charset=utf-8");
            }
            j.g gVar = new j.g();
            if (charset != null) {
                gVar.b0(str, 0, str.length(), charset);
                return new j0(gVar, zVar, gVar.b);
            }
            g.f("charset");
            throw null;
        }
        g.f("$this$toResponseBody");
        throw null;
    }

    public abstract z E();

    public abstract j G();

    public final String H() throws IOException {
        j G = G();
        try {
            th = null;
            return G.B(i.m0.b.x(G, f()));
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        i.m0.b.f(G());
    }

    public final InputStream d() {
        return G().C();
    }

    /* JADX INFO: finally extract failed */
    public final byte[] e() throws IOException {
        long g2 = g();
        if (g2 <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            j G = G();
            try {
                byte[] o = G.o();
                h.z(G, null);
                int length = o.length;
                if (g2 == -1 || g2 == ((long) length)) {
                    return o;
                }
                throw new IOException("Content-Length (" + g2 + ") and stream length (" + length + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            throw new IOException(f.b.a.a.a.c("Cannot buffer entire body for content length: ", g2));
        }
    }

    public final Charset f() {
        z E = E();
        if (E != null) {
            Charset charset = h.s.a.a;
            try {
                if (E.f6790c != null) {
                    charset = Charset.forName(E.f6790c);
                }
            } catch (IllegalArgumentException unused) {
            }
            if (charset != null) {
                return charset;
            }
        }
        return h.s.a.a;
    }

    public abstract long g();
}
