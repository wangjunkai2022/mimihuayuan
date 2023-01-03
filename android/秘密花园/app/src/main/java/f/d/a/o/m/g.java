package f.d.a.o.m;

import androidx.annotation.NonNull;
import f.b.a.a.a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ExifOrientationStream.java */
/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f3479c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f3480d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f3481e;
    public final byte a;
    public int b;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f3479c = bArr;
        int length = bArr.length;
        f3480d = length;
        f3481e = length + 2;
    }

    public g(InputStream inputStream, int i2) {
        super(inputStream);
        if (i2 < -1 || i2 > 8) {
            throw new IllegalArgumentException(a.J("Cannot add invalid orientation: ", i2));
        }
        this.a = (byte) i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2;
        int i3;
        int i4 = this.b;
        if (i4 < 2 || i4 > (i3 = f3481e)) {
            i2 = super.read();
        } else if (i4 == i3) {
            i2 = this.a;
        } else {
            i2 = f3479c[i4 - 2] & 255;
        }
        if (i2 != -1) {
            this.b++;
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        long skip = super.skip(j2);
        if (skip > 0) {
            this.b = (int) (((long) this.b) + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        int i5 = this.b;
        int i6 = f3481e;
        if (i5 > i6) {
            i4 = super.read(bArr, i2, i3);
        } else if (i5 == i6) {
            bArr[i2] = this.a;
            i4 = 1;
        } else if (i5 < 2) {
            i4 = super.read(bArr, i2, 2 - i5);
        } else {
            int min = Math.min(i6 - i5, i3);
            System.arraycopy(f3479c, this.b - 2, bArr, i2, min);
            i4 = min;
        }
        if (i4 > 0) {
            this.b += i4;
        }
        return i4;
    }
}
