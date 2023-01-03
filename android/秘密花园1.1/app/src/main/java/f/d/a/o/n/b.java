package f.d.a.o.n;

import f.d.a.o.n.a;

/* compiled from: ActiveResources.java */
/* loaded from: classes.dex */
public class b implements Runnable {
    public final /* synthetic */ a a;

    public b(a aVar) {
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar = this.a;
        if (aVar == null) {
            throw null;
        }
        while (true) {
            try {
                aVar.b((a.b) aVar.f3494c.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
