package com.comeback.data.ui.tv91.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.tv91.adapter.StarAdapter;
import com.comeback.data.ui.tv91.bean.StarBean;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.secret.garden.R;
import f.e.a.j.o0.i.b;
/* loaded from: classes.dex */
public class StarFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<StarBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2200f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2200f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            StarBean starBean = (StarBean) obj;
            if (this.f2200f == 1) {
                StarFragment.this.f117h.c();
            }
            StarFragment.this.f117h.a(starBean.getMessage().getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_tv91_star;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new StarAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().a(TiktopParam.buildStarList(i2)), new a(i2));
    }
}
