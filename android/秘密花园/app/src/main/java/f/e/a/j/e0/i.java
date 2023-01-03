package f.e.a.j.e0;

import android.text.TextUtils;
import com.comeback.data.ui.mimei.MimeiLauncherActivity;
import f.e.a.e;
import f.e.a.j.e0.j.d;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: MimeiLauncherActivity.java */
/* loaded from: classes.dex */
public class i implements g {
    public final /* synthetic */ MimeiLauncherActivity a;

    public i(MimeiLauncherActivity mimeiLauncherActivity) {
        this.a = mimeiLauncherActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) {
        if (h0Var.f6449e <= 300) {
            String str = fVar.S().b.f6779j;
            if (str.contains(e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(d.f3853d)) {
                d.f3853d = str.replace(e.a("GBETAQ4XF1sHC1g="), "");
            }
            e.a("0tLsjMTH");
            f.e.a.k.f.a();
            if (!d.a()) {
                this.a.p();
            }
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
        iOException.getMessage();
        f.e.a.k.f.a();
    }
}
