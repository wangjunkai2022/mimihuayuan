package com.comeback.data.ui.bale.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.bale.adapter.MovieItemAdapter;
import com.comeback.data.ui.bale.adapter.TitleAdapter;
import com.comeback.data.ui.bale.bean.VideoList;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.d.e.b;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f299j;

    /* renamed from: k  reason: collision with root package name */
    public int f300k;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            SmartRefreshLayout smartRefreshLayout = HomeTypeFragment.this.refreshLayout;
            smartRefreshLayout.A = false;
            smartRefreshLayout.t(false);
            HomeTypeFragment homeTypeFragment = HomeTypeFragment.this;
            if (homeTypeFragment != null) {
                for (VideoList.ResultBean resultBean : videoList.getResult()) {
                    homeTypeFragment.f120i.b(new TitleAdapter(homeTypeFragment.getContext(), resultBean, homeTypeFragment.f300k, new c()));
                    g gVar = new g(2);
                    gVar.q(15, 0, 15, 0);
                    gVar.s = true;
                    homeTypeFragment.f120i.b(new MovieItemAdapter(homeTypeFragment.getContext(), resultBean, gVar));
                }
                return;
            }
            throw null;
        }
    }

    public static BaseFragment q(String str, int i2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QwME"), str);
        bundle.putInt(e.a("QwMELQ8="), i2);
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f299j = getArguments().getString(e.a("QwME"));
        this.f300k = getArguments().getInt(e.a("QwMELQ8="));
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().b(this.f299j), new a());
    }
}
