package f.e.a.j.w;

import android.text.TextUtils;
import com.comeback.data.ui.km.KmLaunchActivity;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: KmLaunchActivity.java */
/* loaded from: classes.dex */
public class e implements g {
    public final /* synthetic */ KmLaunchActivity a;

    public e(KmLaunchActivity kmLaunchActivity) {
        this.a = kmLaunchActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) throws IOException {
        if (h0Var.f6449e < 300) {
            String H = h0Var.f6452h.H();
            if (!TextUtils.isEmpty(H)) {
                KmLaunchActivity.f1277g = H.split(f.e.a.e.a("DA=="));
            }
        }
        KmLaunchActivity.l(this.a);
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
        KmLaunchActivity.l(this.a);
    }
}
