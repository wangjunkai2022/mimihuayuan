package com.comeback.data.ui.xj.fragment;

import com.comeback.data.base.Banner2Adapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.xj.SpecialDetailActivity;
import com.comeback.data.ui.xj.adapter.VHomeTypeAdapter;
import com.comeback.data.ui.xj.adapter.VMovie1Adapter;
import com.comeback.data.ui.xj.adapter.VMovieItemAdapter;
import com.comeback.data.ui.xj.adapter.VTitle2Adapter;
import com.comeback.data.ui.xj.bean.HomeData;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.a.a.a.l.l;
import f.e.a.e;
import f.e.a.j.r0.f.b;
import java.util.List;

/* loaded from: classes.dex */
public class HomeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public HomeData f2255j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeData> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeData homeData = (HomeData) obj;
            HomeFragment homeFragment = HomeFragment.this;
            homeFragment.f2255j = homeData;
            homeFragment.f120i.b(new Banner2Adapter(homeFragment.getContext(), new i(), homeData.getData().getV2sliderows(), new f.e.a.j.r0.e.a(homeFragment)));
            homeFragment.f120i.b(new VHomeTypeAdapter(homeFragment.getContext(), new l()));
            List<VideoBean> dayrows = homeData.getData().getDayrows();
            homeFragment.f120i.b(new VTitle2Adapter(homeFragment.getContext(), e.a("3sT6jP763JfHgKnG"), new c()));
            homeFragment.f120i.b(new VMovie1Adapter(homeFragment.getContext(), dayrows, new i(10)));
            homeFragment.q(homeData.getData().getLatestrows(), e.a("0f7jgv3D0ZT1j5b2"));
            homeFragment.q(homeData.getData().getLikerows(), e.a("0O7/gNbT3KXvgJjF"));
            homeFragment.q(homeData.getData().getA_vodrows(), e.a("0uPUguD+0bTZgL/q"));
            homeFragment.q(homeData.getData().getB_vodrows(), e.a("0erzgNHJ3LnbgIjM"));
            homeFragment.q(homeData.getData().getC_vodrows(), e.a("0Nnsge7L3Y/VgaTh"));
            homeFragment.q(homeData.getData().getD_vodrows(), e.a("09rOgv303J7kg43y"));
            homeFragment.q(homeData.getData().getTagvodrows(), e.a("09rujfD20ZT1j5b2"));
            homeFragment.q(homeData.getData().getHotrows(), e.a("0OHOg+L00ZT1j5b2"));
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xj_home;
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.t(false);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (this.f2255j != null) {
            this.refreshLayout.j(true);
            this.refreshLayout.k();
            return;
        }
        g(b.a().j(), new a());
    }

    public /* synthetic */ void p(f.e.a.g.a aVar) {
        SpecialDetailActivity.x(getContext(), aVar.getId());
    }

    public final void q(List<VideoBean> list, String str) {
        if (list.size() > 6) {
            list = list.subList(0, 6);
        }
        this.f120i.b(new VTitle2Adapter(getContext(), str, new c()));
        g gVar = new g(2);
        gVar.D(5);
        gVar.C(5);
        gVar.s = true;
        this.f120i.b(new VMovieItemAdapter(getContext(), list, gVar));
    }
}
