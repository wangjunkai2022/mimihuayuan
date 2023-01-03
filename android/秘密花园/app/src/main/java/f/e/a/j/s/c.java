package f.e.a.j.s;

import c.a.a.b.g.h;
import com.comeback.data.ui.iqiyi.IQYLaunchActivity;
import com.comeback.data.ui.iqiyi.IQYMainActivity;
import com.comeback.data.ui.iqiyi.bean.AppInfo;
import f.e.a.e;
import f.e.a.k.b;
import m.j;

/* compiled from: IQYLaunchActivity.java */
/* loaded from: classes.dex */
public class c extends j<AppInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ IQYLaunchActivity f3944e;

    public c(IQYLaunchActivity iQYLaunchActivity) {
        this.f3944e = iQYLaunchActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.n1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PH"));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(AppInfo appInfo) {
        b.w = appInfo.getToken().getAccessToken();
        IQYMainActivity.m(this.f3944e);
        this.f3944e.finish();
    }
}
