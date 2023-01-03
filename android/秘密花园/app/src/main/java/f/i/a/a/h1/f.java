package f.i.a.a.h1;

import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {
    public final /* synthetic */ f0.a a;
    public final /* synthetic */ f0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e0.a f4744c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f0.c f4745d;

    public /* synthetic */ f(f0.a aVar, f0 f0Var, e0.a aVar2, f0.c cVar) {
        this.a = aVar;
        this.b = f0Var;
        this.f4744c = aVar2;
        this.f4745d = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.l(this.b, this.f4744c, this.f4745d);
    }
}
