package f.i.a.a.e1;

import f.i.a.a.e1.q;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ q a;
    public final /* synthetic */ q.b b;

    public /* synthetic */ c(q qVar, q.b bVar) {
        this.a = qVar;
        this.b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.e(this.b);
    }
}
