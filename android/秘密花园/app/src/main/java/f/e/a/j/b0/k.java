package f.e.a.j.b0;

import com.comeback.data.App;
import com.comeback.data.ui.main.LauncherActivity;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* compiled from: LauncherActivity.java */
/* loaded from: classes.dex */
public class k implements f<i0> {
    public final /* synthetic */ LauncherActivity a;

    public k(LauncherActivity launcherActivity) {
        this.a = launcherActivity;
    }

    @Override // l.f
    public void a(d<i0> dVar, g0<i0> g0Var) {
        try {
            if (g0Var.a.f6449e > 300) {
                App.b.c("");
            } else {
                App.b.c(g0Var.b.H());
            }
            this.a.f1472c = true;
            this.a.f1479j = App.f104e.getLaunch();
            LauncherActivity.l(this.a);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    @Override // l.f
    public void b(d<i0> dVar, Throwable th) {
        this.a.f1472c = true;
        App.b.c("");
        LauncherActivity.l(this.a);
    }
}
