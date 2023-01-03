package j;

import h.o.c.g;
import java.io.IOException;

/* compiled from: ForwardingSink.kt */
/* loaded from: classes.dex */
public abstract class l implements y {
    public final y a;

    public l(y yVar) {
        if (yVar != null) {
            this.a = yVar;
        } else {
            g.f("delegate");
            throw null;
        }
    }

    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // j.y, java.io.Flushable
    public void flush() throws IOException {
        this.a.flush();
    }

    @Override // j.y
    public b0 i() {
        return this.a.i();
    }

    @Override // j.y
    public void j(g gVar, long j2) throws IOException {
        if (gVar != null) {
            this.a.j(gVar, j2);
        } else {
            g.f("source");
            throw null;
        }
    }

    @Override // java.lang.Object
    public String toString() {
        return getClass().getSimpleName() + '(' + this.a + ')';
    }
}
