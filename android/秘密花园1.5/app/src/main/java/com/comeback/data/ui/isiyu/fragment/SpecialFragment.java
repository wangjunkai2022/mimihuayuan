package com.comeback.data.ui.isiyu.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.isiyu.adapter.SpecialAdapter;
import com.comeback.data.ui.isiyu.bean.SpecialList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SpecialFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SpecialList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1270f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1270f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialList specialList = (SpecialList) obj;
            if (this.f1270f == 1) {
                SpecialFragment.this.f117h.c();
            }
            SpecialFragment.this.f117h.a(specialList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_isiyu_special;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new SpecialAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("BVI=", hashMap, e.a("WwsODR8="), "RwMEAQ=="), String.valueOf(i2));
        g(f.e.a.j.u.e.e.a().i(hashMap), new a(i2));
    }
}
