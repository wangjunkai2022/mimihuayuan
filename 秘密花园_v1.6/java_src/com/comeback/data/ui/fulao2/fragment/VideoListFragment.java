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
import f.e.a.j.l.h.b;
import f.e.a.j.l.h.f;
import java.util.HashMap;
/* loaded from: classes.dex */
public class VideoListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f864i;

    /* renamed from: j  reason: collision with root package name */
    public String f865j;

    /* renamed from: k  reason: collision with root package name */
    public String f866k;

    /* renamed from: l  reason: collision with root package name */
    public String f867l;

    /* renamed from: m  reason: collision with root package name */
    public int f868m;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f869f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f869f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f869f == 1) {
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
        this.f868m = getArguments().getInt(e.a("XgwHARM="));
        this.f864i = getArguments().getString(e.a("QxsTAQ=="));
        this.f865j = getArguments().getString(e.a("Qw0T"));
        this.f866k = getArguments().getString(e.a("QQsHAQQsTUoDAw=="));
        this.f867l = getArguments().getString(e.a("WBAHARk="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_fulao2_video;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), this.f864i.equals(e.a("VA0VARk=")));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b b = f.b();
        int i3 = this.f868m;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "QxsTAQ=="), this.f864i);
        hashMap.put(e.a("Qw0T"), this.f865j);
        hashMap.put(e.a("QQsHAQQsTUoDAw=="), this.f866k);
        hashMap.put(e.a("WBAHARk="), this.f867l);
        hashMap.put(e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        g(b.h(i3, hashMap), new a(i2));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.tv_screen /* 2131297034 */:
                ScreenActivity.v(getContext(), this.f864i, this.f868m);
                return;
            case R.id.tv_search /* 2131297035 */:
                SearchActivity.n(getContext());
                return;
            default:
                return;
        }
    }
}
