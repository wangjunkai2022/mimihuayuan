package f.d.a.u;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkEnforcingInputStream.java */
/* loaded from: classes.dex */
public class g extends FilterInputStream {
    public int a = Integer.MIN_VALUE;

    public g(@NonNull InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i2 = this.a;
        if (i2 == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i2, super.available());
    }

    public final long d(long j2) {
        int i2 = this.a;
        if (i2 == 0) {
            return -1;
        }
        return (i2 == Integer.MIN_VALUE || j2 <= ((long) i2)) ? j2 : (long) i2;
    }

    public final void e(long j2) {
        int i2 = this.a;
        if (i2 != Integer.MIN_VALUE && j2 != -1) {
            this.a = (int) (((long) i2) - j2);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        super.mark(i2);
        this.a = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (d(1) == -1) {
            return -1;
        }
        int read = super.read();
        e(1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) throws IOException {
        long d2 = d(j2);
        if (d2 == -1) {
            return 0;
        }
        long skip = super.skip(d2);
        e(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i2, int i3) throws IOException {
        int d2 = (int) d((long) i3);
        if (d2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i2, d2);
        e((long) read);
        return read;
    }
}
