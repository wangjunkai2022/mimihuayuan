package m.o.a;

import java.util.NoSuchElementException;
/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes2.dex */
public class e extends m.j<T> {

    /* renamed from: e  reason: collision with root package name */
    public boolean f7321e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7322f;

    /* renamed from: g  reason: collision with root package name */
    public T f7323g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ m.i f7324h;

    public e(f fVar, m.i iVar) {
        this.f7324h = iVar;
    }

    @Override // m.j
    public void d() {
        if (this.f7321e) {
            return;
        }
        if (this.f7322f) {
            m.i iVar = this.f7324h;
            k kVar = (k) iVar;
            kVar.b.i(new m.o.b.a(kVar.b, this.f7323g));
            return;
        }
        m.i iVar2 = this.f7324h;
        ((k) iVar2).b.e(new NoSuchElementException("Observable emitted no items"));
    }

    @Override // m.j
    public void e(Throwable th) {
        ((k) this.f7324h).b.e(th);
        this.a.c();
    }

    @Override // m.j
    public void f(T t) {
        if (this.f7322f) {
            this.f7321e = true;
            m.i iVar = this.f7324h;
            ((k) iVar).b.e(new IllegalArgumentException("Observable emitted too many elements"));
            this.a.c();
            return;
        }
        this.f7322f = true;
        this.f7323g = t;
    }

    @Override // m.j
    public void g() {
        h(2L);
    }
}
