package j;

import f.b.a.a.a;
import h.o.c.g;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Okio.kt */
/* loaded from: classes.dex */
public final class q implements a0 {
    public final InputStream a;
    public final b0 b;

    public q(InputStream inputStream, b0 b0Var) {
        this.a = inputStream;
        this.b = b0Var;
    }

    @Override // j.a0
    public long c(g gVar, long j2) {
        if (gVar != null) {
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (i2 == 0) {
                return 0;
            }
            if (i2 >= 0) {
                try {
                    this.b.f();
                    v L = gVar.L(1);
                    int read = this.a.read(L.a, L.f6990c, (int) Math.min(j2, (long) (8192 - L.f6990c)));
                    if (read == -1) {
                        return -1;
                    }
                    L.f6990c += read;
                    long j3 = (long) read;
                    gVar.b += j3;
                    return j3;
                } catch (AssertionError e2) {
                    if (b.l(e2)) {
                        throw new IOException(e2);
                    }
                    throw e2;
                }
            } else {
                throw new IllegalArgumentException(a.c("byteCount < 0: ", j2).toString());
            }
        } else {
            g.f("sink");
            throw null;
        }
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }

    @Override // j.a0
    public b0 i() {
        return this.b;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = a.o("source(");
        o.append(this.a);
        o.append(')');
        return o.toString();
    }
}
