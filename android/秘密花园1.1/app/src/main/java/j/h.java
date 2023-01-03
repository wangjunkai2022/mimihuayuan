package j;

import java.io.OutputStream;

/* compiled from: Buffer.kt */
/* loaded from: classes.dex */
public final class h extends OutputStream {
    public final /* synthetic */ g a;

    public h(g gVar) {
        this.a = gVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public String toString() {
        return this.a + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        this.a.Q(i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            this.a.O(bArr, i2, i3);
        } else {
            h.o.c.g.f("data");
            throw null;
        }
    }
}
