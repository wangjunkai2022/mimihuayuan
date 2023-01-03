package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.slf.SearchActivity;
import com.comeback.data.ui.slf.adapter.CategoriesAdapter;
import com.comeback.data.ui.slf.adapter.ImageAdapter;
import com.comeback.data.ui.slf.bean.HomeDataBean;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k0.h.d;
import f.i.b.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ImageFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f2036i;
    @BindView
    public RecyclerView rvCategories;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeDataBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ImageFragment imageFragment = ImageFragment.this;
            imageFragment.f2036i = true;
            imageFragment.refreshLayout.A = false;
            CategoriesAdapter categoriesAdapter = new CategoriesAdapter(imageFragment.getContext(), e.a("Xg8CAw4="));
            imageFragment.rvCategories.setLayoutManager(new GridLayoutManager(imageFragment.getContext(), 4));
            imageFragment.rvCategories.setAdapter(categoriesAdapter);
            categoriesAdapter.a(((HomeDataBean) obj).getCategories());
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<ArrayList<SLFItemBean>> {
        public b() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ImageFragment.m(ImageFragment.this, (ArrayList) obj);
        }
    }

    /* loaded from: classes.dex */
    public class c extends GridLayoutManager.SpanSizeLookup {
        public c(ImageFragment imageFragment) {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i2) {
            return i2 == 0 ? 2 : 1;
        }
    }

    public static void m(ImageFragment imageFragment, ArrayList arrayList) {
        imageFragment.f117h.a(arrayList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_slf_cartoon;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ImageAdapter(getContext(), 1);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 2);
        gridLayoutManager.setSpanSizeLookup(new c(this));
        return gridLayoutManager;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1 && !this.f2036i) {
            g(f.e.a.j.k0.h.b.a().r(d.a("")), new a());
        }
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        g(f.e.a.j.k0.h.b.a().i(d.a(rVar.toString())), new b());
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() == R.id.tv_search) {
            SearchActivity.x(getContext(), e.a("Xg8CAw4="));
        }
    }
}
