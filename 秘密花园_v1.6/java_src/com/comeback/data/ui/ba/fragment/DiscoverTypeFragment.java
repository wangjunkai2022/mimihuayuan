package com.comeback.data.ui.ba.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.ba.adapter.ComicAdapter;
import com.comeback.data.ui.ba.bean.ComicListBean;
import f.e.a.e;
import f.e.a.j.c.g.c;
import java.util.HashMap;
/* loaded from: classes.dex */
public class DiscoverTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f251i;

    /* renamed from: j  reason: collision with root package name */
    public String f252j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicListBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f253f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f253f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicListBean comicListBean = (ComicListBean) obj;
            if (this.f253f == 1) {
                DiscoverTypeFragment.this.f117h.c();
            }
            DiscoverTypeFragment.this.f117h.a(comicListBean.getResults().getComics());
        }
    }

    public static DiscoverTypeFragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("UwMXBQ=="), str2);
        DiscoverTypeFragment discoverTypeFragment = new DiscoverTypeFragment();
        discoverTypeFragment.setArguments(bundle);
        return discoverTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f252j = getArguments().getString(e.a("UwMXBQ=="));
        this.f251i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        if (this.f251i.equals(e.a("Qw0TVVtD"))) {
            this.refreshLayout.t(false);
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ComicAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.c.g.a a2 = c.a();
        String str = this.f251i;
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.f252j)) {
            hashMap.put(e.a("UwMXBQ=="), this.f252j);
        }
        if (!this.f251i.equals(e.a("Qw0TVVtD"))) {
            hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RwMEATQAUEkW"), e.a("BlA="));
        }
        g(a2.c(str, hashMap), new a(i2));
    }
}
