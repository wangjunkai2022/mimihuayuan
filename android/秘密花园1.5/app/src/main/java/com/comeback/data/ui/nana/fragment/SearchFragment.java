package com.comeback.data.ui.nana.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.nana.adapter.VideoAdapter;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.m.d;

/* loaded from: classes.dex */
public class SearchFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1871i;

    /* renamed from: j  reason: collision with root package name */
    public String f1872j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoListBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1873f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1873f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoListBean videoListBean = (VideoListBean) obj;
            if (this.f1873f == 1) {
                SearchFragment.this.f117h.c();
            }
            SearchFragment.this.f117h.a(videoListBean.getResponse().getVideos());
        }
    }

    public static BaseFragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QQsHAQQsTUoDAw=="), str);
        bundle.putString(e.a("XAca"), str2);
        SearchFragment searchFragment = new SearchFragment();
        searchFragment.setArguments(bundle);
        return searchFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1871i = getArguments().getString(e.a("QQsHAQQsTUoDAw=="), "");
        this.f1872j = getArguments().getString(e.a("XAca"), "");
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        if (this.f1871i.equals(e.a("Ww0NAw=="))) {
            return new LinearLayoutManager(getContext());
        }
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.h0.m.e.a().l(this.f1871i, this.f1872j, d.a), new a(i2));
    }
}
