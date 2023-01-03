package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.k.h.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ScreenActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f712d;

    /* renamed from: e  reason: collision with root package name */
    public String f713e;

    /* renamed from: f  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f714f = new a();
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;
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
            ScreenActivity.this.refreshLayout.h();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f715f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f715f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f715f == 1) {
                ScreenActivity.this.f114c.c();
            }
            ScreenActivity.this.f114c.a(videoList.getResponse().getVideos());
        }
    }

    public static void v(Context context, String str, int i2) {
        Intent intent = new Intent(context, ScreenActivity.class);
        intent.putExtra(e.a("QxsTAQ=="), str);
        intent.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f712d = intent.getIntExtra(e.a("XgwHARM="), 0);
        this.f713e = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_screen;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tab1.setBackgroundColor(-1);
        this.tab2.setBackgroundColor(-1);
        u(this.tab1, e.a("0f7jgv3D3Yv5gb3g"), true);
        u(this.tab1, e.a("0f7jgc/p3rHKgKbK"), false);
        u(this.tab2, e.a("0evjgvf63o7agKnI"), true);
        u(this.tab2, e.a("dhwg"), false);
        u(this.tab2, e.a("cxwl"), false);
        u(this.tab2, e.a("cBwq"), false);
        u(this.tab2, e.a("fYbYwY/Lsw=="), false);
        this.tab1.addOnTabSelectedListener(this.f714f);
        this.tab2.addOnTabSelectedListener(this.f714f);
        super.e();
        String str = "";
        if (this.f713e.equals(e.a("QgwACx0WSw=="))) {
            int i2 = this.f712d;
            if (i2 == 0) {
                str = e.a("0f7jgv3D");
            } else if (i2 == 17) {
                str = e.a("0tLsjMz10JHi");
            } else if (i2 == 15) {
                str = e.a("0u3TgtLN");
            } else if (i2 == 16) {
                str = e.a("0c7Eg9X9");
            }
        } else {
            int i3 = this.f712d;
            if (i3 == 0) {
                str = e.a("0f7jgv3D");
            } else if (i3 == 12) {
                str = e.a("09rOgcbk");
            } else if (i3 == 13) {
                str = e.a("0NDdjev6");
            } else if (i3 == 14) {
                str = e.a("09rYjcnr");
            }
        }
        this.tvTitle.setText(str);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.k.h.b b2 = f.b();
        int i3 = this.f712d;
        HashMap<String, String> hashMap = new HashMap<>();
        int selectedTabPosition = this.tab1.getSelectedTabPosition();
        int selectedTabPosition2 = this.tab2.getSelectedTabPosition();
        hashMap.put(e.a("QxsTAQ=="), this.f713e);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.G(selectedTabPosition2, hashMap, f.b.a.a.a.i(selectedTabPosition == 0 ? "QwsOAQ==" : "QQsGExg=", hashMap, f.b.a.a.a.i("Ww0NAw==", hashMap, e.a("QQsHAQQsTUoDAw=="), "WBAHARk="), "VBcTOxkSV1QW"), "RwMEAQ=="), "QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
        k(b2.h(i3, hashMap), new b(i2));
    }

    public final void u(TabLayout tabLayout, String str, boolean z) {
        TabLayout.Tab text = tabLayout.newTab().setText(str);
        if (z) {
            text.select();
        }
        tabLayout.addTab(text);
    }
}
