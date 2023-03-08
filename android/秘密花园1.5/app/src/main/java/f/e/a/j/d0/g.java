package f.e.a.j.d0;

import android.text.TextUtils;
import com.comeback.data.ui.maomi.MmLaunchActivity;
import i.h0;
import java.io.IOException;

/* compiled from: MmLaunchActivity.java */
/* loaded from: classes.dex */
public class g implements i.g {
    public final /* synthetic */ MmLaunchActivity a;

    public g(MmLaunchActivity mmLaunchActivity) {
        this.a = mmLaunchActivity;
    }

    @Override // i.g
    public void c(i.f fVar, h0 h0Var) throws IOException {
        if (h0Var.f6524e < 300) {
            String H = h0Var.f6527h.H();
            if (!TextUtils.isEmpty(H)) {
                MmLaunchActivity.f1607g = H.split(f.e.a.e.a("DA=="));
            }
        }
        MmLaunchActivity.l(this.a);
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
        MmLaunchActivity.l(this.a);
    }
}
