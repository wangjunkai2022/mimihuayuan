package f.i.a.a.e1;

import java.io.IOException;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ q a;
    public final /* synthetic */ IOException b;

    public /* synthetic */ e(q qVar, IOException iOException) {
        this.a = qVar;
        this.b = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.c(this.b);
    }
}
