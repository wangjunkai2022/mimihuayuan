package m.o.a;

import java.util.NoSuchElementException;
import m.i;
import m.j;
import m.o.b.a;

/* compiled from: OnSubscribeSingle.java */
/* loaded from: classes2.dex */
public class e extends j<T> {

    /* renamed from: e  reason: collision with root package name */
    public boolean f7237e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7238f;

    /* renamed from: g  reason: collision with root package name */
    public T f7239g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ i f7240h;

    public e(f fVar, i iVar) {
        this.f7240h = iVar;
    }

    @Override // m.j
    public void d() {
        if (!this.f7237e) {
            if (this.f7238f) {
                i iVar = this.f7240h;
                k kVar = (k) iVar;
                kVar.b.i(new a(kVar.b, this.f7239g));
                return;
            }
            i iVar2 = this.f7240h;
            ((k) iVar2).b.e(new NoSuchElementException("Observable emitted no items"));
        }
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
            i iVar = this.f7240h;
            ((k) iVar).b.e(new IllegalArgumentException("Observable emitted too many elements"));
            this.a.c();
            return;
        }
        this.f7238f = true;
        this.f7239g = t;
    }

    @Override // m.j
    public void g() {
        h(2);
    }
}
