package f.i.a.a.i1.s;

import c.a.a.b.g.h;
import f.i.a.a.i1.e;
import java.util.Collections;
import java.util.List;

/* compiled from: Tx3gSubtitle.java */
/* loaded from: classes.dex */
public final class b implements e {
    public static final b b = new b();
    public final List<f.i.a.a.i1.b> a;

    public b(f.i.a.a.i1.b bVar) {
        this.a = Collections.singletonList(bVar);
    }

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        return j2 < 0 ? 0 : -1;
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        h.m(i2 == 0);
        return 0;
    }

    @Override // f.i.a.a.i1.e
    public List<f.i.a.a.i1.b> c(long j2) {
        return j2 >= 0 ? this.a : Collections.emptyList();
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        return 1;
    }

    public b() {
        this.a = Collections.emptyList();
    }
}
