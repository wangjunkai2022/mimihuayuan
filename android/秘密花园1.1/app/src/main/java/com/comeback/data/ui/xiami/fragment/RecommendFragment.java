package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.xiami.adapter.TitleAdapter;
import com.comeback.data.ui.xiami.adapter.VideoVAdapter;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.data.ui.xiami.bean.HomeBean;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.p0.f.d;

/* loaded from: classes.dex */
public class RecommendFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            RecommendFragment.p(RecommendFragment.this, (HomeBean) obj);
        }
    }

    public static void p(RecommendFragment recommendFragment, HomeBean homeBean) {
        SmartRefreshLayout smartRefreshLayout = recommendFragment.refreshLayout;
        smartRefreshLayout.A = false;
        smartRefreshLayout.t(false);
        for (HomeBean.DataBean.VideoBean videoBean : homeBean.getData().getVideo()) {
            recommendFragment.f120i.b(new TitleAdapter(recommendFragment.getContext(), videoBean, new c()));
            g gVar = new g(2);
            gVar.D(15);
            gVar.s = true;
            recommendFragment.f120i.b(new VideoVAdapter(recommendFragment.getContext(), videoBean.getInfo(), gVar));
        }
    }

    public static RecommendFragment q(Category.DataBean dataBean) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBSkWWF0="), dataBean);
        RecommendFragment recommendFragment = new RecommendFragment();
        recommendFragment.setArguments(bundle);
        return recommendFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        Category.DataBean dataBean = (Category.DataBean) getArguments().getParcelable(e.a("UwMXBSkWWF0="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(d.a().e(), new a());
    }
}
