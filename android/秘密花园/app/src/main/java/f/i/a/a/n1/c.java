package f.i.a.a.n1;

import f.i.a.a.n1.s;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ s.a a;
    public final /* synthetic */ int b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f5723c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5724d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ float f5725e;

    public /* synthetic */ c(s.a aVar, int i2, int i3, int i4, float f2) {
        this.a = aVar;
        this.b = i2;
        this.f5723c = i3;
        this.f5724d = i4;
        this.f5725e = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.g(this.b, this.f5723c, this.f5724d, this.f5725e);
    }
}
