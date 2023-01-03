package f.e.a.j.g0;

import android.text.TextUtils;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import f.e.a.e;
import f.e.a.j.g0.m.d;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: NanaLaunchActivity.java */
/* loaded from: classes.dex */
public class i implements g {
    public final /* synthetic */ NanaLaunchActivity a;

    public i(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) {
        if (h0Var.f6449e <= 300) {
            String str = fVar.S().b.f6779j;
            if (str.contains(e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(d.b)) {
                d.b = str.replace(e.a("GBETAQ4XF1sHC1g="), "");
            }
            e.a("Xg8Ejevp0Yz0");
            f.e.a.k.f.a();
            NanaLaunchActivity.n(this.a);
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
