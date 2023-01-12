package i.m0.c;

import j.a0;
import j.b0;
import j.g;
import j.i;
import j.j;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheInterceptor.kt */
/* loaded from: classes.dex */
public final class b implements a0 {
    public boolean a;
    public final /* synthetic */ j b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ c f6580c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f6581d;

    public b(j jVar, c cVar, i iVar) {
        this.b = jVar;
        this.f6580c = cVar;
        this.f6581d = iVar;
    }

    @Override // j.a0
    public long c(g gVar, long j2) throws IOException {
        if (gVar != null) {
            try {
                long c2 = this.b.c(gVar, j2);
                if (c2 == -1) {
                    if (!this.a) {
                        this.a = true;
                        this.f6581d.close();
                    }
                    return -1L;
                }
                gVar.e(this.f6581d.h(), gVar.b - c2, c2);
                this.f6581d.t();
                return c2;
            } catch (IOException e2) {
                if (!this.a) {
                    this.a = true;
                    this.f6580c.b();
                }
                throw e2;
            }
        }
        h.o.c.g.f("sink");
        throw null;
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.a && !i.m0.b.k(this, 100, TimeUnit.MILLISECONDS)) {
            this.a = true;
            this.f6580c.b();
        }
        this.b.close();
    }

    @Override // j.a0
    public b0 i() {
        return this.b.i();
    }
}
