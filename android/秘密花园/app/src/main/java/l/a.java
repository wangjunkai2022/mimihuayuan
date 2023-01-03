package l;

import l.m;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ m.b.a a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g0 f7137c;

    public /* synthetic */ a(m.b.a aVar, f fVar, g0 g0Var) {
        this.a = aVar;
        this.b = fVar;
        this.f7137c = g0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.d(this.b, this.f7137c);
    }
}
