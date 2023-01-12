package com.comeback.data.ui.gkj.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gkj.adapter.WeekAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import f.e.a.e;
import f.e.a.j.n.p.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class WeekTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1074i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1075f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1075f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicList comicList = (ComicList) obj;
            if (this.f1075f == 1) {
                WeekTypeFragment.this.f117h.c();
            }
            WeekTypeFragment.this.f117h.a(comicList.getLists().getData());
        }
    }

    public static WeekTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QwsOAQ=="), str);
        WeekTypeFragment weekTypeFragment = new WeekTypeFragment();
        weekTypeFragment.setArguments(bundle);
        return weekTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1074i = getArguments().getString(e.a("QwsOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new WeekAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        c b = f.e.a.j.n.p.e.b();
        String str = this.f1074i;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("UA4MBgofZkcKFlE="), e.a("RQcACwYeXF0X"));
        hashMap.put(e.a("QwsOAQ=="), str);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WwsODR8="), e.a("BlI="));
        g(b.e(hashMap), new a(i2));
    }
}
