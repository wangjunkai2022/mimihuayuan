package f.e.a.j.w;

import c.a.a.b.g.h;
import com.comeback.data.ui.jhlf.JHLFActivity;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import m.j;
/* compiled from: JHLFActivity.java */
/* loaded from: classes.dex */
public class g extends j<WebSiteBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ JHLFActivity f4043e;

    public g(JHLFActivity jHLFActivity) {
        this.f4043e = jHLFActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.p1(f.e.a.e.a("3+zUgeTl0Lb+gYnJnc7Sg4PH"));
    }

    @Override // m.j
    public void f(WebSiteBean webSiteBean) {
        this.f4043e.loading.hide();
        this.f4043e.flProgress.setVisibility(8);
        JHLFActivity.m(this.f4043e, webSiteBean);
    }
}
