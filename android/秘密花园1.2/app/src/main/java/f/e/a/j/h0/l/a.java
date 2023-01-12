package f.e.a.j.h0.l;

import com.comeback.data.ui.nana.adapter.VSearchAdapter;
import com.comeback.data.ui.nana.bean.MenuBean;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.data.ui.nana.fragment.RecommendFragment;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import m.j;

/* compiled from: RecommendFragment.java */
/* loaded from: classes.dex */
public class a extends j<VideoListBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f3948e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ MenuBean.ResponseEntity f3949f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ MenuBean f3950g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ RecommendFragment f3951h;

    public a(RecommendFragment recommendFragment, int i2, MenuBean.ResponseEntity responseEntity, MenuBean menuBean) {
        this.f3951h = recommendFragment;
        this.f3948e = i2;
        this.f3949f = responseEntity;
        this.f3950g = menuBean;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(VideoListBean videoListBean) {
        SmartRefreshLayout smartRefreshLayout;
        VideoListBean videoListBean2 = videoListBean;
        if (this.f3948e == 0) {
            smartRefreshLayout = this.f3951h.refreshLayout;
            smartRefreshLayout.m(true);
            this.f3951h.refreshLayout.t(false);
            RecommendFragment recommendFragment = this.f3951h;
            recommendFragment.refreshLayout.A = false;
            recommendFragment.f120i.b(new VSearchAdapter(recommendFragment.getContext(), true, new f.a.a.a.l.c()));
        }
        RecommendFragment.s(this.f3951h, this.f3949f, videoListBean2);
        RecommendFragment.q(this.f3951h, this.f3950g, this.f3948e + 1);
    }
}
