package f.d.a.o.p.c;

import androidx.annotation.NonNull;
import f.d.a.o.n.b0.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: RecyclableBufferedInputStream.java */
/* loaded from: classes.dex */
public class v extends FilterInputStream {
    public volatile byte[] a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f3704c;

    /* renamed from: d  reason: collision with root package name */
    public int f3705d = -1;

    /* renamed from: e  reason: collision with root package name */
    public int f3706e;

    /* renamed from: f  reason: collision with root package name */
    public final b f3707f;

    /* compiled from: RecyclableBufferedInputStream.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public v(@NonNull InputStream inputStream, @NonNull b bVar) {
        super(inputStream);
        this.f3707f = bVar;
        this.a = (byte[]) bVar.f(65536, byte[].class);
    }

    public static IOException f() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.a == null || inputStream == null) {
            f();
            throw null;
        }
        return (this.b - this.f3706e) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() throws IOException {
        if (this.a != null) {
            this.f3707f.e(this.a);
            this.a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public final int d(InputStream inputStream, byte[] bArr) throws IOException {
        int i2;
        int i3 = this.f3705d;
        if (i3 == -1 || this.f3706e - i3 >= (i2 = this.f3704c)) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                this.f3705d = -1;
                this.f3706e = 0;
                this.b = read;
            }
            return read;
        }
        if (i3 == 0 && i2 > bArr.length && this.b == bArr.length) {
            int length = bArr.length * 2;
            if (length <= i2) {
                i2 = length;
            }
            byte[] bArr2 = (byte[]) this.f3707f.f(i2, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.a = bArr2;
            this.f3707f.e(bArr);
            bArr = bArr2;
        } else {
            int i4 = this.f3705d;
            if (i4 > 0) {
                System.arraycopy(bArr, i4, bArr, 0, bArr.length - i4);
            }
        }
        int i5 = this.f3706e - this.f3705d;
        this.f3706e = i5;
        this.f3705d = 0;
        this.b = 0;
        int read2 = inputStream.read(bArr, i5, bArr.length - i5);
        int i6 = this.f3706e;
        if (read2 > 0) {
            i6 += read2;
        }
        this.b = i6;
        return read2;
    }

    public synchronized void e() {
        if (this.a != null) {
            this.f3707f.e(this.a);
            this.a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        this.f3704c = Math.max(this.f3704c, i2);
        this.f3705d = this.f3706e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            f();
            throw null;
        } else if (this.f3706e >= this.b && d(inputStream, bArr) == -1) {
            return -1;
        } else {
            if (bArr != this.a && (bArr = this.a) == null) {
                f();
                throw null;
            }
            if (this.b - this.f3706e <= 0) {
                return -1;
            }
            int i2 = this.f3706e;
            this.f3706e = i2 + 1;
            return bArr[i2] & 255;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.a == null) {
            throw new IOException("Stream is closed");
        } else if (-1 != this.f3705d) {
            this.f3706e = this.f3705d;
        } else {
            throw new a("Mark has been invalidated, pos: " + this.f3706e + " markLimit: " + this.f3704c);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j2) throws IOException {
        if (j2 < 1) {
            return 0;
        }
        byte[] bArr = this.a;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream == null) {
                f();
                throw null;
            } else if (((long) (this.b - this.f3706e)) >= j2) {
                this.f3706e = (int) (((long) this.f3706e) + j2);
                return j2;
            } else {
                long j3 = ((long) this.b) - ((long) this.f3706e);
                this.f3706e = this.b;
                if (this.f3705d == -1 || j2 > ((long) this.f3704c)) {
                    return j3 + inputStream.skip(j2 - j3);
                } else if (d(inputStream, bArr) == -1) {
                    return j3;
                } else {
                    if (((long) (this.b - this.f3706e)) >= j2 - j3) {
                        this.f3706e = (int) ((((long) this.f3706e) + j2) - j3);
                        return j2;
                    }
                    long j4 = (j3 + ((long) this.b)) - ((long) this.f3706e);
                    this.f3706e = this.b;
                    return j4;
                }
            }
        } else {
            f();
            throw null;
        }
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
                if (this.f3706e < this.b) {
                    int i6 = this.b - this.f3706e >= i3 ? i3 : this.b - this.f3706e;
                    System.arraycopy(bArr2, this.f3706e, bArr, i2, i6);
                    this.f3706e += i6;
                    if (i6 == i3 || inputStream.available() == 0) {
                        return i6;
                    }
                    i2 += i6;
                    i4 = i3 - i6;
                } else {
                    i4 = i3;
                }
                while (true) {
                    int i7 = -1;
                    if (this.f3705d == -1 && i4 >= bArr2.length) {
                        i5 = inputStream.read(bArr, i2, i4);
                        if (i5 == -1) {
                            if (i4 != i3) {
                                i7 = i3 - i4;
                            }
                            return i7;
                        }
                    } else if (d(inputStream, bArr2) == -1) {
                        if (i4 != i3) {
                            i7 = i3 - i4;
                        }
                        return i7;
                    } else {
                        if (bArr2 != this.a && (bArr2 = this.a) == null) {
                            f();
                            throw null;
                        }
                        i5 = this.b - this.f3706e >= i4 ? i4 : this.b - this.f3706e;
                        System.arraycopy(bArr2, this.f3706e, bArr, i2, i5);
                        this.f3706e += i5;
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
