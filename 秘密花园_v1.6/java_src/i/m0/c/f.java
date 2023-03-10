package i.m0.c;

import h.i;
import h.o.c.g;
import j.l;
import j.y;
import java.io.IOException;
/* compiled from: FaultHidingSink.kt */
/* loaded from: classes.dex */
public class f extends l {
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final h.o.b.b<IOException, i> f6612c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public f(y yVar, h.o.b.b<? super IOException, i> bVar) {
        super(yVar);
        if (yVar != null) {
            this.f6612c = bVar;
            return;
        }
        g.f("delegate");
        throw null;
    }

    @Override // j.l, j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.b) {
            return;
        }
        try {
            super.close();
        } catch (IOException e2) {
            this.b = true;
            this.f6612c.d(e2);
        }
    }

    @Override // j.l, j.y, java.io.Flushable
    public void flush() {
        if (this.b) {
            return;
        }
        try {
            this.a.flush();
        } catch (IOException e2) {
            this.b = true;
            this.f6612c.d(e2);
        }
    }

    @Override // j.l, j.y
    public void j(j.g gVar, long j2) {
        if (gVar != null) {
            if (this.b) {
                gVar.skip(j2);
                return;
            }
            try {
                this.a.j(gVar, j2);
                return;
            } catch (IOException e2) {
                this.b = true;
                this.f6612c.d(e2);
                return;
            }
        }
        g.f("source");
        throw null;
    }
}
