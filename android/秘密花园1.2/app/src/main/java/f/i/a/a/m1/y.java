package f.i.a.a.m1;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: ReusableBufferedOutputStream.java */
/* loaded from: classes.dex */
public final class y extends BufferedOutputStream {
    public boolean a;

    public y(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a = true;
        try {
            flush();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th == null) {
            return;
        }
        h0.k0(th);
        throw null;
    }

    public void d(OutputStream outputStream) {
        c.a.a.b.g.h.v(this.a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.a = false;
    }

    public y(OutputStream outputStream, int i2) {
        super(outputStream, i2);
    }
}
