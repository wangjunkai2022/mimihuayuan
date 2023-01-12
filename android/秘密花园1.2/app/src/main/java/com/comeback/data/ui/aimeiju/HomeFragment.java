package com.comeback.data.ui.aimeiju;

import android.os.Bundle;
import com.comeback.data.base.BannerAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.aimeiju.adapter.MovieItemAdapter;
import com.comeback.data.ui.aimeiju.adapter.TitleAdapter;
import com.comeback.data.ui.aimeiju.bean.BannerBean;
import com.comeback.data.ui.aimeiju.bean.ListBean;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.l;
import f.e.a.j.a.e;
import f.e.a.j.a.f.f;
import java.util.List;

/* loaded from: classes.dex */
public class HomeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f127j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<BannerBean> {
        public a() {
            super();
        }

        @Override // com.comeback.data.base.BaseRefreshFragment.a, m.j
        public void e(Throwable th) {
            super.e(th);
            HomeFragment.this.s();
        }

        @Override // m.j
        public void f(Object obj) {
            List<BannerBean.DataBean> data = ((BannerBean) obj).getData();
            HomeFragment.this.f120i.a(0, new BannerAdapter(HomeFragment.this.getContext(), new l(), data, new e(this)));
            HomeFragment.this.s();
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<ListBean> {
        public b() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeFragment.r(HomeFragment.this, (ListBean) obj);
        }
    }

    public static void r(HomeFragment homeFragment, ListBean listBean) {
        if (homeFragment != null) {
            for (ListBean.DataBean dataBean : listBean.getData()) {
                homeFragment.f120i.b(new TitleAdapter(homeFragment.getContext(), dataBean, new c()));
                g gVar = new g(3);
                gVar.D(5);
                gVar.C(5);
                gVar.s = true;
                homeFragment.f120i.b(new MovieItemAdapter(homeFragment.getContext(), dataBean.getVod(), gVar));
            }
            return;
        }
        throw null;
    }

    public static HomeFragment t(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(f.e.a.e.a("XgY="), str);
        HomeFragment homeFragment = new HomeFragment();
        homeFragment.setArguments(bundle);
        return homeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f127j = getArguments().getString(f.e.a.e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1) {
            this.f120i.d();
            g(f.a().e(10, 1, this.f127j), new a());
            return;
        }
        s();
    }

    public final void s() {
        m.e<ListBean> g2;
        if (this.f127j.equals(f.e.a.e.a("Bw=="))) {
            g2 = f.a().c(20, 6, f.e.a.e.a("Bg=="));
        } else {
            g2 = f.a().g(20, 6, this.f127j);
        }
        g(g2, new b());
    }
}
