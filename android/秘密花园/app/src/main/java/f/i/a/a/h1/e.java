package f.i.a.a.h1;

import f.i.a.a.h1.f0;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ f0.a a;
    public final /* synthetic */ f0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f0.b f4739c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f0.c f4740d;

    public /* synthetic */ e(f0.a aVar, f0 f0Var, f0.b bVar, f0.c cVar) {
        this.a = aVar;
        this.b = f0Var;
        this.f4739c = bVar;
        this.f4740d = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.e(this.b, this.f4739c, this.f4740d);
    }
}
