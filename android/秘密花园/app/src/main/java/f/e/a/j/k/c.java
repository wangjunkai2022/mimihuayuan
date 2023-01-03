package f.e.a.j.k;

import android.text.TextUtils;
import com.comeback.data.ui.fulao2.FuLao2Activity;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import f.e.a.k.b;
import f.e.a.k.f;
import m.j;

/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class c extends j<Host> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FuLao2Launch2Activity f3896e;

    public c(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.f3896e = fuLao2Launch2Activity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.getMessage();
        f.a();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(Host host) {
        Host host2 = host;
        FuLao2Launch2Activity fuLao2Launch2Activity = this.f3896e;
        if (!fuLao2Launch2Activity.b) {
            fuLao2Launch2Activity.b = true;
            b.z = host2.getBestImage();
            b.y = host2.getBestApi();
            if (TextUtils.isEmpty(VideoInfo.StreamHost)) {
                VideoInfo.StreamHost = host2.getDefaultStream();
            }
            FuLao2Activity.f699d = host2;
            FuLao2Launch2Activity fuLao2Launch2Activity2 = this.f3896e;
            if (fuLao2Launch2Activity2.b && fuLao2Launch2Activity2.f705g) {
                FuLao2Activity.m(fuLao2Launch2Activity2);
                fuLao2Launch2Activity2.finish();
            }
        }
    }
}
