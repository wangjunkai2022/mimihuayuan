package com.comeback.data.ui.maomi.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.commom.PPTAdapter;
import com.comeback.data.ui.maomi.SpecialDetailActivity;
import com.comeback.data.ui.maomi.adapter.HomeHeaderAdapter;
import com.comeback.data.ui.maomi.adapter.HomeTitleAdapter;
import com.comeback.data.ui.maomi.adapter.MovieItemAdapter;
import com.comeback.data.ui.maomi.bean.HomeData;
import com.comeback.data.ui.maomi.bean.SpecialList;
import com.comeback.data.ui.maomi.fragment.VideoFragment;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.l;
import f.a.a.a.l.m;
import f.e.a.j.d0.l.b;
import f.e.a.j.d0.m.d;
/* loaded from: classes.dex */
public class VideoFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public SpecialList f1704j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeData> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VideoFragment.p(VideoFragment.this, (HomeData) obj);
        }
    }

    public static void p(VideoFragment videoFragment, HomeData homeData) {
        if (videoFragment != null) {
            for (HomeData.DataBean dataBean : homeData.getData()) {
                videoFragment.f120i.b(new HomeTitleAdapter(videoFragment.getContext(), dataBean, new c()));
                g gVar = new g(3);
                gVar.q(15, 0, 15, 0);
                gVar.D(15);
                gVar.C(15);
                gVar.s = true;
                videoFragment.f120i.b(new MovieItemAdapter(videoFragment.getContext(), dataBean, gVar));
            }
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.t(false);
        this.mRvList.setBackgroundColor(-1);
        g(d.a().q(), new b(this));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (this.f1704j == null) {
            return;
        }
        m();
        g(d.a().j(), new a());
        this.f120i.b(new HomeHeaderAdapter(getContext(), new m()));
        l lVar = new l();
        lVar.p(0, 0, 0, 0);
        PPTAdapter pPTAdapter = new PPTAdapter(getContext(), lVar, this.f1704j);
        this.f120i.b(pPTAdapter);
        pPTAdapter.f393c = new PPTAdapter.b() { // from class: f.e.a.j.d0.l.a
            @Override // com.comeback.data.ui.commom.PPTAdapter.b
            public final void a(int i3) {
                VideoFragment.this.r(i3);
            }
        };
        this.refreshLayout.A = false;
    }

    public /* synthetic */ void r(int i2) {
        SpecialList.DataBean dataBean = this.f1704j.getData().get(i2);
        SpecialDetailActivity.w(getContext(), dataBean.getId(), dataBean.getName(), dataBean.getDescribe(), dataBean.getImage());
    }
}
