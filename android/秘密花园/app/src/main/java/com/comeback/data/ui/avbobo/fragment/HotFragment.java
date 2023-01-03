package com.comeback.data.ui.avbobo.fragment;

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
public class HotFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String[][] f197i = {new String[]{e.a("UQFVUg5ECQVHBFAFTlwHWgQDVgFbQl8AQF9WVU5bAFM="), e.a("D1BXAllBXQpBX1ECSltVCg9TV1INRgFSElIFARoJAV0=")}, new String[]{e.a("BwYHUFIVWgFFBQ0FTggHCgFUBlZZRA4HRV4GXhpYUVg="), e.a("VARbVlkXWgNEUwMGS1tVDlJTV1IKFwwCEF8HVk1TWgo="), e.a("VVZaVw9CWAQXB1AESFtVCAFTUwUKQwEDQ1VVAh0IUA0="), e.a("AAYFVlwXDVBHXgABTwwHXlYHU1JdF11QFVIDBEoJVAk=")}, new String[]{e.a("VlNRB1gWDlJKXgMBQVwAUwMGVVZcQFxRSldWUBsOU10="), e.a("UgRUBgpGDwRGAFZXQQtVDVNUVFNSEA8FEgBVAUlcUgk="), e.a("AVdUBQoWXQsXUFJVT11bXwRSV1UPEQsHRgAEXhxZAg8="), e.a("UgNWBglFWApAV1JXGQxXWQIEAFdbFghXRQdXXk0OU1o="), e.a("DlICAlIRWlFDBVADSl0AUlJSUQYORl0FElYNVEhcAQ0="), e.a("VlAHAlsVDQpKUQJTG1xSDlFSAlBYFwFWEF4DUU1eVQ8=")}, new String[]{e.a("A1BXAQpHDlUVVgRVTwtWCg5aV1BdFw5WQFMAVxxYUw8="), e.a("DgYCXQoVCFBLVgQDGlMBCA8DU1ANRAoHSgVVX05eUl4=")}};

    /* renamed from: j  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f198j = new a();
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
            HotFragment.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<MovieList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f199f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f199f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MovieList movieList = (MovieList) obj;
            if (this.f199f == 1) {
                HotFragment.this.f117h.c();
            }
            HotFragment.this.f117h.a(movieList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_hot;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        p(this.tab1, e.a("0f7jgv3D3Yv5gKrR"), true);
        p(this.tab1, e.a("0f7jgc/p36HegKDZ"), false);
        p(this.tab2, e.a("0evjgvf63oLIg6rs"), true);
        p(this.tab2, e.a("0N/yg9HR1o7vgozcnvjO"), false);
        p(this.tab2, e.a("3+XJguD+"), false);
        p(this.tab2, e.a("UAsF"), false);
        p(this.tab3, e.a("0evjgvf63rr0j6HY"), true);
        p(this.tab3, e.a("B09WgeP1"), false);
        p(this.tab3, e.a("Ak9SVI77vw=="), false);
        p(this.tab3, e.a("BlJOVluWsbU="), false);
        p(this.tab3, e.a("BVJOV1uWsbU="), false);
        p(this.tab3, e.a("BFKG7O2XgpaX3r4="), false);
        p(this.tab4, e.a("0evjgvf63K/Dg7jd"), true);
        p(this.tab4, e.a("3v3KgfDO"), false);
        this.tab1.addOnTabSelectedListener(this.f198j);
        this.tab2.addOnTabSelectedListener(this.f198j);
        this.tab3.addOnTabSelectedListener(this.f198j);
        this.tab4.addOnTabSelectedListener(this.f198j);
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.b.g.a a2 = d.a();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        int selectedTabPosition3 = this.tab3.getSelectedTabPosition();
        int selectedTabPosition4 = this.tab4.getSelectedTabPosition();
        String j2 = f.b.a.a.a.j(e.a("bBlBAxkcTEMsD1BFQkhGGBUfPg=="), new Object[]{this.f197i[0][selectedTabPosition]}, hashMap, e.a("WA=="), "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUQkBQgMEUhldAV9SW1BWDkEPBkJXUAIdWFBSBgBaUAlEG05fHRYACgUWG2gLB0ZRURxAURsYHFoNEQRCEjwND1EDEVYVFhpUEUEMRQ0WFDQaXRFJRBEUWhc+Fg==");
        String a3 = e.a("Rg==");
        String[][] strArr = this.f197i;
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.j(j2, new Object[]{strArr[1][selectedTabPosition2], strArr[2][selectedTabPosition3], strArr[3][selectedTabPosition4]}, hashMap, a3, "RwMEAQ=="), "WwsODR8="), e.a("BlQ="));
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
