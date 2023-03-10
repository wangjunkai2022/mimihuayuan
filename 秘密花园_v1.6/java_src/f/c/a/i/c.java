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
        bVar.f3417e.s.removeView(bVar.f3415c);
        b bVar2 = this.a;
        bVar2.f3422j = false;
        bVar2.f3419g = false;
        f.c.a.h.b bVar3 = bVar2.f3418f;
        if (bVar3 != null) {
            bVar3.a(bVar2);
        }
    }
}
