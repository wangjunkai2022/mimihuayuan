package f.e.a.j.t;

import c.a.a.b.g.h;
import com.comeback.data.ui.iqiyi.IQYLaunchActivity;
import com.comeback.data.ui.iqiyi.IQYMainActivity;
import com.comeback.data.ui.iqiyi.bean.AppInfo;
import f.e.a.e;
import m.j;
/* compiled from: IQYLaunchActivity.java */
/* loaded from: classes.dex */
public class c extends j<AppInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ IQYLaunchActivity f4028e;

    public c(IQYLaunchActivity iQYLaunchActivity) {
        this.f4028e = iQYLaunchActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.p1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PH"));
    }

    @Override // m.j
    public void f(AppInfo appInfo) {
        f.e.a.k.b.w = appInfo.getToken().getAccessToken();
        IQYMainActivity.m(this.f4028e);
        this.f4028e.finish();
    }
}
