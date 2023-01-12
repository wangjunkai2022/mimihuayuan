package f.e.a.j.d0;

import com.comeback.data.ui.maomi.CartoonWatchActivity;
import com.comeback.data.ui.maomi.bean.CartoonWatch;

/* compiled from: CartoonWatchActivity.java */
/* loaded from: classes.dex */
public class f extends m.j<CartoonWatch> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ CartoonWatchActivity f3913e;

    public f(CartoonWatchActivity cartoonWatchActivity) {
        this.f3913e = cartoonWatchActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        c.a.a.b.g.h.n1(th.getMessage());
    }

    @Override // m.j
    public void f(CartoonWatch cartoonWatch) {
        this.f3913e.f1605c.a(cartoonWatch.getData());
    }
}
