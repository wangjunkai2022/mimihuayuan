package f.e.a.j.l;

import android.text.TextUtils;
import com.comeback.data.ui.fulao2.FuLao2Activity;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import m.j;

/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class c extends j<Host> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FuLao2Launch2Activity f3971e;

    public c(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.f3971e = fuLao2Launch2Activity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.getMessage();
        f.e.a.k.f.a();
    }

    @Override // m.j
    public void f(Host host) {
        Host host2 = host;
        FuLao2Launch2Activity fuLao2Launch2Activity = this.f3971e;
        if (fuLao2Launch2Activity.b) {
            return;
        }
        fuLao2Launch2Activity.b = true;
        f.e.a.k.b.z = host2.getBestImage();
        f.e.a.k.b.y = host2.getBestApi();
        if (TextUtils.isEmpty(VideoInfo.StreamHost)) {
            VideoInfo.StreamHost = host2.getDefaultStream();
        }
        FuLao2Activity.f772d = host2;
        FuLao2Launch2Activity fuLao2Launch2Activity2 = this.f3971e;
        if (fuLao2Launch2Activity2.b && fuLao2Launch2Activity2.f778g) {
            FuLao2Activity.m(fuLao2Launch2Activity2);
            fuLao2Launch2Activity2.finish();
        }
    }
}
