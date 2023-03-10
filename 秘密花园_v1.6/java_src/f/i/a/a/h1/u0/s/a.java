package f.i.a.a.h1.u0.s;

import android.net.Uri;
import f.i.a.a.e1.b0;
import f.i.a.a.e1.c0;
import f.i.a.a.e1.w;
import f.i.a.a.h1.u0.t.e;
import f.i.a.a.h1.u0.t.f;
import f.i.a.a.h1.u0.t.g;
import f.i.a.a.h1.u0.t.h;
import f.i.a.a.l1.e0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* compiled from: HlsDownloader.java */
/* loaded from: classes.dex */
public final class a extends b0<g> {
    public a(Uri uri, List<c0> list, w wVar) {
        super(uri, list, wVar);
    }

    @Override // f.i.a.a.e1.b0
    public g c(m mVar, p pVar) throws IOException {
        return (g) e0.c(mVar, new h(), pVar, 4);
    }

    @Override // f.i.a.a.e1.b0
    public List d(m mVar, g gVar, boolean z) throws InterruptedException, IOException {
        g gVar2 = gVar;
        ArrayList arrayList = new ArrayList();
        if (gVar2 instanceof e) {
            List<Uri> list = ((e) gVar2).f5185d;
            for (int i2 = 0; i2 < list.size(); i2++) {
                arrayList.add(b0.b(list.get(i2)));
            }
        } else {
            arrayList.add(b0.b(Uri.parse(gVar2.a)));
        }
        ArrayList<b0.b> arrayList2 = new ArrayList<>();
        HashSet<Uri> hashSet = new HashSet<>();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p pVar = (p) it.next();
            arrayList2.add(new b0.b(0L, pVar));
            try {
                f fVar = (f) ((g) e0.c(mVar, new h(), pVar, 4));
                f.a aVar = null;
                List<f.a> list2 = fVar.o;
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    f.a aVar2 = list2.get(i3);
                    f.a aVar3 = aVar2.b;
                    if (aVar3 != null && aVar3 != aVar) {
                        f(fVar, aVar3, hashSet, arrayList2);
                        aVar = aVar3;
                    }
                    f(fVar, aVar2, hashSet, arrayList2);
                }
            } catch (IOException e2) {
                if (!z) {
                    throw e2;
                }
            }
        }
        return arrayList2;
    }

    public final void f(f fVar, f.a aVar, HashSet<Uri> hashSet, ArrayList<b0.b> arrayList) {
        String str = fVar.a;
        long j2 = fVar.f5200f + aVar.f5210e;
        String str2 = aVar.f5212g;
        if (str2 != null) {
            Uri g1 = c.a.a.b.g.h.g1(str, str2);
            if (hashSet.add(g1)) {
                arrayList.add(new b0.b(j2, b0.b(g1)));
            }
        }
        arrayList.add(new b0.b(j2, new p(c.a.a.b.g.h.g1(str, aVar.a), aVar.f5214i, aVar.f5215j, null)));
    }
}
