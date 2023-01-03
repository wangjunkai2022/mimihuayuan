package f.e.a.j.a0;

import com.comeback.data.ui.lutube.LutubeLaunchActivity;
import f.e.a.e;
import f.e.a.k.b;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: LutubeLaunchActivity.java */
/* loaded from: classes.dex */
public class i implements g {
    public boolean a = false;
    public final /* synthetic */ LutubeLaunchActivity b;

    public i(LutubeLaunchActivity lutubeLaunchActivity) {
        this.b = lutubeLaunchActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) throws IOException {
        String replace = fVar.S().b.f6779j.replace(e.a("GBETAQ4XF1sHC1g="), "");
        if (h0Var.f6449e > 300) {
            e.a("Xg8CAw5J");
            e.a("0uXZgNH1CgND");
            f.e.a.k.f.a();
        } else if (!this.a) {
            this.a = true;
            b.r = replace;
            LutubeLaunchActivity.m(this.b);
            LutubeLaunchActivity.n(this.b);
            e.a("Xg8CAw5J");
            e.a("0erzgeHs");
            f.e.a.k.f.a();
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
        e.a("Xg8CAw5J");
        fVar.S().b.f6779j.replace(e.a("GBETAQ4XF1sHC1g="), "");
        e.a("0sbSjN/W");
        f.e.a.k.f.a();
    }
}
