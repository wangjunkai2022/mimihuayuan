package com.comeback.data.ui.tv91.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.tv91.adapter.VideoListAdapter;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.data.ui.tv91.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.n0.i.b;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f2119i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeTypeFragment.m(HomeTypeFragment.this, (VideoList) obj);
        }
    }

    public static void m(HomeTypeFragment homeTypeFragment, VideoList videoList) {
        if (homeTypeFragment.f116g == 1) {
            homeTypeFragment.f117h.c();
        }
        homeTypeFragment.f117h.a(videoList.getMessage().getMovies());
    }

    public static HomeTypeFragment n(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2119i = getArguments().getInt(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().b(TiktopParam.buildChannelListParams(this.f2119i, i2)), new a());
    }
}
