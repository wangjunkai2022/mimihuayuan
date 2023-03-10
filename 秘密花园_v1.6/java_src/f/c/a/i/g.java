package f.c.a.i;

import java.util.List;
/* compiled from: WheelOptions.java */
/* loaded from: classes.dex */
public class g implements f.f.c.b {
    public final /* synthetic */ h a;

    public g(h hVar) {
        this.a = hVar;
    }

    @Override // f.f.c.b
    public void a(int i2) {
        int currentItem;
        h hVar = this.a;
        int i3 = 0;
        if (hVar.f3429f != null) {
            int currentItem2 = hVar.a.getCurrentItem();
            if (currentItem2 >= this.a.f3429f.size() - 1) {
                currentItem2 = this.a.f3429f.size() - 1;
            }
            if (i2 >= ((List) this.a.f3428e.get(currentItem2)).size() - 1) {
                i2 = ((List) this.a.f3428e.get(currentItem2)).size() - 1;
            }
            h hVar2 = this.a;
            if (!hVar2.f3431h) {
                if (hVar2.f3426c.getCurrentItem() >= ((List) ((List) this.a.f3429f.get(currentItem2)).get(i2)).size() - 1) {
                    currentItem = ((List) ((List) this.a.f3429f.get(currentItem2)).get(i2)).size() - 1;
                } else {
                    currentItem = this.a.f3426c.getCurrentItem();
                }
                i3 = currentItem;
            }
            h hVar3 = this.a;
            hVar3.f3426c.setAdapter(new f.c.a.f.a((List) ((List) hVar3.f3429f.get(hVar3.a.getCurrentItem())).get(i2)));
            this.a.f3426c.setCurrentItem(i3);
            h hVar4 = this.a;
            f.c.a.h.c cVar = hVar4.f3434k;
            if (cVar != null) {
                cVar.a(hVar4.a.getCurrentItem(), i2, i3);
                return;
            }
            return;
        }
        f.c.a.h.c cVar2 = hVar.f3434k;
        if (cVar2 != null) {
            cVar2.a(hVar.a.getCurrentItem(), i2, 0);
        }
    }
}
