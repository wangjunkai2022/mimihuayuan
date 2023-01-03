package com.comeback.data.ui.fulao2.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fulao2.adapter.ActorAdapter;
import com.comeback.data.ui.fulao2.bean.StarList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.k.h.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f746i = new a();
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
    public class b extends BaseRefreshFragment.a<StarList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f747f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f747f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            StarList starList = (StarList) obj;
            if (this.f747f == 1) {
                ActorFragment.this.f117h.c();
            }
            ActorFragment.this.f117h.a(starList.getResponse().getActors());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_lutube_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.tab1.setBackgroundColor(-1);
        this.tab2.setBackgroundColor(-1);
        this.refreshLayout.setBackgroundColor(-1);
        p(this.tab1, e.a("0f7jg+rY373hg47o"), true);
        p(this.tab1, e.a("0Ovkjez8373hg47o"), false);
        p(this.tab2, e.a("0evjgvf63o7agKnI"), true);
        p(this.tab2, e.a("dhwg"), false);
        p(this.tab2, e.a("cxwl"), false);
        p(this.tab2, e.a("cBwq"), false);
        p(this.tab2, e.a("fYbYwY/Lsw=="), false);
        this.tab1.addOnTabSelectedListener(this.f746i);
        this.tab2.addOnTabSelectedListener(this.f746i);
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
        f.e.a.j.k.h.b b2 = f.b();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.G(this.tab2.getSelectedTabPosition(), hashMap, f.b.a.a.a.i(selectedTabPosition == 0 ? "QQsGExg=" : "QQEMEQUH", hashMap, e.a("WBAHARk="), "VBcTOxkSV1QW"), "RwMEAQ=="), "QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
        g(b2.l(hashMap), new b(i2));
    }

    public final void p(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
