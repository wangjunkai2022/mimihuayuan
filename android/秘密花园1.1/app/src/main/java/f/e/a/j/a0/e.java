package f.e.a.j.a0;

import com.comeback.data.ui.lutube.LutubeLaunchActivity;
import com.comeback.data.ui.lutube.bean.HostInfo;
import m.j;

/* compiled from: LutubeLaunchActivity.java */
/* loaded from: classes.dex */
public class e extends j<HostInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LutubeLaunchActivity f3818e;

    public e(LutubeLaunchActivity lutubeLaunchActivity) {
        this.f3818e = lutubeLaunchActivity;
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
    public void f(HostInfo hostInfo) {
        HostInfo hostInfo2 = hostInfo;
        LutubeLaunchActivity lutubeLaunchActivity = this.f3818e;
        if (lutubeLaunchActivity.f1397c) {
            return;
        }
        LutubeLaunchActivity.l(lutubeLaunchActivity, hostInfo2);
    }
}
