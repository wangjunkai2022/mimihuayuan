package com.comeback.data.ui.isiyu.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.isiyu.adapter.VideoAdapter;
import com.comeback.data.ui.isiyu.bean.HomeList;
import f.e.a.e;
import java.util.HashMap;

/* loaded from: classes.dex */
public class NewTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1192i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<HomeList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1193f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1193f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            HomeList homeList = (HomeList) obj;
            if (this.f1193f == 1) {
                NewTypeFragment.this.f117h.c();
            }
            NewTypeFragment.this.f117h.a(homeList.getVideo());
        }
    }

    public static NewTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("RA0REA=="), str);
        NewTypeFragment newTypeFragment = new NewTypeFragment();
        newTypeFragment.setArguments(bundle);
        return newTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1192i = getArguments().getString(e.a("RA0REA=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("BVI=", hashMap, e.a("WwsODR8="), "RwMEAQ=="), "RA0REA=="), this.f1192i);
        g(f.e.a.j.t.e.e.a().d(hashMap), new a(i2));
    }
}
