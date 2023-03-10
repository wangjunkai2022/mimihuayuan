package com.comeback.data.ui.sex8.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.sex8.adapter.LouFengAdapter;
import com.comeback.data.ui.sex8.bean.LouFengList;
import f.e.a.e;
import f.e.a.j.k0.a.b;
import f.e.a.j.k0.a.d;
/* loaded from: classes.dex */
public class LoufengListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1941i;

    /* renamed from: j  reason: collision with root package name */
    public int f1942j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<LouFengList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            LoufengListFragment.m(LoufengListFragment.this, (LouFengList) obj);
        }
    }

    public static void m(LoufengListFragment loufengListFragment, LouFengList louFengList) {
        if (loufengListFragment.f116g == 1) {
            h.p1(e.a("0ufSgvTW3LvD") + louFengList.getTotal_num_rows() + e.a("0f/CgNTS37Lc"));
            loufengListFragment.f117h.c();
        }
        loufengListFragment.f117h.a(louFengList.getData());
    }

    public static LoufengListFragment n(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("RxAMEg=="), i2);
        bundle.putInt(e.a("VAsXHQ=="), i3);
        LoufengListFragment loufengListFragment = new LoufengListFragment();
        loufengListFragment.setArguments(bundle);
        return loufengListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1941i = getArguments().getInt(e.a("RxAMEg=="));
        this.f1942j = getArguments().getInt(e.a("VAsXHQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new LouFengAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().a(d.b(i2, this.f1941i, this.f1942j), System.currentTimeMillis()), new a());
    }
}
