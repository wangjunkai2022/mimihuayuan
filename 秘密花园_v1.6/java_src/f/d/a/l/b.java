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
    public byte[] f3503c;

    /* renamed from: d  reason: collision with root package name */
    public int f3504d;

    /* renamed from: e  reason: collision with root package name */
    public int f3505e;

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
                this.f3503c = new byte[8192];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.a) {
            if (this.f3503c != null) {
                this.f3503c = null;
                this.a.close();
            }
        }
    }

    public final void d() throws IOException {
        InputStream inputStream = this.a;
        byte[] bArr = this.f3503c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f3504d = 0;
            this.f3505e = read;
            return;
        }
        throw new EOFException();
    }

    public String e() throws IOException {
        int i2;
        int i3;
        synchronized (this.a) {
            if (this.f3503c != null) {
                if (this.f3504d >= this.f3505e) {
                    d();
                }
                for (int i4 = this.f3504d; i4 != this.f3505e; i4++) {
                    if (this.f3503c[i4] == 10) {
                        if (i4 != this.f3504d) {
                            i3 = i4 - 1;
                            if (this.f3503c[i3] == 13) {
                                String str = new String(this.f3503c, this.f3504d, i3 - this.f3504d, this.b.name());
                                this.f3504d = i4 + 1;
                                return str;
                            }
                        }
                        i3 = i4;
                        String str2 = new String(this.f3503c, this.f3504d, i3 - this.f3504d, this.b.name());
                        this.f3504d = i4 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f3505e - this.f3504d) + 80);
                loop1: while (true) {
                    aVar.write(this.f3503c, this.f3504d, this.f3505e - this.f3504d);
                    this.f3505e = -1;
                    d();
                    i2 = this.f3504d;
                    while (i2 != this.f3505e) {
                        if (this.f3503c[i2] == 10) {
                            break loop1;
                        }
                        i2++;
                    }
                }
                if (i2 != this.f3504d) {
                    aVar.write(this.f3503c, this.f3504d, i2 - this.f3504d);
                }
                this.f3504d = i2 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }
}
