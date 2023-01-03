package com.comeback.data.ui.fulao2.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.OnClick;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fulao2.ScreenActivity;
import com.comeback.data.ui.fulao2.SearchActivity;
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k.h.b;
import f.e.a.j.k.h.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f787i;

    /* renamed from: j  reason: collision with root package name */
    public String f788j;

    /* renamed from: k  reason: collision with root package name */
    public String f789k;

    /* renamed from: l  reason: collision with root package name */
    public String f790l;

    /* renamed from: m  reason: collision with root package name */
    public int f791m;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f792f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f792f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f792f == 1) {
                VideoListFragment.this.f117h.c();
            }
            VideoListFragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static VideoListFragment o(int i2, String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgwHARM="), i2);
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("Qw0T"), str2);
        bundle.putString(e.a("QQsHAQQsTUoDAw=="), str3);
        bundle.putString(e.a("WBAHARk="), str4);
        VideoListFragment videoListFragment = new VideoListFragment();
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f791m = getArguments().getInt(e.a("XgwHARM="));
        this.f787i = getArguments().getString(e.a("QxsTAQ=="));
        this.f788j = getArguments().getString(e.a("Qw0T"));
        this.f789k = getArguments().getString(e.a("QQsHAQQsTUoDAw=="));
        this.f790l = getArguments().getString(e.a("WBAHARk="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_video;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), this.f787i.equals(e.a("VA0VARk=")));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b b = f.b();
        int i3 = this.f791m;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "QxsTAQ=="), this.f787i);
        hashMap.put(e.a("Qw0T"), this.f788j);
        hashMap.put(e.a("QQsHAQQsTUoDAw=="), this.f789k);
        hashMap.put(e.a("WBAHARk="), this.f790l);
        hashMap.put(e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        g(b.h(i3, hashMap), new a(i2));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.tv_screen /* 2131297024 */:
                ScreenActivity.v(getContext(), this.f787i, this.f791m);
                return;
            case R.id.tv_search /* 2131297025 */:
                SearchActivity.n(getContext());
                return;
            default:
                return;
        }
    }
}
