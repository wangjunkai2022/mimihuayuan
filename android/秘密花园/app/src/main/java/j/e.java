package j;

import f.b.a.a.a;
import h.o.c.g;
import java.io.IOException;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes.dex */
public final class e implements a0 {
    public final /* synthetic */ c a;
    public final /* synthetic */ a0 b;

    public e(c cVar, a0 a0Var) {
        this.a = cVar;
        this.b = a0Var;
    }

    @Override // j.a0
    public long c(g gVar, long j2) {
        if (gVar != null) {
            boolean z = false;
            this.a.h();
            try {
                try {
                    z = true;
                    return this.b.c(gVar, j2);
                } catch (IOException e2) {
                    throw this.a.j(e2);
                }
            } finally {
                this.a.k(z);
            }
        } else {
            g.f("sink");
            throw null;
        }
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.a.h();
            try {
                this.b.close();
                this.a.k(true);
            } catch (IOException e2) {
                throw this.a.j(e2);
            }
        } catch (Throwable th) {
            this.a.k(false);
            throw th;
        }
    }

    @Override // j.a0
    public b0 i() {
        return this.a;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = a.o("AsyncTimeout.source(");
        o.append(this.b);
        o.append(')');
        return o.toString();
    }
}
