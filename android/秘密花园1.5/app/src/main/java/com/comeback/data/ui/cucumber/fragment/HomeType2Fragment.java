package com.comeback.data.ui.cucumber.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.TitleAdapter;
import com.comeback.data.ui.cucumber.adapter.VideoVAdapter;
import com.comeback.data.ui.cucumber.bean.DefaultChannel;
import com.comeback.data.ui.cucumber.bean.SelectionQuery;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.e.a.e;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class HomeType2Fragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public DefaultChannel.DataBean f502j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SelectionQuery> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeType2Fragment.p(HomeType2Fragment.this, ((SelectionQuery) obj).getData());
        }
    }

    public static void p(HomeType2Fragment homeType2Fragment, List list) {
        SmartRefreshLayout smartRefreshLayout = homeType2Fragment.refreshLayout;
        smartRefreshLayout.A = false;
        smartRefreshLayout.t(false);
        homeType2Fragment.mRvList.setPadding(30, 0, 30, 0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SelectionQuery.DataBean dataBean = (SelectionQuery.DataBean) it.next();
            homeType2Fragment.f120i.b(new TitleAdapter(homeType2Fragment.getContext(), dataBean, new c()));
            homeType2Fragment.f120i.b(VideoVAdapter.d(homeType2Fragment.getContext(), dataBean));
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f502j = (DefaultChannel.DataBean) getArguments().getParcelable(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.g.h.c.a().k(this.f502j.getParentModule()), new a());
    }
}
