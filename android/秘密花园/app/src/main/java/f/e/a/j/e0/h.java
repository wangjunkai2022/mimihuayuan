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
public class h implements g {
    public final /* synthetic */ MimeiLauncherActivity a;

    public h(MimeiLauncherActivity mimeiLauncherActivity) {
        this.a = mimeiLauncherActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) {
        if (h0Var.f6449e <= 300) {
            String str = fVar.S().b.f6779j;
            if (str.contains(e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(d.f3854e)) {
                d.f3854e = str.replace(e.a("GBETAQ4XF1sHC1g="), "");
            }
            e.a("VhIKjevp0Yz0");
            f.e.a.k.f.a();
            if (!d.a()) {
                this.a.p();
            }
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
