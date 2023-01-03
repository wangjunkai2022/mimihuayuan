package f.d.a.l;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader.java */
/* loaded from: classes.dex */
public class b implements Closeable {
    public final InputStream a;
    public final Charset b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f3424c;

    /* renamed from: d  reason: collision with root package name */
    public int f3425d;

    /* renamed from: e  reason: collision with root package name */
    public int f3426e;

    /* compiled from: StrictLineReader.java */
    /* loaded from: classes.dex */
    public class a extends ByteArrayOutputStream {
        public a(int i2) {
            super(i2);
        }

        @Override // java.io.ByteArrayOutputStream, java.lang.Object
        public String toString() {
            int i2 = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i2 <= 0 || ((ByteArrayOutputStream) this).buf[i2 + -1] != 13) ? ((ByteArrayOutputStream) this).count : i2 - 1, b.this.b.name());
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        if (charset == null) {
            throw null;
        } else if (charset.equals(c.a)) {
            this.a = inputStream;
            this.b = charset;
            this.f3424c = new byte[8192];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.a) {
            if (this.f3424c != null) {
                this.f3424c = null;
                this.a.close();
            }
        }
    }

    public final void d() throws IOException {
        InputStream inputStream = this.a;
        byte[] bArr = this.f3424c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f3425d = 0;
            this.f3426e = read;
            return;
        }
        throw new EOFException();
    }

    public String e() throws IOException {
        int i2;
        int i3;
        synchronized (this.a) {
            if (this.f3424c != null) {
                if (this.f3425d >= this.f3426e) {
                    d();
                }
                for (int i4 = this.f3425d; i4 != this.f3426e; i4++) {
                    if (this.f3424c[i4] == 10) {
                        if (i4 != this.f3425d) {
                            i3 = i4 - 1;
                            if (this.f3424c[i3] == 13) {
                                String str = new String(this.f3424c, this.f3425d, i3 - this.f3425d, this.b.name());
                                this.f3425d = i4 + 1;
                                return str;
                            }
                        }
                        i3 = i4;
                        String str = new String(this.f3424c, this.f3425d, i3 - this.f3425d, this.b.name());
                        this.f3425d = i4 + 1;
                        return str;
                    }
                }
                a aVar = new a((this.f3426e - this.f3425d) + 80);
                loop1: while (true) {
                    aVar.write(this.f3424c, this.f3425d, this.f3426e - this.f3425d);
                    this.f3426e = -1;
                    d();
                    i2 = this.f3425d;
                    while (i2 != this.f3426e) {
                        if (this.f3424c[i2] == 10) {
                            break loop1;
                        }
                        i2++;
                    }
                }
                if (i2 != this.f3425d) {
                    aVar.write(this.f3424c, this.f3425d, i2 - this.f3425d);
                }
                this.f3425d = i2 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }
}
