package f.e.a.j.f0;

import android.text.TextUtils;
import com.comeback.data.ui.mimei.MimeiLauncherActivity;
import i.h0;
import java.io.IOException;

/* compiled from: MimeiLauncherActivity.java */
/* loaded from: classes.dex */
public class i implements i.g {
    public final /* synthetic */ MimeiLauncherActivity a;

    public i(MimeiLauncherActivity mimeiLauncherActivity) {
        this.a = mimeiLauncherActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) {
        if (h0Var.f6524e > 300) {
            return;
        }
        String str = fVar.S().b.f6854j;
        if (str.contains(f.e.a.e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(f.e.a.j.f0.j.d.f3928d)) {
            f.e.a.j.f0.j.d.f3928d = str.replace(f.e.a.e.a("GBETAQ4XF1sHC1g="), "");
        }
        f.e.a.e.a("0tLsjMTH");
        f.e.a.k.f.a();
        if (f.e.a.j.f0.j.d.a()) {
            return;
        }
        this.a.p();
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
        iOException.getMessage();
        f.e.a.k.f.a();
    }
}
