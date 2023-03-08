package f.c.a.i;

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
        bVar.f3413e.s.removeView(bVar.f3411c);
        b bVar2 = this.a;
        bVar2.f3418j = false;
        bVar2.f3415g = false;
        f.c.a.h.b bVar3 = bVar2.f3414f;
        if (bVar3 != null) {
            bVar3.a(bVar2);
        }
    }
}
