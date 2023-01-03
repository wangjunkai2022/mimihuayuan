package f.c.a.i;

import f.c.a.f.a;
import f.c.a.h.c;
import f.f.c.b;
import java.util.List;

/* compiled from: WheelOptions.java */
/* loaded from: classes.dex */
public class g implements b {
    public final /* synthetic */ h a;

    public g(h hVar) {
        this.a = hVar;
    }

    @Override // f.f.c.b
    public void a(int i2) {
        int i3;
        h hVar = this.a;
        int i4 = 0;
        if (hVar.f3350f != null) {
            int currentItem = hVar.a.getCurrentItem();
            if (currentItem >= this.a.f3350f.size() - 1) {
                currentItem = this.a.f3350f.size() - 1;
            }
            if (i2 >= ((List) this.a.f3349e.get(currentItem)).size() - 1) {
                i2 = ((List) this.a.f3349e.get(currentItem)).size() - 1;
            }
            h hVar2 = this.a;
            if (!hVar2.f3352h) {
                if (hVar2.f3347c.getCurrentItem() >= ((List) ((List) this.a.f3350f.get(currentItem)).get(i2)).size() - 1) {
                    i3 = ((List) ((List) this.a.f3350f.get(currentItem)).get(i2)).size() - 1;
                } else {
                    i3 = this.a.f3347c.getCurrentItem();
                }
                i4 = i3;
            }
            h hVar3 = this.a;
            hVar3.f3347c.setAdapter(new a((List) ((List) hVar3.f3350f.get(hVar3.a.getCurrentItem())).get(i2)));
            this.a.f3347c.setCurrentItem(i4);
            h hVar4 = this.a;
            c cVar = hVar4.f3355k;
            if (cVar != null) {
                cVar.a(hVar4.a.getCurrentItem(), i2, i4);
                return;
            }
            return;
        }
        c cVar2 = hVar.f3355k;
        if (cVar2 != null) {
            cVar2.a(hVar.a.getCurrentItem(), i2, 0);
        }
    }
}
