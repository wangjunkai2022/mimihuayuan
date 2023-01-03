package com.comeback.data.ui.gkj.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.gkj.adapter.NComic3Adapter;
import com.comeback.data.ui.gkj.adapter.NVideo2Adapter;
import com.comeback.data.ui.gkj.bean.SpecialBean;
import f.a.a.a.l.g;
import f.e.a.e;
import f.i.b.r;
import i.g0;
import i.z;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f997j;

    /* renamed from: k  reason: collision with root package name */
    public String f998k;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SpecialBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f999f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f999f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialBean specialBean = (SpecialBean) obj;
            if (this.f999f == 1) {
                SearchResultFragment.this.m();
            }
            SearchResultFragment searchResultFragment = SearchResultFragment.this;
            if (searchResultFragment.f997j.equals(e.a("Bg=="))) {
                g m2 = f.b.a.a.a.m(2, 5, 5);
                m2.s = true;
                searchResultFragment.f120i.b(new NVideo2Adapter(searchResultFragment.getContext(), specialBean.getData(), m2));
            } else if (searchResultFragment.f997j.equals(e.a("AQ=="))) {
                g m3 = f.b.a.a.a.m(3, 5, 5);
                m3.s = true;
                searchResultFragment.f120i.b(new NComic3Adapter(searchResultFragment.getContext(), specialBean.getData(), m3));
            }
        }
    }

    public static SearchResultFragment q(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WQMOAQ=="), str2);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f997j = getArguments().getString(e.a("QxsTAQ=="));
        this.f998k = getArguments().getString(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        r rVar = new r();
        rVar.e(e.a("QxsTAQ=="), this.f997j);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2 - 1));
        rVar.d(e.a("RwMEATgaQ1Y="), 20);
        rVar.e(e.a("RAcCFggbd1IeAw=="), this.f998k);
        g(f.e.a.j.m.p.e.b().c(g0.c(rVar.toString(), z.c(e.a("VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw==")))), new a(i2));
    }
}
