package f.e.a.j.e0;

import com.comeback.data.ui.mimei.MimeiLauncherActivity;
import com.comeback.data.ui.mimei.bean.HostBean;
import f.e.a.e;
import f.e.a.j.e0.j.d;
import i.f;
import i.h0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* compiled from: MimeiLauncherActivity.java */
/* loaded from: classes.dex */
public class g implements i.g {
    public final /* synthetic */ List a;
    public final /* synthetic */ MimeiLauncherActivity b;

    public g(MimeiLauncherActivity mimeiLauncherActivity, List list) {
        this.b = mimeiLauncherActivity;
        this.a = list;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) {
        if (h0Var.f6449e <= 300) {
            String str = fVar.S().b.f6779j;
            Iterator it = this.a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                HostBean.ComicBean comicBean = (HostBean.ComicBean) it.next();
                if (str.contains(comicBean.getUrl())) {
                    d.f3852c = comicBean.getTsurl();
                    d.b = comicBean.getChain();
                    break;
                }
            }
            e.a("0vndg+L00LPpjovg");
            f.e.a.k.f.a();
            if (!d.a()) {
                this.b.p();
            }
        }
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
