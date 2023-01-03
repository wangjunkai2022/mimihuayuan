package f.c.a.i;

import java.util.List;

/* compiled from: WheelOptions.java */
/* loaded from: classes.dex */
public class f implements f.f.c.b {
    public final /* synthetic */ h a;

    public f(h hVar) {
        this.a = hVar;
    }

    @Override // f.f.c.b
    public void a(int i2) {
        int i3;
        h hVar = this.a;
        if (hVar.f3349e == null) {
            f.c.a.h.c cVar = hVar.f3355k;
            if (cVar != null) {
                cVar.a(hVar.a.getCurrentItem(), 0, 0);
                return;
            }
            return;
        }
        if (hVar.f3352h) {
            i3 = 0;
        } else {
            i3 = hVar.b.getCurrentItem();
            if (i3 >= ((List) this.a.f3349e.get(i2)).size() - 1) {
                i3 = ((List) this.a.f3349e.get(i2)).size() - 1;
            }
        }
        h hVar2 = this.a;
        hVar2.b.setAdapter(new f.c.a.f.a((List) hVar2.f3349e.get(i2)));
        this.a.b.setCurrentItem(i3);
        h hVar3 = this.a;
        if (hVar3.f3350f != null) {
            hVar3.f3354j.a(i3);
            return;
        }
        f.c.a.h.c cVar2 = hVar3.f3355k;
        if (cVar2 != null) {
            cVar2.a(i2, i3, 0);
        }
    }
}
