package f.d.a.o.p.c;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: RecyclableBufferedInputStream.java */
/* loaded from: classes.dex */
public class v extends FilterInputStream {
    public volatile byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f3779c;

    /* renamed from: d  reason: collision with root package name */
    public int f3780d;

    /* renamed from: e  reason: collision with root package name */
    public int f3781e;

    /* renamed from: f  reason: collision with root package name */
    public final f.d.a.o.n.b0.b f3782f;

    /* compiled from: RecyclableBufferedInputStream.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public v(@NonNull InputStream inputStream, @NonNull f.d.a.o.n.b0.b bVar) {
        super(inputStream);
        this.f3780d = -1;
        this.f3782f = bVar;
        this.a = (byte[]) bVar.f(65536, byte[].class);
    }

    public static IOException f() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.a != null && inputStream != null) {
        } else {
            f();
            throw null;
        }
        return (this.b - this.f3781e) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.a != null) {
            this.f3782f.e(this.a);
            this.a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public final int d(InputStream inputStream, byte[] bArr) throws IOException {
        int i2 = this.f3780d;
        if (i2 != -1) {
            int i3 = this.f3781e - i2;
            int i4 = this.f3779c;
            if (i3 < i4) {
                if (i2 == 0 && i4 > bArr.length && this.b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i4) {
                        i4 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f3782f.f(i4, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.a = bArr2;
                    this.f3782f.e(bArr);
                    bArr = bArr2;
                } else {
                    int i5 = this.f3780d;
                    if (i5 > 0) {
                        System.arraycopy(bArr, i5, bArr, 0, bArr.length - i5);
                    }
                }
                int i6 = this.f3781e - this.f3780d;
                this.f3781e = i6;
                this.f3780d = 0;
                this.b = 0;
                int read = inputStream.read(bArr, i6, bArr.length - i6);
                int i7 = this.f3781e;
                if (read > 0) {
                    i7 += read;
                }
                this.b = i7;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f3780d = -1;
            this.f3781e = 0;
            this.b = read2;
        }
        return read2;
    }

    public synchronized void e() {
        if (this.a != null) {
            this.f3782f.e(this.a);
            this.a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        this.f3779c = Math.max(this.f3779c, i2);
        this.f3780d = this.f3781e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f3781e < this.b || d(inputStream, bArr) != -1) {
                if (bArr != this.a && (bArr = this.a) == null) {
                    f();
                    throw null;
                }
                if (this.b - this.f3781e > 0) {
                    int i2 = this.f3781e;
                    this.f3781e = i2 + 1;
                    return bArr[i2] & 255;
                }
                return -1;
            }
            return -1;
        }
        f();
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.a != null) {
            if (-1 != this.f3780d) {
                this.f3781e = this.f3780d;
            } else {
                throw new a("Mark has been invalidated, pos: " + this.f3781e + " markLimit: " + this.f3779c);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j2) throws IOException {
        if (j2 < 1) {
            return 0L;
        }
        byte[] bArr = this.a;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                if (this.b - this.f3781e >= j2) {
                    this.f3781e = (int) (this.f3781e + j2);
                    return j2;
                }
                long j3 = this.b - this.f3781e;
                this.f3781e = this.b;
                if (this.f3780d != -1 && j2 <= this.f3779c) {
                    if (d(inputStream, bArr) == -1) {
                        return j3;
                    }
                    if (this.b - this.f3781e >= j2 - j3) {
                        this.f3781e = (int) ((this.f3781e + j2) - j3);
                        return j2;
                    }
                    long j4 = (j3 + this.b) - this.f3781e;
                    this.f3781e = this.b;
                    return j4;
                }
                return j3 + inputStream.skip(j2 - j3);
            }
            f();
            throw null;
        }
        f();
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        int i5;
        byte[] bArr2 = this.a;
        if (bArr2 == null) {
            f();
            throw null;
        } else if (i3 == 0) {
            return 0;
        } else {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                if (this.f3781e < this.b) {
                    int i6 = this.b - this.f3781e >= i3 ? i3 : this.b - this.f3781e;
                    System.arraycopy(bArr2, this.f3781e, bArr, i2, i6);
                    this.f3781e += i6;
                    if (i6 == i3 || inputStream.available() == 0) {
                        return i6;
                    }
                    i2 += i6;
                    i4 = i3 - i6;
                } else {
                    i4 = i3;
                }
                while (true) {
                    if (this.f3780d == -1 && i4 >= bArr2.length) {
                        i5 = inputStream.read(bArr, i2, i4);
                        if (i5 == -1) {
                            return i4 != i3 ? i3 - i4 : -1;
                        }
                    } else if (d(inputStream, bArr2) == -1) {
                        return i4 != i3 ? i3 - i4 : -1;
                    } else {
                        if (bArr2 != this.a && (bArr2 = this.a) == null) {
                            f();
                            throw null;
                        }
                        i5 = this.b - this.f3781e >= i4 ? i4 : this.b - this.f3781e;
                        System.arraycopy(bArr2, this.f3781e, bArr, i2, i5);
                        this.f3781e += i5;
                    }
                    i4 -= i5;
                    if (i4 == 0) {
                        return i3;
                    }
                    if (inputStream.available() == 0) {
                        return i3 - i4;
                    }
                    i2 += i5;
                }
            } else {
                f();
                throw null;
            }
        }
    }
}
