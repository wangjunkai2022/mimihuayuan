package f.i.a.a.l1;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DataSourceInputStream.java */
/* loaded from: classes.dex */
public final class o extends InputStream {
    public final m a;
    public final p b;

    /* renamed from: f  reason: collision with root package name */
    public long f5686f;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5684d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f5685e = false;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f5683c = new byte[1];

    public o(m mVar, p pVar) {
        this.a = mVar;
        this.b = pVar;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f5685e) {
            return;
        }
        this.a.close();
        this.f5685e = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f5683c) == -1) {
            return -1;
        }
        return this.f5683c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr, int i2, int i3) throws IOException {
        c.a.a.b.g.h.v(!this.f5685e);
        if (!this.f5684d) {
            this.a.b(this.b);
            this.f5684d = true;
        }
        int read = this.a.read(bArr, i2, i3);
        if (read == -1) {
            return -1;
        }
        this.f5686f += read;
        return read;
    }
}
