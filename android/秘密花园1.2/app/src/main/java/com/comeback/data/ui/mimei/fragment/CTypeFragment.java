package com.comeback.data.ui.mimei.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.mimei.adapter.ComicAdapter;
import com.comeback.data.ui.mimei.bean.ComicHomeType;
import f.e.a.e;
import f.e.a.j.f0.j.d;
import f.e.a.j.f0.j.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1782i;

    /* renamed from: j  reason: collision with root package name */
    public String f1783j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicHomeType> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1784f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1784f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicHomeType comicHomeType = (ComicHomeType) obj;
            if (this.f1784f == 1) {
                CTypeFragment.this.f117h.c();
            }
            CTypeFragment.this.f117h.a(comicHomeType.getSuccess().getData());
        }
    }

    public static CTypeFragment o(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        bundle.putString(e.a("XAca"), str);
        CTypeFragment cTypeFragment = new CTypeFragment();
        cTypeFragment.setArguments(bundle);
        return cTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1782i = getArguments().getInt(e.a("QxsTAQ=="));
        this.f1783j = getArguments().getString(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.setPadding(16, 0, 16, 0);
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
        HashMap<String, String> hashMap = new HashMap<>();
        if (this.f1783j.equals(e.a("RQMNDwIdXg=="))) {
            hashMap.put(e.a("RQMNAw4="), e.a("BA=="));
        }
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("Blc=", hashMap, f.b.a.a.a.G(this.f1782i, hashMap, e.a("QxsTAQ=="), "VA0WCh8A"), "RwMEARg="), "VAoCDQU="), d.b);
        hashMap.put(e.a("Xw0QEA=="), d.f3927c);
        g(f.a().h(this.f1783j, hashMap), new a(i2));
    }
}
