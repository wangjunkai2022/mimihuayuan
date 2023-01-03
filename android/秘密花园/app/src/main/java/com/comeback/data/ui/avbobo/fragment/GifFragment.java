package com.comeback.data.ui.avbobo.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.avbobo.adapter.GifAdapter;
import com.comeback.data.ui.avbobo.bean.MovieList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.b.g.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class GifFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[][] f189i = {new String[]{e.a("VVpbAFJDWABDBAQGT11XWQcAAVIIQg4GRFFSUEFeUw8="), e.a("BwBbB19GCFdKV1cFG19UUgYHB1BdRQxQEAABARoLUw4="), e.a("B1RVUw5LDgcXUAZeQVoBXgdaVFNcEl9QQ1AMBEEMAl8=")}, new String[]{e.a("AVJVAglKAVAWUFFQS1hTWgRUVgFaQwBWFwADAUsLVlw="), e.a("VgYGBl5DDQBHVVcFTwlXWQNUVV1cRF8GEgJVXh4LUV0="), e.a("UVVXVQgRXANGAg1fSFhbU1NUV1BTEltWEQAMUxxaVV0="), e.a("A1IAAQkQDgZKVlBeSFpRWARbVVYIQlgHS14MXxoPUl8="), e.a("BwFTU15HDlcRVVVfG1kGWQJTAQVZEg0FEgIMXkxSVlk="), e.a("BAYGVlhFCFZGUgJeHlhXCgZbWwZdRggAQFVWXksMBlk=")}};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f190j = new a();
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
            GifFragment.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<MovieList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f191f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f191f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MovieList movieList = (MovieList) obj;
            if (this.f191f == 1) {
                GifFragment.this.f117h.c();
            }
            GifFragment.this.f117h.a(movieList.getData());
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
        p(this.tab1, e.a("0f7jgc/p3rHKjoH5"), false);
        p(this.tab2, e.a("0evjgvf63rr0j6HY"), true);
        p(this.tab2, e.a("B09WgeP1"), false);
        p(this.tab2, e.a("Ak9SVI77vw=="), false);
        p(this.tab2, e.a("BlJOVluWsbU="), false);
        p(this.tab2, e.a("BVJOV1uWsbU="), false);
        p(this.tab2, e.a("BFKG7O2XgpaX3r4="), false);
        this.tab1.addOnTabSelectedListener(this.f190j);
        this.tab2.addOnTabSelectedListener(this.f190j);
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new GifAdapter(getContext());
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
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.j(f.b.a.a.a.j(e.a("bBlBAxkcTEMsD1BFQkhGGBUfPg=="), new Object[]{this.f189i[0][selectedTabPosition]}, hashMap, e.a("WA=="), "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUQpRQ15WUUhZAAkGBlIBDkUIV0ZTVl4ZWVFSAFZXUw5GG05fHRYACgUWG2gLB0ZRUVgESldRVktaAFhVU1ZVWEQOC0ADDFBPDlsPUwFbUQpGG05fHRYACgUWG2gLB0ZRURxAURtpGg=="), new Object[]{this.f189i[1][selectedTabPosition2]}, hashMap, e.a("Rg=="), "RwMEAQ=="), "WwsODR8="), e.a("BlQ="));
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
