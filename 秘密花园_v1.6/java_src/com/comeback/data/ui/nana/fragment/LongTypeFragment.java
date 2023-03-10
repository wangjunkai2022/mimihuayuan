package com.comeback.data.ui.nana.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.nana.adapter.TypeAdapter;
import com.comeback.data.ui.nana.bean.TypeBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.m.d;
/* loaded from: classes.dex */
public class LongTypeFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<TypeBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            LongTypeFragment.this.refreshLayout.t(false);
            LongTypeFragment longTypeFragment = LongTypeFragment.this;
            longTypeFragment.refreshLayout.A = false;
            longTypeFragment.f117h.a(((TypeBean) obj).getResponse().getCategories());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new TypeAdapter(getContext(), e.a("Ww0NAw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.h0.m.e.a().j(e.a("Ww0NAw=="), d.a), new a());
    }
}
