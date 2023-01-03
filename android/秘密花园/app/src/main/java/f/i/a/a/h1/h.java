package f.i.a.a.h1;

import f.i.a.a.h1.f0;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {
    public final /* synthetic */ f0.a a;
    public final /* synthetic */ f0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f0.b f4779c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f0.c f4780d;

    public /* synthetic */ h(f0.a aVar, f0 f0Var, f0.b bVar, f0.c cVar) {
        this.a = aVar;
        this.b = f0Var;
        this.f4779c = bVar;
        this.f4780d = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f(this.b, this.f4779c, this.f4780d);
    }
}
