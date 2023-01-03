package i.m0.c;

import h.i;
import h.o.b.b;
import h.o.c.g;
import j.l;
import j.y;
import java.io.IOException;

/* compiled from: FaultHidingSink.kt */
/* loaded from: classes.dex */
public class f extends l {
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final b<IOException, i> f6528c;

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: h.o.b.b<? super java.io.IOException, h.i> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public f(y yVar, b<? super IOException, i> bVar) {
        super(yVar);
        if (yVar != null) {
            this.f6528c = bVar;
            return;
        }
        g.f("delegate");
        throw null;
    }

    @Override // j.l, j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.b) {
            try {
                super.close();
            } catch (IOException e2) {
                this.b = true;
                this.f6528c.d(e2);
            }
        }
    }

    @Override // j.l, j.y, java.io.Flushable
    public void flush() {
        if (!this.b) {
            try {
                this.a.flush();
            } catch (IOException e2) {
                this.b = true;
                this.f6528c.d(e2);
            }
        }
    }

    @Override // j.l, j.y
    public void j(j.g gVar, long j2) {
        if (gVar == null) {
            g.f("source");
            throw null;
        } else if (this.b) {
            gVar.skip(j2);
        } else {
            try {
                this.a.j(gVar, j2);
            } catch (IOException e2) {
                this.b = true;
                this.f6528c.d(e2);
            }
        }
    }
}
