package f.e.a.j.v;

import c.a.a.b.g.h;
import com.comeback.data.ui.jhlf.JHLFActivity;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import m.j;

/* compiled from: JHLFActivity.java */
/* loaded from: classes.dex */
public class g extends j<WebSiteBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ JHLFActivity f3959e;

    public g(JHLFActivity jHLFActivity) {
        this.f3959e = jHLFActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.n1(f.e.a.e.a("3+zUgeTl0Lb+gYnJnc7Sg4PH"));
    }

    @Override // m.j
    public void f(WebSiteBean webSiteBean) {
        this.f3959e.loading.hide();
        this.f3959e.flProgress.setVisibility(8);
        JHLFActivity.m(this.f3959e, webSiteBean);
    }
}
