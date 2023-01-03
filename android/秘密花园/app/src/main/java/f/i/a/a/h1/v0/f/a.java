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

    /* Return type fixed from 'f.i.a.a.e1.y' to match base method */
    @Override // f.i.a.a.e1.b0
    public f.i.a.a.h1.v0.e.a c(m mVar, p pVar) throws IOException {
        return (f.i.a.a.h1.v0.e.a) e0.c(mVar, new b(), pVar, 4);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.l1.m, f.i.a.a.e1.y, boolean] */
    @Override // f.i.a.a.e1.b0
    public List d(m mVar, f.i.a.a.h1.v0.e.a aVar, boolean z) throws InterruptedException, IOException {
        ArrayList arrayList = new ArrayList();
        a.b[] bVarArr = aVar.f5166f;
        for (a.b bVar : bVarArr) {
            for (int i2 = 0; i2 < bVar.f5177j.length; i2++) {
                for (int i3 = 0; i3 < bVar.f5178k; i3++) {
                    arrayList.add(new b0.b(bVar.o[i3], new p(bVar.a(i2, i3), 0, -1, null, 0)));
                }
            }
        }
        return arrayList;
    }
}
