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
public class j implements g {
    public final /* synthetic */ NanaLaunchActivity a;

    public j(NanaLaunchActivity nanaLaunchActivity) {
        this.a = nanaLaunchActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) {
        if (h0Var.f6449e <= 300) {
            String str = fVar.S().b.f6779j;
            if (str.contains(e.a("GBETAQ4XF1sHC1g=")) && TextUtils.isEmpty(d.f3876c)) {
                d.f3876c = str.replace(e.a("GBETAQ4XF1sHC1g="), "");
            }
            e.a("RBYRAQoe0LPpjovg");
            f.e.a.k.f.a();
            NanaLaunchActivity.n(this.a);
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
