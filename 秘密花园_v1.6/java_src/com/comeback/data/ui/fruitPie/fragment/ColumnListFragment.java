package com.comeback.data.ui.fruitPie.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fruitPie.adapter.ColumnAdapter;
import com.comeback.data.ui.fruitPie.bean.ColumnList;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ColumnListFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ColumnList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f734f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f734f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ColumnList columnList = (ColumnList) obj;
            if (this.f734f == 1) {
                ColumnListFragment.this.f117h.c();
            }
            ColumnListFragment.this.f117h.a(columnList.getData().getList());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ColumnAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WwcNAx8b"), e.a("BlI="));
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(b.a().e(hashMap), new a(i2));
    }
}
