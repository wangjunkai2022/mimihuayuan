package f.i.a.a.n1;

import android.view.Surface;
import f.i.a.a.n1.s;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ s.a a;
    public final /* synthetic */ Surface b;

    public /* synthetic */ b(s.a aVar, Surface surface) {
        this.a = aVar;
        this.b = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f(this.b);
    }
}
