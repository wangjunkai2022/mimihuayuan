package f.i.a.a.h1.u0.t;

import f.i.a.a.e1.c0;
import f.i.a.a.e1.z;
import f.i.a.a.l1.e0;
import java.util.List;

/* compiled from: FilteringHlsPlaylistParserFactory.java */
/* loaded from: classes.dex */
public final class d implements i {
    public final i a;
    public final List<c0> b;

    public d(i iVar, List<c0> list) {
        this.a = iVar;
        this.b = list;
    }

    @Override // f.i.a.a.h1.u0.t.i
    public e0.a<g> a(e eVar) {
        return new z(this.a.a(eVar), this.b);
    }

    @Override // f.i.a.a.h1.u0.t.i
    public e0.a<g> b() {
        return new z(this.a.b(), this.b);
    }
}
