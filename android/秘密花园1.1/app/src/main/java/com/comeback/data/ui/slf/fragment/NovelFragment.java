package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.slf.SearchActivity;
import com.comeback.data.ui.slf.adapter.CategoriesAdapter;
import com.comeback.data.ui.slf.adapter.NovelAdapter;
import com.comeback.data.ui.slf.adapter.Title2Adapter;
import com.comeback.data.ui.slf.adapter.Title3Adapter;
import com.comeback.data.ui.slf.bean.HomeDataBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.i;
import f.e.a.e;
import f.e.a.j.k0.h.d;
import f.i.b.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class NovelFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public boolean f2048j;
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
            NovelFragment novelFragment = NovelFragment.this;
            novelFragment.f2048j = true;
            novelFragment.refreshLayout.A = false;
            CategoriesAdapter categoriesAdapter = new CategoriesAdapter(novelFragment.getContext(), e.a("RBYMFhI="));
            novelFragment.rvCategories.setLayoutManager(new GridLayoutManager(novelFragment.getContext(), 4));
            novelFragment.rvCategories.setAdapter(categoriesAdapter);
            categoriesAdapter.a(homeDataBean.getCategories());
            HomeDataBean.NewBean newX = homeDataBean.getNewX();
            novelFragment.f120i.a(0, new Title2Adapter(novelFragment.getContext(), newX.getTitle(), newX.getSubTitle(), new c()));
            novelFragment.f120i.a(1, new NovelAdapter(novelFragment.getContext(), newX.getItems(), new i()));
            HomeDataBean.NewBean rank = homeDataBean.getRank();
            novelFragment.f120i.a(2, new Title2Adapter(novelFragment.getContext(), rank.getTitle(), rank.getSubTitle(), new c()));
            novelFragment.f120i.a(3, new NovelAdapter(novelFragment.getContext(), rank.getItems(), new i()));
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<ArrayList<HomeDataBean.NewBean>> {
        public b() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            NovelFragment.p(NovelFragment.this, (ArrayList) obj);
        }
    }

    public static void p(NovelFragment novelFragment, ArrayList arrayList) {
        if (novelFragment != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                HomeDataBean.NewBean newBean = (HomeDataBean.NewBean) it.next();
                novelFragment.f120i.b(new Title3Adapter(novelFragment.getContext(), newBean.getTitle(), new c()));
                novelFragment.f120i.b(new NovelAdapter(novelFragment.getContext(), newBean.getItems(), new i()));
            }
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_slf_cartoon;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1 && !this.f2048j) {
            g(f.e.a.j.k0.h.b.a().k(new HashMap<>()), new a());
        }
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        g(f.e.a.j.k0.h.b.a().j(d.a(rVar.toString())), new b());
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.tv_search) {
            return;
        }
        SearchActivity.x(getContext(), e.a("RBYMFhI="));
    }
}
