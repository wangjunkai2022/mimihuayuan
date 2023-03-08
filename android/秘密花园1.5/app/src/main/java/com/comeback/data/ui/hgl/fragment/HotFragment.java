package com.comeback.data.ui.hgl.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.hgl.adapter.HotListAdapter;
import com.comeback.data.ui.hgl.bean.ListBean;
import f.e.a.j.i0.c;

/* loaded from: classes.dex */
public class HotFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ListBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HotFragment.this.f117h.a(((ListBean) obj).getData().getInfo().get(0).getList());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.mRvList.setPadding(10, 0, 10, 0);
        this.refreshLayout.t(false);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new HotListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(c.a().f(), new a());
    }
}
