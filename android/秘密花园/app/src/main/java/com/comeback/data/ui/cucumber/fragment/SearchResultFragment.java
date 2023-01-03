package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.VideoList3Adapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f512i;

    /* renamed from: j  reason: collision with root package name */
    public String f513j;
    @BindView
    public TextView tvHint;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f514f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f514f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f514f == 1) {
                SearchResultFragment.this.f117h.c();
                SearchResultFragment.this.tvHint.setVisibility(videoList.getData().size() == 0 ? 0 : 8);
            }
            SearchResultFragment.this.f117h.a(videoList.getData());
        }
    }

    public static SearchResultFragment o(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("Wg0HEQcWcFc="), i2);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f512i = getArguments().getInt(e.a("Wg0HEQcWcFc="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_search;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void e() {
        if (!TextUtils.isEmpty(this.f513j)) {
            this.refreshLayout.h();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoList3Adapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (TextUtils.isEmpty(this.f513j)) {
            this.refreshLayout.m(false);
            return;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        if (this.f512i != 0) {
            hashMap.put(e.a("Wg0HEQcWcFc="), String.valueOf(this.f512i));
        }
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("BlI=", hashMap, e.a("RwMEATgaQ1Y="), "RwMEASUc"), "Rg=="), this.f513j);
        g(c.a().a(hashMap), new a(i2));
    }
}
