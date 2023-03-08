package com.comeback.data.ui.fulao2.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.VideoList;
import f.e.a.e;
import f.e.a.j.l.h.b;
import f.e.a.j.l.h.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f850i;

    /* renamed from: j  reason: collision with root package name */
    public String f851j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f852f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f852f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f852f == 1) {
                SearchResultFragment.this.f117h.c();
            }
            SearchResultFragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static SearchResultFragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WQMOAQ=="), str2);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f850i = getArguments().getString(e.a("QxsTAQ=="));
        this.f851j = getArguments().getString(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), this.f850i.equals(e.a("QQcREAIQWF8=")));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b b = f.b();
        String str = this.f850i;
        String str2 = this.f851j;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
        g(b.f(str, str2, hashMap), new a(i2));
    }
}
