package j;

import h.o.c.g;

/* compiled from: Okio.kt */
/* loaded from: classes.dex */
public final class f implements y {
    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // j.y, java.io.Flushable
    public void flush() {
    }

    @Override // j.y
    public b0 i() {
        return b0.f6968d;
    }

    @Override // j.y
    public void j(g gVar, long j2) {
        if (gVar != null) {
            gVar.skip(j2);
        } else {
            g.f("source");
            throw null;
        }
    }
}
