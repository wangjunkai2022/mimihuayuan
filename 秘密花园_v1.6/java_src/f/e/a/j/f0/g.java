package f.e.a.j.f0;

import com.comeback.data.ui.mimei.MimeiLauncherActivity;
import com.comeback.data.ui.mimei.bean.HostBean;
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
    public void c(i.f fVar, h0 h0Var) {
        if (h0Var.f6533e > 300) {
            return;
        }
        String str = fVar.S().b.f6863j;
        Iterator it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            HostBean.ComicBean comicBean = (HostBean.ComicBean) it.next();
            if (str.contains(comicBean.getUrl())) {
                f.e.a.j.f0.j.d.f3931c = comicBean.getTsurl();
                f.e.a.j.f0.j.d.b = comicBean.getChain();
                break;
            }
        }
        f.e.a.e.a("0vndg+L00LPpjovg");
        f.e.a.k.f.a();
        if (f.e.a.j.f0.j.d.a()) {
            return;
        }
        this.b.p();
    }

    @Override // i.g
    public void d(i.f fVar, IOException iOException) {
    }
}
