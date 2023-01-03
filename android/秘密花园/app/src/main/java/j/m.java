package j;

import h.o.c.g;
import java.io.IOException;

/* compiled from: ForwardingSource.kt */
/* loaded from: classes.dex */
public abstract class m implements a0 {
    public final a0 a;

    public m(a0 a0Var) {
        if (a0Var != null) {
            this.a = a0Var;
        } else {
            g.f("delegate");
            throw null;
        }
    }

    @Override // j.a0
    public long c(g gVar, long j2) throws IOException {
        if (gVar != null) {
            return this.a.c(gVar, j2);
        }
        g.f("sink");
        throw null;
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // j.a0
    public b0 i() {
        return this.a.i();
    }

    @Override // java.lang.Object
    public String toString() {
        return getClass().getSimpleName() + '(' + this.a + ')';
    }
}
