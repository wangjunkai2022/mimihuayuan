package f.e.a.j.h0;

import com.comeback.data.ui.nana.NanaLaunchActivity;
import com.comeback.data.ui.nana.bean.AuthBean;
import i.i0;
import l.g0;
/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class e implements l.f<i0> {
    public final /* synthetic */ NanaLaunchActivity a;

    public e(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // l.f
    public void a(l.d<i0> dVar, g0<i0> g0Var) {
        try {
            f.e.a.j.h0.m.d.a = ((AuthBean) new f.i.b.j().d(g0Var.b.H(), AuthBean.class)).getResponse().getToken();
            this.a.b = true;
            NanaLaunchActivity.n(this.a);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // l.f
    public void b(l.d<i0> dVar, Throwable th) {
        c.a.a.b.g.h.p1(f.e.a.e.a("0t3Ijevs3qrIj63hnc7Sg4PHjNjnm5aEmuG5j9f/"));
    }
}
