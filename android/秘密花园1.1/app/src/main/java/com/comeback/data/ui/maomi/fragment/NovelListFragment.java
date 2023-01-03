package com.comeback.data.ui.maomi.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.maomi.adapter.NovelListAdapter;
import com.comeback.data.ui.maomi.bean.NovelList;
import f.e.a.e;
import f.e.a.j.c0.m.b;
import f.e.a.j.c0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NovelListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1622i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NovelList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            NovelListFragment.m(NovelListFragment.this, (NovelList) obj);
        }
    }

    public static void m(NovelListFragment novelListFragment, NovelList novelList) {
        if (novelListFragment.f116g == 1) {
            novelListFragment.f117h.c();
        }
        novelListFragment.f117h.a(novelList.getData());
    }

    public static NovelListFragment n(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        NovelListFragment novelListFragment = new NovelListFragment();
        novelListFragment.setArguments(bundle);
        return novelListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1622i = getArguments().getInt(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("VAMXATQaXQ=="), this.f1622i);
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        g(d.a().o(b.a(jSONObject.toString())), new a());
    }
}
