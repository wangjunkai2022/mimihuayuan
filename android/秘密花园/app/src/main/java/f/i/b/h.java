package f.i.b;

import f.i.b.e0.a;
import f.i.b.e0.c;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class h extends z<AtomicLong> {
    public final /* synthetic */ z a;

    public h(z zVar) {
        this.a = zVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.b.z
    public AtomicLong a(a aVar) throws IOException {
        return new AtomicLong(((Number) this.a.a(aVar)).longValue());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.b.e0.c, java.lang.Object] */
    @Override // f.i.b.z
    public void b(c cVar, AtomicLong atomicLong) throws IOException {
        this.a.b(cVar, Long.valueOf(atomicLong.get()));
    }
}
