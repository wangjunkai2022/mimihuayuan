package f.e.a.j.l;

import com.comeback.data.ui.fulao2.FuLao2Activity;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.comeback.data.ui.fulao2.bean.TokenBean;
import m.j;
/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class f extends j<TokenBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FuLao2Launch2Activity f3978e;

    public f(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.f3978e = fuLao2Launch2Activity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        f.e.a.e.a("0dHLge3/3JfCjoDC");
        f.e.a.k.f.a();
    }

    @Override // m.j
    public void f(TokenBean tokenBean) {
        f.e.a.j.l.h.d.a = tokenBean.getResponse().getToken();
        f.e.a.e.a("aD08OzQsZg==");
        String str = f.e.a.j.l.h.d.a;
        f.e.a.k.f.b();
        FuLao2Launch2Activity fuLao2Launch2Activity = this.f3978e;
        fuLao2Launch2Activity.f782g = true;
        if (fuLao2Launch2Activity.b) {
            FuLao2Activity.m(fuLao2Launch2Activity);
            fuLao2Launch2Activity.finish();
        }
    }
}
