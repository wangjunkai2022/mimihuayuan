package f.e.a.j.b;

import c.a.a.b.g.h;
import com.comeback.data.ui.avbobo.AvboboLaunchActivity;
import com.comeback.data.ui.avbobo.MainActivity;
import com.comeback.data.ui.avbobo.bean.LoginInfo;
import m.j;
/* compiled from: AvboboLaunchActivity.java */
/* loaded from: classes.dex */
public class c extends j<LoginInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AvboboLaunchActivity f3896e;

    public c(AvboboLaunchActivity avboboLaunchActivity) {
        this.f3896e = avboboLaunchActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.p1(f.e.a.e.a("3+zUgeTl36HegKDZnNXCjbbNhsDam42WnNq4j9fdhMO6h/PqgvS029zz0u/uj9P23832geP0377RgKjqneDCjq7Ki+7plLuK"));
        MainActivity.m(this.f3896e);
        this.f3896e.finish();
    }

    @Override // m.j
    public void f(LoginInfo loginInfo) {
        f.e.a.j.b.g.b.c().f3901c = loginInfo.getTokens().getToken().getToken();
        MainActivity.m(this.f3896e);
        this.f3896e.finish();
    }
}
