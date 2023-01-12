package f.e.a.j.c0;

import com.comeback.data.App;
import com.comeback.data.ui.main.LauncherActivity;
import i.i0;
import java.io.IOException;
import l.g0;

/* compiled from: LauncherActivity.java */
/* loaded from: classes.dex */
public class j implements l.f<i0> {
    public final /* synthetic */ LauncherActivity a;

    public j(LauncherActivity launcherActivity) {
        this.a = launcherActivity;
    }

    @Override // l.f
    public void a(l.d<i0> dVar, g0<i0> g0Var) {
        if (g0Var.a.f6524e > 300) {
            LauncherActivity.m(this.a);
            return;
        }
        try {
            App.b.c(g0Var.b.H());
            this.a.f1547c = true;
            this.a.f1554j = App.f104e.getLaunch();
            LauncherActivity.l(this.a);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    @Override // l.f
    public void b(l.d<i0> dVar, Throwable th) {
        LauncherActivity.m(this.a);
    }
}
