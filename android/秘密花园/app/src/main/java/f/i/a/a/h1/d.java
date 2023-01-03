package f.i.a.a.h1;

import f.i.a.a.h1.f0;
import java.io.IOException;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ f0.a a;
    public final /* synthetic */ f0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f0.b f4735c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f0.c f4736d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ IOException f4737e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f4738f;

    public /* synthetic */ d(f0.a aVar, f0 f0Var, f0.b bVar, f0.c cVar, IOException iOException, boolean z) {
        this.a = aVar;
        this.b = f0Var;
        this.f4735c = bVar;
        this.f4736d = cVar;
        this.f4737e = iOException;
        this.f4738f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.g(this.b, this.f4735c, this.f4736d, this.f4737e, this.f4738f);
    }
}
