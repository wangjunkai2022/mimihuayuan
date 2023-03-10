package f.e.a.j.d0.l;

import com.comeback.data.ui.maomi.bean.SpecialList;
import com.comeback.data.ui.maomi.fragment.VideoFragment;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import m.j;
/* compiled from: VideoFragment.java */
/* loaded from: classes.dex */
public class b extends j<SpecialList> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ VideoFragment f3920e;

    public b(VideoFragment videoFragment) {
        this.f3920e = videoFragment;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        SmartRefreshLayout smartRefreshLayout;
        smartRefreshLayout = this.f3920e.refreshLayout;
        smartRefreshLayout.h();
    }

    @Override // m.j
    public void f(SpecialList specialList) {
        VideoFragment videoFragment = this.f3920e;
        videoFragment.f1704j = specialList;
        videoFragment.l(1);
    }
}
