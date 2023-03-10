package f.d.a.u;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ContentLengthInputStream.java */
/* loaded from: classes.dex */
public final class b extends FilterInputStream {
    public final long a;
    public int b;

    public b(@NonNull InputStream inputStream, long j2) {
        super(inputStream);
        this.a = j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.a - this.b, ((FilterInputStream) this).in.available());
    }

    public final int d(int i2) throws IOException {
        if (i2 >= 0) {
            this.b += i2;
        } else if (this.a - this.b > 0) {
            StringBuilder o = f.b.a.a.a.o("Failed to read all expected data, expected: ");
            o.append(this.a);
            o.append(", but read: ");
            o.append(this.b);
            throw new IOException(o.toString());
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        d(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i3) throws IOException {
        int read;
        read = super.read(bArr, i2, i3);
        d(read);
        return read;
    }
}
