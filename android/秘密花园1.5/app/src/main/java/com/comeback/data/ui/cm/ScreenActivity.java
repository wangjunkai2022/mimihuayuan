package com.comeback.data.ui.cm;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cm.adapter.ScreenAdapter;
import com.comeback.data.ui.cm.bean.ScreenBean;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.e.c;
import f.e.a.j.e.d;
import f.e.a.j.e.f.b;

/* loaded from: classes.dex */
public class ScreenActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f318d = 0;

    /* renamed from: e  reason: collision with root package name */
    public String f319e = "";

    /* renamed from: f  reason: collision with root package name */
    public String[] f320f = {"", e.a("WQcU"), e.a("Xw0X"), e.a("WwsIAQ==")};

    /* renamed from: g  reason: collision with root package name */
    public String[] f321g = {e.a("0ufLjejb"), e.a("0f7jgv3D"), e.a("0f7jg+je"), e.a("0f7jgc/p3KXvgJjF")};

    /* renamed from: h  reason: collision with root package name */
    public int[] f322h = {0, 28, 57, 30, 33, 59, 65, 58, 44, 36, 37, 63, 39, 32, 43, 46, 69, 52, 61, 62, 53, 60, 56, 64, 27, 54, 49, 48, 38, 50, 66, 51, 67, 68};

    /* renamed from: i  reason: collision with root package name */
    public String[] f323i = {e.a("0ufLjejb"), e.a("0v7og//R0bTZgL/q"), e.a("0szVgdHe3Ynxg7TM"), e.a("3sn7gtP23rfSgZbb"), e.a("0urVgvf+0ZnrgLf2"), e.a("3vnYjND53qrSgIjF"), e.a("BCaG7sOUrYg="), e.a("0NTDgdPO3YnJg5Lc"), e.a("0Nf2jOLB3Y7Ago7d"), e.a("djSFyfuUh70="), e.a("0NTRg9/23JjagJzG"), e.a("0u3AgNHX0bTZgLHX"), e.a("djSE0MuXg4k="), e.a("f4fo8Y3Pkg=="), e.a("3vfUjO7M3obBjpHN"), e.a("09rqg9/p0KjIg4nW"), e.a("QwMKFA4aCANDVw=="), e.a("3+/qjOXg373bjqLB"), e.a("0PvCgc7A34TYg5zk"), e.a("0NDdgtnK34LkgIXm"), e.a("0sfQgfv/37PUgbzW"), e.a("0uXvjNXC3Y3Ggb7I"), e.a("0frtgvPs34TYg5DF"), e.a("0eLEjPLj0ZnMgKH+"), e.a("38XxjOLB37rdgIjz"), e.a("3s/3jeTS3oDIg7zw"), e.a("djSG7uyVurY="), e.a("3uXujdLK3LzQg6XU"), e.a("0NztgNLA3ITbgo3U"), e.a("BVdaKD4rbA=="), e.a("YzGH3tGWn6U="), e.a("0ePzguvl37D2jr3V"), e.a("3ufxgdHk3LLEgL/q"), e.a("0vnegNHUeGU=")};
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ScreenBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f324f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f324f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenBean screenBean = (ScreenBean) obj;
            if (this.f324f == 1) {
                ScreenActivity.this.f114c.c();
            }
            ScreenActivity.this.f114c.a(screenBean.getRescont().getData());
        }
    }

    public static void t(Context context, int i2) {
        Intent intent = new Intent(context, ScreenActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f318d = intent.getIntExtra(e.a("UwMXBQ=="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cm_screen;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        for (int i2 = 0; i2 < this.f320f.length; i2++) {
            TabLayout.Tab text = this.tab1.newTab().setText(this.f321g[i2]);
            text.setTag(this.f320f[i2]);
            this.tab1.addTab(text);
            if (i2 == 0) {
                text.select();
            }
        }
        this.tab1.addOnTabSelectedListener(new c(this));
        for (int i3 = 0; i3 < this.f322h.length; i3++) {
            TabLayout.Tab text2 = this.tab2.newTab().setText(this.f323i[i3]);
            text2.setTag(Integer.valueOf(this.f322h[i3]));
            this.tab2.addTab(text2);
            if (this.f318d == this.f322h[i3]) {
                text2.select();
            }
        }
        this.tab2.addOnTabSelectedListener(new d(this));
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ScreenAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_back) {
            finish();
        } else if (id != R.id.iv_search) {
        } else {
            SearchActivity.m(this);
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().i(this.f318d, this.f319e, i2), new a(i2));
    }
}
