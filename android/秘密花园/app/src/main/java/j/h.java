package j;

import h.o.c.g;
import java.io.OutputStream;

/* compiled from: Buffer.kt */
/* loaded from: classes.dex */
public final class h extends OutputStream {
    public final /* synthetic */ g a;

    /* JADX WARN: Incorrect args count in method signature: ()V */
    public h(g gVar) {
        this.a = gVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.lang.Object
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
            g.f("data");
            throw null;
        }
    }
}
