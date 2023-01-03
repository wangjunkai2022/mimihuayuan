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
public class SJFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[][] f214i = {new String[]{e.a("AANVVV9GDFJGBVdUGQsBDQIGAABYEA1RR1FWUk5fAVk="), e.a("A1FWXQhCDVcVVldRTV9SWwdVVFZZEQALRlECXktYW1o=")}, new String[]{e.a("AgBWAFJBCFFLAgFQTA8FXlFaAVdSRFxXQQUBVhpYVgk="), e.a("VVIBB1NFDgcSUAcGHQtbXVZTU1BcEF1RR14CVBkJU1s="), e.a("DgEAVF1GDlISUgdSQA9TUwFRAVFTFV0EQ15WU0FYAAo="), e.a("B1NaBQgXX1cVVAJeSQ9WWVEABgcPRwpQQAVXUBoMVF0="), e.a("B1EAVg5HXQFFUVJWQVJWUg9TWldSEA5WRQUNAx4JUg4="), e.a("D1VVAFJKCVFBAABRSVMGDgBSUgBaEg9XR1cEVBlZBlk=")}, new String[]{e.a("AFMHAllGAApFXlcDGVNbXg5bBQBeQQsKF19QAhpbV14="), e.a("BFcGXFNBWFUWVgRVSlpSWlJaBVBbQFsFQgMAXk1dUg4="), e.a("U1cHUlJEDwFDVFcGS15bUgABWwIISw8AEAQGUktfAg8="), e.a("BVIHBVNCD1AXVQIGHAkHWwZaVVZYRVxQQgQEVEFdVQk=")}};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f215j = new a();
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
            SJFragment.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<MovieList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f216f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f216f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MovieList movieList = (MovieList) obj;
            if (this.f216f == 1) {
                SJFragment.this.f117h.c();
            }
            SJFragment.this.f117h.a(movieList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_no_code;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.tab4.setVisibility(8);
        p(this.tab1, e.a("0f7jgv3D3Yv5gKrR"), true);
        p(this.tab1, e.a("0f7jgc/p36HegKDZ"), false);
        p(this.tab2, e.a("0evjgvf63rr0j6HY"), true);
        p(this.tab2, e.a("B09WgeP1"), false);
        p(this.tab2, e.a("Ak9SVI77vw=="), false);
        p(this.tab2, e.a("BlJOVluWsbU="), false);
        p(this.tab2, e.a("BVJOV1uWsbU="), false);
        p(this.tab2, e.a("BFKG7O2XgpaX3r4="), false);
        p(this.tab3, e.a("0evjgvf63K/Dg7jd"), true);
        p(this.tab3, e.a("3sT6gtPc"), false);
        p(this.tab3, e.a("3v3KgfDO"), false);
        p(this.tab3, e.a("0u3TgtLN"), false);
        this.tab1.addOnTabSelectedListener(this.f215j);
        this.tab2.addOnTabSelectedListener(this.f215j);
        this.tab3.addOnTabSelectedListener(this.f215j);
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
        int selectedTabPosition3 = this.tab3.getSelectedTabPosition();
        String j2 = f.b.a.a.a.j(e.a("bBlBAxkcTEMsD1BFQkhGGBUfPg=="), new Object[]{this.f214i[0][selectedTabPosition]}, hashMap, e.a("WA=="), "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUV8FFwcMVEhbAglWAVBTUxIIUURRA1ZAWQZeA1YFAQ8WG05fHRYACgUWG2gLB0ZRUVsLEFdVAklfAF8OBwFQXxALBhBVAgFKC1BbBVJbUV1LG05fHRYACgUWG2gLB0ZRURxAURsYHFoNEQRCEjwND1EDEVYVFholFw==");
        String a3 = e.a("Rg==");
        String[][] strArr = this.f214i;
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.j(j2, new Object[]{strArr[1][selectedTabPosition2], strArr[2][selectedTabPosition3]}, hashMap, a3, "RwMEAQ=="), "WwsODR8="), e.a("BlQ="));
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
