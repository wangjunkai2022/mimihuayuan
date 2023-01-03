package m.p;

import m.j;

/* compiled from: Subscribers.java */
/* loaded from: classes2.dex */
public final class b extends j<T> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ j f7325e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(j jVar, j jVar2) {
        super(jVar, true);
        this.f7325e = jVar2;
    }

    @Override // m.j
    public void d() {
        this.f7325e.d();
    }

    @Override // m.j
    public void e(Throwable th) {
        this.f7325e.e(th);
    }

    @Override // m.j
    public void f(T t) {
        this.f7325e.f(t);
    }
}
