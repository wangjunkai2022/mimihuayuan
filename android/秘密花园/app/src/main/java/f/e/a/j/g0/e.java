package f.e.a.j.g0;

import c.a.a.b.g.h;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import com.comeback.data.ui.nana.bean.AuthBean;
import f.i.b.j;
import i.i0;
import l.d;
import l.f;
import l.g0;

/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class e implements f<i0> {
    public final /* synthetic */ NanaLaunchActivity a;

    public e(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // l.f
    public void a(d<i0> dVar, g0<i0> g0Var) {
        try {
            f.e.a.j.g0.m.d.a = ((AuthBean) new j().d(g0Var.b.H(), AuthBean.class)).getResponse().getToken();
            this.a.b = true;
            NanaLaunchActivity.n(this.a);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // l.f
    public void b(d<i0> dVar, Throwable th) {
        h.n1(f.e.a.e.a("0t3Ijevs3qrIj63hnc7Sg4PHjNjnm5aEmuG5j9f/"));
    }
}
