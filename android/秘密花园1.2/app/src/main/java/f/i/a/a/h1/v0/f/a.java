package f.i.a.a.h1.v0.f;

import android.net.Uri;
import c.a.a.b.g.h;
import f.i.a.a.e1.b0;
import f.i.a.a.e1.c0;
import f.i.a.a.e1.w;
import f.i.a.a.h1.v0.e.a;
import f.i.a.a.h1.v0.e.b;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SsDownloader.java */
/* loaded from: classes.dex */
public final class a extends b0<f.i.a.a.h1.v0.e.a> {
    public a(Uri uri, List<c0> list, w wVar) {
        super(h.Q(uri), list, wVar);
    }

    @Override // f.i.a.a.e1.b0
    public f.i.a.a.h1.v0.e.a c(m mVar, p pVar) throws IOException {
        return (f.i.a.a.h1.v0.e.a) e0.c(mVar, new b(), pVar, 4);
    }

    @Override // f.i.a.a.e1.b0
    public List d(m mVar, f.i.a.a.h1.v0.e.a aVar, boolean z) throws InterruptedException, IOException {
        a.b[] bVarArr;
        ArrayList arrayList = new ArrayList();
        for (a.b bVar : aVar.f5241f) {
            for (int i2 = 0; i2 < bVar.f5252j.length; i2++) {
                for (int i3 = 0; i3 < bVar.f5253k; i3++) {
                    arrayList.add(new b0.b(bVar.o[i3], new p(bVar.a(i2, i3), 0L, -1L, null, 0)));
                }
            }
        }
        return arrayList;
    }
}
