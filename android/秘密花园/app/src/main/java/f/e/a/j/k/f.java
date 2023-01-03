package f.e.a.j.k;

import com.comeback.data.ui.fulao2.FuLao2Activity;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.comeback.data.ui.fulao2.bean.TokenBean;
import f.e.a.e;
import f.e.a.j.k.h.d;
import m.j;

/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class f extends j<TokenBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FuLao2Launch2Activity f3899e;

    public f(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.f3899e = fuLao2Launch2Activity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        e.a("0dHLge3/3JfCjoDC");
        f.e.a.k.f.a();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(TokenBean tokenBean) {
        d.a = tokenBean.getResponse().getToken();
        e.a("aD08OzQsZg==");
        String str = d.a;
        f.e.a.k.f.b();
        FuLao2Launch2Activity fuLao2Launch2Activity = this.f3899e;
        fuLao2Launch2Activity.f705g = true;
        if (fuLao2Launch2Activity.b) {
            FuLao2Activity.m(fuLao2Launch2Activity);
            fuLao2Launch2Activity.finish();
        }
    }
}
