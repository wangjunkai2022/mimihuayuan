package com.comeback.data.ui.mimei.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.mimei.adapter.ComicAdapter;
import com.comeback.data.ui.mimei.adapter.NovelAdapter;
import com.comeback.data.ui.mimei.bean.ComicHomeType;
import com.comeback.data.ui.mimei.bean.NovelHomeType;
import f.e.a.e;
import f.e.a.j.e0.j.d;
import f.e.a.j.e0.j.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f1719i;

    /* renamed from: j  reason: collision with root package name */
    public String f1720j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicHomeType> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1721f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1721f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicHomeType comicHomeType = (ComicHomeType) obj;
            if (this.f1721f == 1) {
                SearchResultFragment.this.f117h.c();
            }
            SearchResultFragment.this.f117h.a(comicHomeType.getSuccess().getData());
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<NovelHomeType> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1723f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1723f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            NovelHomeType novelHomeType = (NovelHomeType) obj;
            if (this.f1723f == 1) {
                SearchResultFragment.this.f117h.c();
            }
            SearchResultFragment.this.f117h.a(novelHomeType.getSuccess().getData());
        }
    }

    public static SearchResultFragment q(boolean z, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhEgCwYaWg=="), z);
        bundle.putString(e.a("XAca"), str);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1719i = getArguments().getBoolean(e.a("XhEgCwYaWg=="), true);
        this.f1720j = getArguments().getString(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        if (this.f1719i) {
            return new ComicAdapter(getContext());
        }
        return new NovelAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), this.f1719i ? 3 : 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("XAcaEwQBXUA="), this.f1720j);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("Bg==", hashMap, e.a("RA0REA=="), "RwMEARg="), "VA0WCh8A"), String.valueOf(18));
        if (this.f1719i) {
            hashMap.put(e.a("VAoCDQU="), d.b);
            hashMap.put(e.a("Xw0QEA=="), d.f3852c);
            g(f.a().g(hashMap), new a(i2));
            return;
        }
        g(f.a().d(hashMap), new b(i2));
    }
}
