package l;

import l.m;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ m.b.a a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Throwable f7138c;

    public /* synthetic */ b(m.b.a aVar, f fVar, Throwable th) {
        this.a = aVar;
        this.b = fVar;
        this.f7138c = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.c(this.b, this.f7138c);
    }
}
