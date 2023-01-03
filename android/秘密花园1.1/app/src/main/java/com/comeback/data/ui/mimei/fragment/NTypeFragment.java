package com.comeback.data.ui.mimei.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.mimei.adapter.NovelAdapter;
import com.comeback.data.ui.mimei.bean.NovelHomeType;
import f.e.a.e;
import f.e.a.j.e0.j.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class NTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1714i;

    /* renamed from: j  reason: collision with root package name */
    public String f1715j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NovelHomeType> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1716f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1716f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            NovelHomeType novelHomeType = (NovelHomeType) obj;
            if (this.f1716f == 1) {
                NTypeFragment.this.f117h.c();
            }
            NTypeFragment.this.f117h.a(novelHomeType.getSuccess().getData());
        }
    }

    public static NTypeFragment o(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        bundle.putString(e.a("XAca"), str);
        NTypeFragment nTypeFragment = new NTypeFragment();
        nTypeFragment.setArguments(bundle);
        return nTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1714i = getArguments().getInt(e.a("QxsTAQ=="));
        this.f1715j = getArguments().getString(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.setPadding(16, 0, 16, 0);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("QxsTAQ=="), String.valueOf(this.f1714i));
        if (this.f1715j.equals(e.a("RQMNDwIdXg=="))) {
            hashMap.put(e.a("RQMNAw4="), e.a("BA=="));
        }
        hashMap.put(f.b.a.a.a.i("Blc=", hashMap, e.a("VA0WCh8A"), "RwMEARg="), String.valueOf(i2));
        g(f.a().j(this.f1715j, hashMap), new a(i2));
    }
}
