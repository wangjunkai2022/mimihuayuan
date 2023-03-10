package com.comeback.data.ui.cm.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cm.adapter.HomeAdapter;
import com.comeback.data.ui.cm.bean.HomeBean;
import com.comeback.secret.garden.R;
import f.e.a.j.e.f.b;
/* loaded from: classes.dex */
public class HomeFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeFragment.this.f117h.c();
            HomeFragment.this.f117h.a(((HomeBean) obj).getRescont());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cm_home;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new HomeAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1) {
            g(b.a().e(), new a());
        }
    }
}
