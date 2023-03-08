package j;

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
            this.a.h();
            try {
                try {
                    long c2 = this.b.c(gVar, j2);
                    this.a.k(true);
                    return c2;
                } catch (IOException e2) {
                    throw this.a.j(e2);
                }
            } catch (Throwable th) {
                this.a.k(false);
                throw th;
            }
        }
        h.o.c.g.f("sink");
        throw null;
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.h();
        try {
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

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("AsyncTimeout.source(");
        o.append(this.b);
        o.append(')');
        return o.toString();
    }
}
