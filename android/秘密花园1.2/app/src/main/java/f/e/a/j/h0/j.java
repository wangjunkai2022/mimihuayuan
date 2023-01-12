package f.e.a.j.h0;

import android.text.TextUtils;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import i.h0;
import java.io.IOException;

/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class j implements i.g {
    public final /* synthetic */ NanaLaunchActivity a;

    public j(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) {
        if (h0Var.f6524e > 300) {
            return;
        }
        String str = fVar.S().b.f6854j;
        if (str.contains(f.e.a.e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(f.e.a.j.h0.m.d.f3952c)) {
            f.e.a.j.h0.m.d.f3952c = str.replace(f.e.a.e.a("GBETAQ4XF1sHC1g="), "");
        }
        f.e.a.e.a("RBYRAQoe0LPpjovg");
        f.e.a.k.f.a();
        NanaLaunchActivity.n(this.a);
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
    }
}
