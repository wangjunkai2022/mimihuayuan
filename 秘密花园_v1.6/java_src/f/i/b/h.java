package f.i.b;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class h extends z<AtomicLong> {
    public final /* synthetic */ z a;

    public h(z zVar) {
        this.a = zVar;
    }

    @Override // f.i.b.z
    public AtomicLong a(f.i.b.e0.a aVar) throws IOException {
        return new AtomicLong(((Number) this.a.a(aVar)).longValue());
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, AtomicLong atomicLong) throws IOException {
        this.a.b(cVar, Long.valueOf(atomicLong.get()));
    }
}
