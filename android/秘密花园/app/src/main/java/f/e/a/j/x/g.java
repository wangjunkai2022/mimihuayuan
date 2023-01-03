package f.e.a.j.x;

import android.text.TextUtils;
import com.comeback.data.ui.km2.Km2LaunchActivity;
import f.e.a.e;
import i.f;
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
    public void c(f fVar, h0 h0Var) throws IOException {
        if (h0Var.f6449e < 300) {
            String H = h0Var.f6452h.H();
            if (!TextUtils.isEmpty(H)) {
                Km2LaunchActivity.f1321h = H.split(e.a("DA=="));
            }
        }
        Km2LaunchActivity.l(this.a);
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
        Km2LaunchActivity.l(this.a);
    }
}
