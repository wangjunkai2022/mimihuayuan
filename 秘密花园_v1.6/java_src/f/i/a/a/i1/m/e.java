package f.i.a.a.i1.m;

import c.a.a.b.g.h;
import java.util.Collections;
import java.util.List;
/* compiled from: CeaSubtitle.java */
/* loaded from: classes.dex */
public final class e implements f.i.a.a.i1.e {
    public final List<f.i.a.a.i1.b> a;

    public e(List<f.i.a.a.i1.b> list) {
        this.a = list;
    }

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        return j2 < 0 ? 0 : -1;
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        h.m(i2 == 0);
        return 0L;
    }

    @Override // f.i.a.a.i1.e
    public List<f.i.a.a.i1.b> c(long j2) {
        return j2 >= 0 ? this.a : Collections.emptyList();
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        return 1;
    }
}
