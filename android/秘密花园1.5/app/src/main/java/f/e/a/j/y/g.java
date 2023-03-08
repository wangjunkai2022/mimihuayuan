package f.e.a.j.y;

import android.text.TextUtils;
import com.comeback.data.ui.km2.Km2LaunchActivity;
import i.h0;
import java.io.IOException;

/* compiled from: Km2LaunchActivity.java */
/* loaded from: classes.dex */
public class g implements i.g {
    public final /* synthetic */ Km2LaunchActivity a;

    public g(Km2LaunchActivity km2LaunchActivity) {
        this.a = km2LaunchActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) throws IOException {
        if (h0Var.f6524e < 300) {
            String H = h0Var.f6527h.H();
            if (!TextUtils.isEmpty(H)) {
                Km2LaunchActivity.f1396h = H.split(f.e.a.e.a("DA=="));
            }
        }
        Km2LaunchActivity.l(this.a);
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
        Km2LaunchActivity.l(this.a);
    }
}
