package f.d.a.u;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* compiled from: ExceptionCatchingInputStream.java */
/* loaded from: classes.dex */
public class c extends InputStream {

    /* renamed from: c  reason: collision with root package name */
    public static final Queue<c> f3863c = i.d(0);
    public InputStream a;
    public IOException b;

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    public void d() {
        this.b = null;
        this.a = null;
        synchronized (f3863c) {
            f3863c.offer(this);
        }
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.a.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.a.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.a.read(bArr);
        } catch (IOException e2) {
            this.b = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j2) {
        try {
            return this.a.skip(j2);
        } catch (IOException e2) {
            this.b = e2;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        try {
            return this.a.read(bArr, i2, i3);
        } catch (IOException e2) {
            this.b = e2;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.a.read();
        } catch (IOException e2) {
            this.b = e2;
            return -1;
        }
    }
}
