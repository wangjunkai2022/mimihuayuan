package f.c.a.i;

import f.c.a.h.b;

/* compiled from: BasePickerView.java */
/* loaded from: classes.dex */
public class c implements Runnable {
    public final /* synthetic */ b a;

    public c(b bVar) {
        this.a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        b bVar = this.a;
        bVar.f3338e.s.removeView(bVar.f3336c);
        b bVar2 = this.a;
        bVar2.f3343j = false;
        bVar2.f3340g = false;
        b bVar3 = bVar2.f3339f;
        if (bVar3 != null) {
            bVar3.a(bVar2);
        }
    }
}
