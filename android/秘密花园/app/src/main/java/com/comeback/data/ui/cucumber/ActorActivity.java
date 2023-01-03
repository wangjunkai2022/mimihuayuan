package com.comeback.data.ui.cucumber;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cucumber.adapter.ActorAdapter;
import com.comeback.data.ui.cucumber.bean.ActorList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String[] f399d = {e.a("Bw=="), e.a("dg=="), e.a("dQ=="), e.a("dA=="), e.a("cw=="), e.a("cg=="), e.a("cQ=="), e.a("cA=="), e.a("fw=="), e.a("fg=="), e.a("fQ=="), e.a("fA==")};

    /* renamed from: e  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f400e = new a();
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
            ActorActivity.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<ActorList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f401f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f401f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ActorList actorList = (ActorList) obj;
            if (this.f401f == 1) {
                ActorActivity.this.f114c.c();
            }
            ActorActivity.this.f114c.a(actorList.getData());
        }
    }

    public static void v(Context context) {
        f.b.a.a.a.u(context, ActorActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_actor_list;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        u(this.tab1, e.a("09jZgtvn36/zj5//"), true);
        u(this.tab1, e.a("0Ovkjez836/zj5//"), false);
        u(this.tab2, e.a("0ufLjejb"), true);
        u(this.tab2, e.a("doXezY3ulg=="), false);
        u(this.tab2, e.a("dYXezY3ulg=="), false);
        u(this.tab2, e.a("dIXezY3ulg=="), false);
        u(this.tab2, e.a("c4XezY3ulg=="), false);
        u(this.tab2, e.a("coXezY3ulg=="), false);
        u(this.tab2, e.a("cYXezY3ulg=="), false);
        u(this.tab2, e.a("cIXezY3ulg=="), false);
        u(this.tab2, e.a("f4XezY3ulg=="), false);
        u(this.tab2, e.a("foXezY3ulg=="), false);
        u(this.tab2, e.a("fYXezY3ulg=="), false);
        u(this.tab2, e.a("fIXezY3ulg=="), false);
        this.tab1.addOnTabSelectedListener(this.f400e);
        this.tab2.addOnTabSelectedListener(this.f400e);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ActorAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.g.h.a a2 = c.a();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        hashMap.put(f.b.a.a.a.i(selectedTabPosition == 0 ? "Bg==" : "BQ==", hashMap, e.a("RhcGFhInQEMW"), "VBcTMBIDXA=="), this.f399d[selectedTabPosition2]);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), e.a("BVM="));
        k(a2.b(hashMap), new b(i2));
    }

    public final void u(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
