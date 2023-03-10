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
import java.util.HashMap;
/* loaded from: classes.dex */
public class VideoListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1881i;

    /* renamed from: j  reason: collision with root package name */
    public String f1882j;

    /* renamed from: k  reason: collision with root package name */
    public String f1883k;

    /* renamed from: l  reason: collision with root package name */
    public String f1884l;

    /* renamed from: m  reason: collision with root package name */
    public int f1885m;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoListBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1886f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1886f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoListBean videoListBean = (VideoListBean) obj;
            if (this.f1886f == 1) {
                VideoListFragment.this.f117h.c();
            }
            VideoListFragment.this.f117h.a(videoListBean.getResponse().getVideos());
        }
    }

    public static BaseFragment o(int i2, String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("WgcNETQaXQ=="), i2);
        bundle.putString(e.a("QQsHAQQsTUoDAw=="), str);
        bundle.putString(e.a("WBAHARk="), str2);
        bundle.putString(e.a("Qw0T"), str3);
        VideoListFragment videoListFragment = new VideoListFragment();
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    public static BaseFragment p(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QQsHAQQsTUoDAw=="), str);
        bundle.putString(e.a("WBAHARk="), str2);
        bundle.putString(e.a("VAMXAQwcS0o="), str3);
        VideoListFragment videoListFragment = new VideoListFragment();
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1885m = getArguments().getInt(e.a("WgcNETQaXQ=="), 0);
        this.f1881i = getArguments().getString(e.a("QQsHAQQsTUoDAw=="), "");
        this.f1882j = getArguments().getString(e.a("WBAHARk="), "");
        this.f1883k = getArguments().getString(e.a("Qw0T"), "");
        this.f1884l = getArguments().getString(e.a("VAMXAQwcS0o="), "");
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
        if (this.f1881i.equals(e.a("Ww0NAw=="))) {
            return new LinearLayoutManager(getContext());
        }
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("Qw0IAQU="), d.a);
        hashMap.put(e.a("QQsHAQQsTUoDAw=="), this.f1881i);
        hashMap.put(e.a("WBAHARk="), this.f1882j);
        hashMap.put(e.a("Qw0T"), this.f1883k);
        hashMap.put(e.a("VAMXAQwcS0o="), this.f1884l);
        g(f.e.a.j.h0.m.e.a().d(this.f1885m, hashMap), new a(i2));
    }
}
