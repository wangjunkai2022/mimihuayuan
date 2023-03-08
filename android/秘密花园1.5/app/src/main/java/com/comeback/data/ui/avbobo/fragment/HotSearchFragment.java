package com.comeback.data.ui.avbobo.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.avbobo.adapter.RankHotSearchAdapter;
import com.comeback.data.ui.avbobo.bean.RankHotSearch;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.e.a.j.b.g.d;

/* loaded from: classes.dex */
public class HotSearchFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RankHotSearch> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HotSearchFragment.this.f117h.a(((RankHotSearch) obj).getData());
            SmartRefreshLayout smartRefreshLayout = HotSearchFragment.this.refreshLayout;
            smartRefreshLayout.A = false;
            smartRefreshLayout.U = true;
            smartRefreshLayout.B = false;
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.t(false);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new RankHotSearchAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(d.a().a(), new a());
    }
}
