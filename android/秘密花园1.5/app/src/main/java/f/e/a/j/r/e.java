package f.e.a.j.r;

import c.a.a.b.g.h;
import com.comeback.data.ui.hm.HmLauncherActivity;
import i.i0;
import java.io.IOException;
import l.f;
import l.g0;

/* compiled from: HmLauncherActivity.java */
/* loaded from: classes.dex */
public class e implements f<i0> {
    public final /* synthetic */ HmLauncherActivity a;

    public e(HmLauncherActivity hmLauncherActivity) {
        this.a = hmLauncherActivity;
    }

    @Override // l.f
    public void a(l.d<i0> dVar, g0<i0> g0Var) {
        if (g0Var.a.f6524e < 300) {
            try {
                this.a.f1111c = f.e.a.j.r.f.a.g(g0Var.b.H());
                this.a.flLoad.setVisibility(8);
                this.a.l();
                return;
            } catch (IOException e2) {
                e2.printStackTrace();
                return;
            }
        }
        h.n1(f.e.a.e.a("0ffTgubd3LnTjonanc7Sg4PH"));
    }

    @Override // l.f
    public void b(l.d<i0> dVar, Throwable th) {
        th.getMessage();
        f.e.a.k.f.a();
    }
}
