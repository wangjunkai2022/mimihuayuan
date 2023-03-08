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
    public byte[] f3499c;

    /* renamed from: d  reason: collision with root package name */
    public int f3500d;

    /* renamed from: e  reason: collision with root package name */
    public int f3501e;

    /* compiled from: StrictLineReader.java */
    /* loaded from: classes.dex */
    public class a extends ByteArrayOutputStream {
        public a(int i2) {
            super(i2);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i2 = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i2 <= 0 || ((ByteArrayOutputStream) this).buf[i2 + (-1)] != 13) ? ((ByteArrayOutputStream) this).count : i2 - 1, b.this.b.name());
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        if (charset != null) {
            if (charset.equals(c.a)) {
                this.a = inputStream;
                this.b = charset;
                this.f3499c = new byte[8192];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.a) {
            if (this.f3499c != null) {
                this.f3499c = null;
                this.a.close();
            }
        }
    }

    public final void d() throws IOException {
        InputStream inputStream = this.a;
        byte[] bArr = this.f3499c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f3500d = 0;
            this.f3501e = read;
            return;
        }
        throw new EOFException();
    }

    public String e() throws IOException {
        int i2;
        int i3;
        synchronized (this.a) {
            if (this.f3499c != null) {
                if (this.f3500d >= this.f3501e) {
                    d();
                }
                for (int i4 = this.f3500d; i4 != this.f3501e; i4++) {
                    if (this.f3499c[i4] == 10) {
                        if (i4 != this.f3500d) {
                            i3 = i4 - 1;
                            if (this.f3499c[i3] == 13) {
                                String str = new String(this.f3499c, this.f3500d, i3 - this.f3500d, this.b.name());
                                this.f3500d = i4 + 1;
                                return str;
                            }
                        }
                        i3 = i4;
                        String str2 = new String(this.f3499c, this.f3500d, i3 - this.f3500d, this.b.name());
                        this.f3500d = i4 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f3501e - this.f3500d) + 80);
                loop1: while (true) {
                    aVar.write(this.f3499c, this.f3500d, this.f3501e - this.f3500d);
                    this.f3501e = -1;
                    d();
                    i2 = this.f3500d;
                    while (i2 != this.f3501e) {
                        if (this.f3499c[i2] == 10) {
                            break loop1;
                        }
                        i2++;
                    }
                }
                if (i2 != this.f3500d) {
                    aVar.write(this.f3499c, this.f3500d, i2 - this.f3500d);
                }
                this.f3500d = i2 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }
}
