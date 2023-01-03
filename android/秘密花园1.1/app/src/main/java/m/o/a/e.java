package m.o.a;

import java.util.NoSuchElementException;

/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes2.dex */
public class e extends m.j<T> {

    /* renamed from: e  reason: collision with root package name */
    public boolean f7237e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7238f;

    /* renamed from: g  reason: collision with root package name */
    public T f7239g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ m.i f7240h;

    public e(f fVar, m.i iVar) {
        this.f7240h = iVar;
    }

    @Override // m.j
    public void d() {
        if (this.f7237e) {
            return;
        }
        if (this.f7238f) {
            m.i iVar = this.f7240h;
            k kVar = (k) iVar;
            kVar.b.i(new m.o.b.a(kVar.b, this.f7239g));
            return;
        }
        m.i iVar2 = this.f7240h;
        ((k) iVar2).b.e(new NoSuchElementException("Observable emitted no items"));
    }

    @Override // m.j
    public void e(Throwable th) {
        ((k) this.f7240h).b.e(th);
        this.a.c();
    }

    @Override // m.j
    public void f(T t) {
        if (this.f7238f) {
            this.f7237e = true;
            m.i iVar = this.f7240h;
            ((k) iVar).b.e(new IllegalArgumentException("Observable emitted too many elements"));
            this.a.c();
            return;
        }
        this.f7238f = true;
        this.f7239g = t;
    }

    @Override // m.j
    public void g() {
        h(2L);
    }
}
