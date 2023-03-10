package com.comeback.data.ui.gkj.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.gkj.adapter.NComic2Adapter;
import com.comeback.data.ui.gkj.adapter.NComic3Adapter;
import com.comeback.data.ui.gkj.adapter.NVideo2Adapter;
import com.comeback.data.ui.gkj.adapter.NVideo3Adapter;
import com.comeback.data.ui.gkj.adapter.Title2Adapter;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public int f1069j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NavBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeTypeFragment.p(HomeTypeFragment.this, (NavBean) obj);
        }
    }

    public static void p(HomeTypeFragment homeTypeFragment, NavBean navBean) {
        if (homeTypeFragment != null) {
            for (NavBean.DataEntity dataEntity : navBean.getData()) {
                if (dataEntity.getStyle() == 4) {
                    homeTypeFragment.f120i.b(new Title2Adapter(homeTypeFragment.getContext(), dataEntity, new c()));
                    g gVar = new g(2);
                    gVar.D(5);
                    gVar.C(5);
                    gVar.s = true;
                    if (dataEntity.getType() == 3) {
                        homeTypeFragment.f120i.b(new NComic2Adapter(homeTypeFragment.getContext(), dataEntity.getArticleVOS(), gVar));
                    } else if (dataEntity.getType() == 1) {
                        homeTypeFragment.f120i.b(new NVideo2Adapter(homeTypeFragment.getContext(), dataEntity.getArticleVOS(), gVar));
                    }
                } else if (dataEntity.getStyle() == 3) {
                    homeTypeFragment.f120i.b(new Title2Adapter(homeTypeFragment.getContext(), dataEntity, new c()));
                    g gVar2 = new g(3);
                    gVar2.D(5);
                    gVar2.C(5);
                    gVar2.s = true;
                    if (dataEntity.getType() == 3) {
                        homeTypeFragment.f120i.b(new NComic3Adapter(homeTypeFragment.getContext(), dataEntity.getArticleVOS(), gVar2));
                    } else if (dataEntity.getType() == 1) {
                        homeTypeFragment.f120i.b(new NVideo3Adapter(homeTypeFragment.getContext(), dataEntity.getArticleVOS(), gVar2));
                    }
                }
            }
            return;
        }
        throw null;
    }

    public static HomeTypeFragment q(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("WQMVLQ8="), i2);
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1069j = getArguments().getInt(e.a("WQMVLQ8="));
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.n.p.e.b().k(this.f1069j, i2 - 1, 10), new a());
    }
}
