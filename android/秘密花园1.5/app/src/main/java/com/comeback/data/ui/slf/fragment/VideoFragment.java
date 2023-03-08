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
import com.comeback.data.ui.slf.adapter.ComicHAdapter;
import com.comeback.data.ui.slf.adapter.ComicHAdapter2;
import com.comeback.data.ui.slf.adapter.TitleAdapter;
import com.comeback.data.ui.slf.bean.HomeDataBean;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.e;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public boolean f2139j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2140k;
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
            VideoFragment videoFragment = VideoFragment.this;
            videoFragment.f2139j = true;
            videoFragment.refreshLayout.A = false;
            CategoriesAdapter categoriesAdapter = new CategoriesAdapter(videoFragment.getContext(), e.a("QQsHAQQ="));
            videoFragment.rvCategories.setLayoutManager(new GridLayoutManager(videoFragment.getContext(), 4));
            videoFragment.rvCategories.setAdapter(categoriesAdapter);
            categoriesAdapter.a(homeDataBean.getCategories());
            HomeDataBean.NewBean newX = homeDataBean.getNewX();
            HomeDataBean.NewBean special = homeDataBean.getSpecial();
            if (newX != null && newX.getItems().size() != 0) {
                videoFragment.f120i.a(0, new TitleAdapter(videoFragment.getContext(), newX.getTitle(), new c()));
                g gVar = new g(2);
                gVar.D(5);
                gVar.C(5);
                gVar.s = true;
                videoFragment.f120i.a(1, new ComicHAdapter(videoFragment.getContext(), newX.getItems(), gVar, true));
            }
            if (special == null || special.getItems().size() == 0) {
                return;
            }
            videoFragment.f120i.a(2, new TitleAdapter(videoFragment.getContext(), special.getTitle(), new c()));
            g gVar2 = new g(2);
            gVar2.D(5);
            gVar2.C(5);
            gVar2.s = true;
            videoFragment.f120i.a(3, new ComicHAdapter(videoFragment.getContext(), special.getItems(), gVar2, true));
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
            VideoFragment videoFragment = VideoFragment.this;
            if (!videoFragment.f2140k) {
                videoFragment.f2140k = true;
                videoFragment.f120i.b(new TitleAdapter(videoFragment.getContext(), e.a("0sbEgcXF0LDOg6jPn/bo"), new c()));
            }
            videoFragment.f120i.b(new ComicHAdapter2(videoFragment.getContext(), arrayList, new i(), true));
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_slf_cartoon;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1 && !this.f2139j) {
            g(f.e.a.j.l0.h.b.a().p(d.a("")), new a());
        }
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        g(f.e.a.j.l0.h.b.a().g(d.a(rVar.toString())), new b());
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.tv_search) {
            return;
        }
        SearchActivity.x(getContext(), e.a("QQsHAQQ="));
    }
}
