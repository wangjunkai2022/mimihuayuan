package com.comeback.data.ui.avbobo;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.avbobo.adapter.VideoAdapter;
import com.comeback.data.ui.avbobo.bean.MovieList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.b.g.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SearchResultActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f164d;

    /* renamed from: e  reason: collision with root package name */
    public String[][] f165e = {new String[]{e.a("BVdUVVwVCVBEUgVUTQwFX1IBVlIOEVoFQ1QMAktSAlo="), e.a("AFMGAA8SXQdFUQUESF5XUwJXB1ZZSgxSQwcCVRoPVls=")}, new String[]{e.a("UlQBVwlFWlYSAwFUSQtWUgVSUFJTEFhQFVcDVRlaVFM="), e.a("BlpaAA5AWwNBAgdRTgtaWgYGVAJcEAsHQVVXVUpbAV0="), e.a("BFpaU1kQWgMVXgBUSFhTWg5aU1BSRgxVRlZVUxoIUgo=")}, new String[]{e.a("VFdUB1pKDQcQVgVRSFhQX1QGVQUJEA0HSwQHXxxTB1o="), e.a("BwNUAV1EC1EVBwUBHA5RDgRUUVYIRA5XQ1BSU0xZWl8="), e.a("VFsGAgoRWwdEAlUCT14CXg9UBlBZQApXEl9WBklaB1M="), e.a("UwdSXAoVCVZDBwRXS11RDQFSBgANQlwEF1FWBk4JAFw="), e.a("AwACAFJCClIVBQxfTQtTUwVVUFBYQF8FQAdSBUBdWl0="), e.a("UVJWUVwWCQsSVwQFSVpVWA9WVAENF19WRgIGAU9ZB1I=")}, new String[]{e.a("U1BbXVJEDQsSX1cCSgtSDgQAVQIOS1wLQlZSUUxbUFg="), e.a("BwZTV15BCVIRBAVWTQxRWlFUUgVcQlhQRFcEVRlYBVk="), e.a("BAcBAVxDAQUXAABRTl8FCVEEAldfEgBVQlMGUxxbAgg="), e.a("UlcBXVxLCwJEVwNfS1wHXQ4EAVBcRQxWQl5QBEoIVlg=")}};

    /* renamed from: f  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f166f = new a();
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;
    @BindView
    public TabLayout tab3;
    @BindView
    public TabLayout tab4;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a implements TabLayout.OnTabSelectedListener {
        public a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            SearchResultActivity.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<MovieList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f167f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f167f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MovieList movieList = (MovieList) obj;
            if (this.f167f == 1) {
                SearchResultActivity.this.f114c.c();
            }
            SearchResultActivity.this.f114c.a(movieList.getData());
        }
    }

    public static void v(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        f.b.a.a.a.v("XAca", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f164d = intent.getStringExtra(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_avbobo_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvTitle.setText(this.f164d);
        u(this.tab1, e.a("0f7jgv3D3Yv5gKrR"), true);
        u(this.tab1, e.a("0f7jgc/p36HegKDZ"), false);
        u(this.tab2, e.a("0evjgvf63oLIg6rs"), true);
        u(this.tab2, e.a("VhQ="), false);
        u(this.tab2, e.a("0tLsjMz10JHi"), false);
        u(this.tab3, e.a("0evjgvf63rr0j6HY"), true);
        u(this.tab3, e.a("B09WgeP1"), false);
        u(this.tab3, e.a("Ak9SVI77vw=="), false);
        u(this.tab3, e.a("BlJOVluWsbU="), false);
        u(this.tab3, e.a("BVJOV1uWsbU="), false);
        u(this.tab3, e.a("BFKG7O2XgpaX3r4="), false);
        u(this.tab4, e.a("0evjgvf63rr0gZPq"), true);
        u(this.tab4, e.a("0fXDg8vy"), false);
        u(this.tab4, e.a("09rOgv303J7kg43y"), false);
        u(this.tab4, e.a("09vSgNfV"), false);
        this.tab1.addOnTabSelectedListener(this.f166f);
        this.tab2.addOnTabSelectedListener(this.f166f);
        this.tab3.addOnTabSelectedListener(this.f166f);
        this.tab4.addOnTabSelectedListener(this.f166f);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.b.g.a a2 = d.a();
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        int selectedTabPosition3 = this.tab3.getSelectedTabPosition();
        int selectedTabPosition4 = this.tab4.getSelectedTabPosition();
        hashMap.put(e.a("XAcaEwQBXQ=="), this.f164d);
        String j2 = f.b.a.a.a.j(e.a("bBlBAxkcTEMsD1BFQkhGGBUfPg=="), new Object[]{this.f165e[0][selectedTabPosition]}, hashMap, e.a("WA=="), "TEBHBQUXGwkoHRYACgUWG2gLB0ZRUV0GFQNSAh1ZB18AWlRWXEAPBEJRUQVJCwZSBVUAAg4VG05fHRYACgUWG2gLB0ZRUV8DFQQGUx4JUVpSAFBXCkAPUUReVVUcXQUOD1EFUFkVG05fHRYACgUWG2gLB0ZRURxAURsYHFoNEQRCEjwND1EDEVYVFhpUEUEMRQ0WFDQaXRFJRBEUWhc+Fg==");
        String a3 = e.a("Rg==");
        String[][] strArr = this.f165e;
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.j(j2, new Object[]{strArr[1][selectedTabPosition2], strArr[2][selectedTabPosition3], strArr[3][selectedTabPosition4]}, hashMap, a3, "RwMEAQ=="), "WwsODR8="), e.a("BlQ="));
        k(a2.i(hashMap), new b(i2));
    }

    public final void u(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
