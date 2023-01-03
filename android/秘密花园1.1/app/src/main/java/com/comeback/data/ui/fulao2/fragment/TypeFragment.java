package com.comeback.data.ui.fulao2.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fulao2.adapter.VideoTypeAdapter;
import com.comeback.data.ui.fulao2.bean.VideoType;
import f.e.a.j.k.h.f;

/* loaded from: classes.dex */
public class TypeFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoType> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            TypeFragment.this.refreshLayout.t(false);
            TypeFragment typeFragment = TypeFragment.this;
            typeFragment.refreshLayout.A = false;
            typeFragment.f117h.a(((VideoType) obj).getResponse().getCategories());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoTypeAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.b().i(String.valueOf(System.currentTimeMillis() / 1000)), new a());
    }
}
