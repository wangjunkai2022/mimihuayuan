package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.slf.HistoryActivity;
import com.comeback.data.ui.slf.SearchActivity;
import com.comeback.data.ui.slf.adapter.CategoriesAdapter;
import com.comeback.data.ui.slf.adapter.ComicHAdapter;
import com.comeback.data.ui.slf.adapter.ComicVAdapter;
import com.comeback.data.ui.slf.adapter.ComicVAdapter2;
import com.comeback.data.ui.slf.adapter.TitleAdapter;
import com.comeback.data.ui.slf.bean.HomeDataBean;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.e;
import f.e.a.j.k0.h.d;
import f.i.b.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CartoonFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public boolean f2023j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2024k;
    @BindView
    public RecyclerView rvCategories;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeDataBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeDataBean homeDataBean = (HomeDataBean) obj;
            CartoonFragment cartoonFragment = CartoonFragment.this;
            cartoonFragment.f2023j = true;
            cartoonFragment.refreshLayout.A = false;
            CategoriesAdapter categoriesAdapter = new CategoriesAdapter(cartoonFragment.getContext(), e.a("VAMREAQcVw=="));
            cartoonFragment.rvCategories.setLayoutManager(new GridLayoutManager(cartoonFragment.getContext(), 4));
            cartoonFragment.rvCategories.setAdapter(categoriesAdapter);
            categoriesAdapter.a(homeDataBean.getCategories());
            HomeDataBean.NewBean newX = homeDataBean.getNewX();
            HomeDataBean.NewBean special = homeDataBean.getSpecial();
            if (!(newX == null || newX.getItems().size() == 0)) {
                cartoonFragment.f120i.a(0, new TitleAdapter(cartoonFragment.getContext(), newX.getTitle(), new c()));
                g gVar = new g(3);
                gVar.D(5);
                gVar.C(5);
                gVar.s = true;
                cartoonFragment.f120i.a(1, new ComicVAdapter(cartoonFragment.getContext(), newX.getItems(), gVar));
            }
            if (special != null && special.getItems().size() != 0) {
                cartoonFragment.f120i.a(2, new TitleAdapter(cartoonFragment.getContext(), special.getTitle(), new c()));
                g gVar2 = new g(2);
                gVar2.D(5);
                gVar2.C(5);
                gVar2.s = true;
                cartoonFragment.f120i.a(3, new ComicHAdapter(cartoonFragment.getContext(), special.getItems(), gVar2));
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<ArrayList<SLFItemBean>> {
        public b() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            CartoonFragment cartoonFragment = CartoonFragment.this;
            if (!cartoonFragment.f2024k) {
                cartoonFragment.f2024k = true;
                cartoonFragment.f120i.b(new TitleAdapter(cartoonFragment.getContext(), e.a("0sbEgcXF0LDOg6jPn/bo"), new c()));
            }
            cartoonFragment.f120i.b(new ComicVAdapter2(cartoonFragment.getContext(), arrayList, new i()));
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_slf_cartoon;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1 && !this.f2023j) {
            g(f.e.a.j.k0.h.b.a().h(d.a("")), new a());
        }
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        g(f.e.a.j.k0.h.b.a().q(d.a(rVar.toString())), new b());
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.iv_history) {
            HistoryActivity.p(getContext());
        } else if (id == R.id.tv_search) {
            SearchActivity.x(getContext(), e.a("VAMREAQcVw=="));
        }
    }
}
