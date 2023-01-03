package f.e.a.j.g0.l;

import com.comeback.data.ui.nana.adapter.VSearchAdapter;
import com.comeback.data.ui.nana.bean.MenuBean;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.data.ui.nana.fragment.RecommendFragment;
import f.a.a.a.l.c;
import m.j;

/* compiled from: RecommendFragment.java */
/* loaded from: classes.dex */
public class a extends j<VideoListBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f3872e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ MenuBean.ResponseEntity f3873f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ MenuBean f3874g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ RecommendFragment f3875h;

    public a(RecommendFragment recommendFragment, int i2, MenuBean.ResponseEntity responseEntity, MenuBean menuBean) {
        this.f3875h = recommendFragment;
        this.f3872e = i2;
        this.f3873f = responseEntity;
        this.f3874g = menuBean;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(VideoListBean videoListBean) {
        VideoListBean videoListBean2 = videoListBean;
        if (this.f3872e == 0) {
            this.f3875h.refreshLayout.m(true);
            this.f3875h.refreshLayout.t(false);
            RecommendFragment recommendFragment = this.f3875h;
            recommendFragment.refreshLayout.A = false;
            recommendFragment.f120i.b(new VSearchAdapter(recommendFragment.getContext(), true, new c()));
        }
        RecommendFragment.s(this.f3875h, this.f3873f, videoListBean2);
        RecommendFragment.q(this.f3875h, this.f3874g, this.f3872e + 1);
    }
}
