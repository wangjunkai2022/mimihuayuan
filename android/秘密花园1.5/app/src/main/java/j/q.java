package j;

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
        if (gVar == null) {
            h.o.c.g.f("sink");
            throw null;
        }
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 == 0) {
            return 0L;
        }
        if (i2 >= 0) {
            try {
                this.b.f();
                v L = gVar.L(1);
                int read = this.a.read(L.a, L.f7065c, (int) Math.min(j2, 8192 - L.f7065c));
                if (read == -1) {
                    return -1L;
                }
                L.f7065c += read;
                long j3 = read;
                gVar.b += j3;
                return j3;
            } catch (AssertionError e2) {
                if (b.l(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }

    @Override // j.a0
    public b0 i() {
        return this.b;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("source(");
        o.append(this.a);
        o.append(')');
        return o.toString();
    }
}
