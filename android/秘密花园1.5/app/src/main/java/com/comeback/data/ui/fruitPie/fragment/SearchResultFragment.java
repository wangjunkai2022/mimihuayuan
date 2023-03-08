package com.comeback.data.ui.fruitPie.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fruitPie.adapter.SearchAdapter;
import com.comeback.data.ui.fruitPie.bean.SearchResult;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f763i;

    /* renamed from: j  reason: collision with root package name */
    public String f764j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SearchResult> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SearchResultFragment.this.refreshLayout.t(false);
            SearchResultFragment searchResultFragment = SearchResultFragment.this;
            searchResultFragment.refreshLayout.A = false;
            searchResultFragment.f117h.a(((SearchResult) obj).getData());
        }
    }

    public static SearchResultFragment n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WQMOAQ=="), str2);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f763i = getArguments().getString(e.a("QxsTAQ=="));
        this.f764j = getArguments().getString(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new SearchAdapter(getContext(), this.f763i);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("VA0NAAIHUFwdFQ=="), this.f764j);
        hashMap.put(f.b.a.a.a.i("Bw==", hashMap, e.a("UQsGCA8="), "QwMRAw4H"), this.f763i);
        hashMap.put(e.a("RA0REA=="), e.a("Bg=="));
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(b.a().a(hashMap), new a());
    }
}
