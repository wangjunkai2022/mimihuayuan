package com.comeback.data.ui.avbobo.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.avbobo.adapter.VideoAdapter;
import com.comeback.data.ui.avbobo.bean.MovieList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.b.g.d;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CartoonFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[][] f184i = {new String[]{e.a("BARQB1JCXABAVAdTHQxbDQNQVlcPSwBVQwBXAhlfVg4="), e.a("BlVTUlkWXQVHVgdTTVhSCgdbUlQORQAGFVYHBElaBlI=")}, new String[]{e.a("U1sBV18VX1JFUldVHF9TXAADBQZYQ10FFlFWXksPVVI="), e.a("AlJTUV5DAQFBVgRVQVIBUlZRVlxdFQ9WRQMCUR1ZVVI="), e.a("DlNXXVgXCVZCAw0GTg8AXlRTBQIJFVtREAQGUkpdUg0="), e.a("A1JQBQpCDAVGVldSSFICWFRQBlJcEVsKS1MDBUpfWlg="), e.a("UVJXAlIQD1YVXgwBGlJRDQBQVAYNEAlVRgQMAk9eVV8="), e.a("BgdVBVlHDlJFUFJRGVoCClYABVUNFQ8FSwVVVEpfU1g=")}};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f185j = new a();
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;
    @BindView
    public TabLayout tab3;
    @BindView
    public TabLayout tab4;

    /* loaded from: classes.dex */
    public class a implements TabLayout.OnTabSelectedListener {
        public a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            CartoonFragment.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<MovieList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f186f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f186f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MovieList movieList = (MovieList) obj;
            if (this.f186f == 1) {
                CartoonFragment.this.f117h.c();
            }
            CartoonFragment.this.f117h.a(movieList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_no_code;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.tab3.setVisibility(8);
        this.tab4.setVisibility(8);
        p(this.tab1, e.a("0f7jgv3D3Yv5gKrR"), true);
        p(this.tab1, e.a("0f7jgc/p36HegKDZ"), false);
        p(this.tab2, e.a("0evjgvf63rr0j6HY"), true);
        p(this.tab2, e.a("B09WgeP1"), false);
        p(this.tab2, e.a("Ak9SVI77vw=="), false);
        p(this.tab2, e.a("BlJOVluWsbU="), false);
        p(this.tab2, e.a("BVJOV1uWsbU="), false);
        p(this.tab2, e.a("BFKG7O2XgpaX3r4="), false);
        this.tab1.addOnTabSelectedListener(this.f185j);
        this.tab2.addOnTabSelectedListener(this.f185j);
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.b.g.a a2 = d.a();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.j(f.b.a.a.a.j(e.a("bBlBAxkcTEMsD1BFQkhGGBUfPg=="), new Object[]{this.f184i[0][selectedTabPosition]}, hashMap, e.a("WA=="), "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUVsBR1UABhoOVloEAAZRCURfUkdfAVYbXlVYVQAGXV4RG05fHRYACgUWG2gLB0ZRUQACFVIMUU4IBV8HAVNSDkVaVUVfDV9BCVBYAQRVVwkSG05fHRYACgUWG2gLB0ZRURxAURtpGg=="), new Object[]{this.f184i[1][selectedTabPosition2]}, hashMap, e.a("Rg=="), "RwMEAQ=="), "WwsODR8="), e.a("BlQ="));
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
