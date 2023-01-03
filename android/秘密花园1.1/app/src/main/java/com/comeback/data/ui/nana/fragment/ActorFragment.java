package com.comeback.data.ui.nana.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.nana.adapter.ActorAdapter;
import com.comeback.data.ui.nana.bean.ActorBean;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.g0.m.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[] f1788i = {"", e.a("dg=="), e.a("dQ=="), e.a("dA=="), e.a("cw=="), e.a("cg=="), e.a("cQ=="), e.a("cA==")};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f1789j = new a();
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
    public class b extends BaseRefreshFragment.a<ActorBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1790f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1790f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ActorBean actorBean = (ActorBean) obj;
            if (this.f1790f == 1) {
                ActorFragment.this.f117h.c();
            }
            ActorFragment.this.f117h.a(actorBean.getResponse().getActors());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_nana_actor;
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
        this.tab1.addOnTabSelectedListener(this.f1789j);
        this.tab2.addOnTabSelectedListener(this.f1789j);
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
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
        f.e.a.j.g0.m.b a2 = f.e.a.j.g0.m.e.a();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        hashMap.put(e.a("WBAHARk="), selectedTabPosition == 0 ? "" : e.a("QQEMEQUH"));
        hashMap.put(e.a("VBcT"), this.f1788i[selectedTabPosition2]);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), d.a);
        g(a2.b(hashMap), new b(i2));
    }

    public final void p(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
