package com.comeback.data.ui.lutube.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.lutube.adapter.ActorAdapter;
import com.comeback.data.ui.lutube.bean.ActorList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.a0.k.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[] f1424i = {"", e.a("dg=="), e.a("dQ=="), e.a("dA=="), e.a("cw=="), e.a("cg=="), e.a("cQ=="), e.a("cA==")};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f1425j = new a();
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;

    /* loaded from: classes.dex */
    public class a implements TabLayout.OnTabSelectedListener {
        public a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            ActorFragment.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<ActorList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1426f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1426f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ActorList actorList = (ActorList) obj;
            if (this.f1426f == 1) {
                ActorFragment.this.f117h.c();
            }
            ActorFragment.this.f117h.a(actorList.getResponse().getActors());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_lutube_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        p(this.tab1, e.a("09jZgtvn36/zj5//"), true);
        p(this.tab1, e.a("0Ovkjez836/zj5//"), false);
        p(this.tab2, e.a("0evjgvf63o7agKnI"), true);
        p(this.tab2, e.a("dg=="), false);
        p(this.tab2, e.a("dQ=="), false);
        p(this.tab2, e.a("dA=="), false);
        p(this.tab2, e.a("cw=="), false);
        p(this.tab2, e.a("cg=="), false);
        p(this.tab2, e.a("cQ=="), false);
        p(this.tab2, e.a("cIbYwY/Lsw=="), false);
        this.tab1.addOnTabSelectedListener(this.f1425j);
        this.tab2.addOnTabSelectedListener(this.f1425j);
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ActorAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 4);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.a0.k.b a2 = d.a();
        HashMap hashMap = new HashMap();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        hashMap.put(f.b.a.a.a.i(selectedTabPosition == 0 ? "QQsGExg=" : "QQEMEQUH", hashMap, e.a("WBAHARk="), "VBcT"), this.f1424i[selectedTabPosition2]);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), f.e.a.k.b.u);
        g(a2.i(hashMap), new b(i2));
    }

    public final void p(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
