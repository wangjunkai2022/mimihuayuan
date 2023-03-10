package f.e.a.j.h0;

import android.text.TextUtils;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import i.h0;
import java.io.IOException;
/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class h implements i.g {
    public final /* synthetic */ NanaLaunchActivity a;

    public h(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) {
        if (h0Var.f6533e > 300) {
            return;
        }
        String str = fVar.S().b.f6863j;
        if (str.contains(f.e.a.e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(f.e.a.j.h0.m.d.f3957d)) {
            f.e.a.j.h0.m.d.f3957d = str.replace(f.e.a.e.a("GBETAQ4XF1sHC1g="), "");
        }
        f.e.a.e.a("VhIKjevp0Yz0");
        f.e.a.k.f.a();
        NanaLaunchActivity.n(this.a);
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
    }
}
