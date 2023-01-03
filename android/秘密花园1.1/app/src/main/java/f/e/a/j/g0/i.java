package f.e.a.j.g0;

import android.text.TextUtils;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import i.h0;
import java.io.IOException;

/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class i implements i.g {
    public final /* synthetic */ NanaLaunchActivity a;

    public i(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) {
        if (h0Var.f6449e > 300) {
            return;
        }
        String str = fVar.S().b.f6779j;
        if (str.contains(f.e.a.e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(f.e.a.j.g0.m.d.b)) {
            f.e.a.j.g0.m.d.b = str.replace(f.e.a.e.a("GBETAQ4XF1sHC1g="), "");
        }
        f.e.a.e.a("Xg8Ejevp0Yz0");
        f.e.a.k.f.a();
        NanaLaunchActivity.n(this.a);
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
    }
}
