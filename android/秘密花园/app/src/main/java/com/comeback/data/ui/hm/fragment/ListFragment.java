package com.comeback.data.ui.hm.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.hm.adapter.ListAdapter;
import com.comeback.data.ui.hm.bean.ItemInfo;
import f.e.a.e;
import f.e.a.j.h0.c;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class ListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f1067i;

    /* renamed from: j  reason: collision with root package name */
    public String f1068j;

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<d<i0>> f1069k;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6449e < 300) {
                try {
                    ArrayList<ItemInfo> e2 = f.e.a.j.q.f.a.e(g0Var.b.H());
                    if (this.a == 1) {
                        ListFragment.this.f117h.c();
                    }
                    ListFragment.this.f117h.a(e2);
                    ListFragment.this.refreshLayout.j(true);
                    ListFragment.this.refreshLayout.m(true);
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } else {
                ListFragment.o(ListFragment.this, false);
                ListFragment.this.refreshLayout.m(false);
                h.n1(e.a("0ffTgubd3LnTjonanc7Sg4PH"));
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            ListFragment.p(ListFragment.this, false);
            ListFragment.this.refreshLayout.m(false);
            h.n1(th.getMessage());
        }
    }

    public static void o(ListFragment listFragment, boolean z) {
        listFragment.refreshLayout.j(z);
    }

    public static void p(ListFragment listFragment, boolean z) {
        listFragment.refreshLayout.j(z);
    }

    public static ListFragment q(boolean z, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhErCQ=="), z);
        bundle.putString(e.a("RBcBDg4QTX0SC1E="), str);
        ListFragment listFragment = new ListFragment();
        listFragment.setArguments(bundle);
        return listFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1067i = getArguments().getBoolean(e.a("XhErCQ=="));
        this.f1068j = getArguments().getString(e.a("RBcBDg4QTX0SC1E="), "");
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.f1069k = new ArrayList<>();
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        d<i0> c2 = c.a().c(f.e.a.j.q.f.a.b(i2, this.f1067i, this.f1068j, ""));
        this.f1069k.add(c2);
        c2.X(new a(i2));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Iterator<d<i0>> it = this.f1069k.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }
}
