package com.comeback.data.ui.xj;

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
import com.comeback.data.ui.xj.adapter.ScreenAdapter;
import com.comeback.data.ui.xj.bean.ScreenVideo;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;

/* loaded from: classes.dex */
public class ScreenActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String[] f2266d = {e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw==")};

    /* renamed from: e  reason: collision with root package name */
    public boolean f2267e = false;

    /* renamed from: f  reason: collision with root package name */
    public TabLayout.OnTabSelectedListener f2268f = new a();
    @BindView
    public TabLayout mTab1;
    @BindView
    public TabLayout mTab2;
    @BindView
    public TabLayout mTab3;
    @BindView
    public TabLayout mTab4;
    @BindView
    public TabLayout mTab5;
    @BindView
    public TabLayout mTab6;
    @BindView
    public TabLayout mTab7;
    @BindView
    public TabLayout mTab8;

    /* loaded from: classes.dex */
    public class a implements TabLayout.OnTabSelectedListener {
        public a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            Object tag = tab.getTag();
            if (tag != null) {
                if (tag instanceof ScreenVideo.DataBean.CategoriesBean) {
                    ScreenActivity.this.f2266d[0] = ((ScreenVideo.DataBean.CategoriesBean) tag).getCateid();
                } else if (tag instanceof ScreenVideo.DataBean.AreasBean) {
                    ScreenActivity.this.f2266d[1] = ((ScreenVideo.DataBean.AreasBean) tag).getAreaid();
                } else if (tag instanceof ScreenVideo.DataBean.YearsBean) {
                    ScreenActivity.this.f2266d[2] = ((ScreenVideo.DataBean.YearsBean) tag).getYearid();
                } else if (tag instanceof ScreenVideo.DataBean.DefinitionsBean) {
                    ScreenActivity.this.f2266d[3] = ((ScreenVideo.DataBean.DefinitionsBean) tag).getKeyid();
                } else if (tag instanceof ScreenVideo.DataBean.DurationsBean) {
                    ScreenActivity.this.f2266d[4] = ((ScreenVideo.DataBean.DurationsBean) tag).getKeyid();
                } else if (tag instanceof ScreenVideo.DataBean.MosaicsBean) {
                    ScreenActivity.this.f2266d[5] = ((ScreenVideo.DataBean.MosaicsBean) tag).getKeyid();
                } else if (tag instanceof ScreenVideo.DataBean.LangvoicesBean) {
                    ScreenActivity.this.f2266d[6] = ((ScreenVideo.DataBean.LangvoicesBean) tag).getKeyid();
                } else if (!(tag instanceof ScreenVideo.DataBean.OrdersBean)) {
                    return;
                } else {
                    ScreenActivity.this.f2266d[7] = ((ScreenVideo.DataBean.OrdersBean) tag).getKeyid();
                }
                ScreenActivity.this.refreshLayout.h();
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<ScreenVideo> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2269f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f2269f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenVideo screenVideo = (ScreenVideo) obj;
            if (this.f2269f == 1) {
                ScreenActivity screenActivity = ScreenActivity.this;
                if (!screenActivity.f2267e) {
                    screenActivity.f2267e = true;
                    ScreenVideo.DataBean.CategoriesBean categoriesBean = new ScreenVideo.DataBean.CategoriesBean();
                    categoriesBean.setCatename(e.a("0ufLjejb3oLIg6rs"));
                    categoriesBean.setCateid(e.a("Bw=="));
                    TabLayout.Tab text = screenActivity.mTab1.newTab().setText(categoriesBean.getCatename());
                    text.setTag(categoriesBean);
                    text.select();
                    screenActivity.mTab1.addTab(text);
                    screenActivity.mTab1.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.CategoriesBean categoriesBean2 : screenVideo.getData().getCategories()) {
                        TabLayout.Tab text2 = screenActivity.mTab1.newTab().setText(categoriesBean2.getCatename());
                        text2.setTag(categoriesBean2);
                        screenActivity.mTab1.addTab(text2);
                        if (categoriesBean2.getCateid().equals(screenActivity.f2266d[0])) {
                            text2.select();
                        }
                    }
                    ScreenVideo.DataBean.AreasBean areasBean = new ScreenVideo.DataBean.AreasBean();
                    areasBean.setAreaname(e.a("0ufLjejb3K/Dg7jd"));
                    areasBean.setAreaid(e.a("Bw=="));
                    TabLayout.Tab text3 = screenActivity.mTab2.newTab().setText(areasBean.getAreaname());
                    text3.setTag(areasBean);
                    text3.select();
                    screenActivity.mTab2.addTab(text3);
                    screenActivity.mTab2.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.AreasBean areasBean2 : screenVideo.getData().getAreas()) {
                        TabLayout.Tab text4 = screenActivity.mTab2.newTab().setText(areasBean2.getAreaname());
                        text4.setTag(areasBean2);
                        screenActivity.mTab2.addTab(text4);
                        if (areasBean2.getAreaid().equals(screenActivity.f2266d[1])) {
                            text4.select();
                        }
                    }
                    ScreenVideo.DataBean.YearsBean yearsBean = new ScreenVideo.DataBean.YearsBean();
                    yearsBean.setYearname(e.a("0ufLjejb3IrHgo/a"));
                    yearsBean.setYearid(e.a("Bw=="));
                    TabLayout.Tab text5 = screenActivity.mTab3.newTab().setText(yearsBean.getYearname());
                    text5.setTag(yearsBean);
                    text5.select();
                    screenActivity.mTab3.addTab(text5);
                    screenActivity.mTab3.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.YearsBean yearsBean2 : screenVideo.getData().getYears()) {
                        TabLayout.Tab text6 = screenActivity.mTab3.newTab().setText(yearsBean2.getYearname());
                        text6.setTag(yearsBean2);
                        screenActivity.mTab3.addTab(text6);
                        if (yearsBean2.getYearid().equals(screenActivity.f2266d[2])) {
                            text6.select();
                        }
                    }
                    ScreenVideo.DataBean.DefinitionsBean definitionsBean = new ScreenVideo.DataBean.DefinitionsBean();
                    definitionsBean.setValue(e.a("0ufLjejb34v2gK3XndDF"));
                    definitionsBean.setKeyid(e.a("Bw=="));
                    TabLayout.Tab text7 = screenActivity.mTab4.newTab().setText(definitionsBean.getValue());
                    text7.setTag(definitionsBean);
                    text7.select();
                    screenActivity.mTab4.addTab(text7);
                    screenActivity.mTab4.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.DefinitionsBean definitionsBean2 : screenVideo.getData().getDefinitions()) {
                        TabLayout.Tab text8 = screenActivity.mTab4.newTab().setText(definitionsBean2.getValue());
                        text8.setTag(definitionsBean2);
                        screenActivity.mTab4.addTab(text8);
                        if (definitionsBean2.getKeyid().equals(screenActivity.f2266d[3])) {
                            text8.select();
                        }
                    }
                    ScreenVideo.DataBean.DurationsBean durationsBean = new ScreenVideo.DataBean.DurationsBean();
                    durationsBean.setValue(e.a("0ufLjejb0ZT3gJTb"));
                    durationsBean.setKeyid(e.a("Bw=="));
                    TabLayout.Tab text9 = screenActivity.mTab5.newTab().setText(durationsBean.getValue());
                    text9.setTag(durationsBean);
                    text9.select();
                    screenActivity.mTab5.addTab(text9);
                    screenActivity.mTab5.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.DurationsBean durationsBean2 : screenVideo.getData().getDurations()) {
                        TabLayout.Tab text10 = screenActivity.mTab5.newTab().setText(durationsBean2.getValue());
                        text10.setTag(durationsBean2);
                        screenActivity.mTab5.addTab(text10);
                        if (durationsBean2.getKeyid().equals(screenActivity.f2266d[4])) {
                            text10.select();
                        }
                    }
                    ScreenVideo.DataBean.MosaicsBean mosaicsBean = new ScreenVideo.DataBean.MosaicsBean();
                    mosaicsBean.setValue(e.a("0ufLjejb"));
                    mosaicsBean.setKeyid(e.a("Bw=="));
                    TabLayout.Tab text11 = screenActivity.mTab6.newTab().setText(mosaicsBean.getValue());
                    text11.setTag(mosaicsBean);
                    text11.select();
                    screenActivity.mTab6.addTab(text11);
                    screenActivity.mTab6.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.MosaicsBean mosaicsBean2 : screenVideo.getData().getMosaics()) {
                        TabLayout.Tab text12 = screenActivity.mTab6.newTab().setText(mosaicsBean2.getValue());
                        text12.setTag(mosaicsBean2);
                        screenActivity.mTab6.addTab(text12);
                        if (mosaicsBean2.getKeyid().equals(screenActivity.f2266d[5])) {
                            text12.select();
                        }
                    }
                    ScreenVideo.DataBean.LangvoicesBean langvoicesBean = new ScreenVideo.DataBean.LangvoicesBean();
                    langvoicesBean.setValue(e.a("0ufLjejb0Zzejpzn"));
                    langvoicesBean.setKeyid(e.a("Bw=="));
                    TabLayout.Tab text13 = screenActivity.mTab7.newTab().setText(langvoicesBean.getValue());
                    text13.setTag(langvoicesBean);
                    text13.select();
                    screenActivity.mTab7.addTab(text13);
                    screenActivity.mTab7.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.LangvoicesBean langvoicesBean2 : screenVideo.getData().getLangvoices()) {
                        TabLayout.Tab text14 = screenActivity.mTab7.newTab().setText(langvoicesBean2.getValue());
                        text14.setTag(langvoicesBean2);
                        screenActivity.mTab7.addTab(text14);
                        if (langvoicesBean2.getKeyid().equals(screenActivity.f2266d[6])) {
                            text14.select();
                        }
                    }
                    ScreenVideo.DataBean.OrdersBean ordersBean = new ScreenVideo.DataBean.OrdersBean();
                    ordersBean.setValue(e.a("0ufLjejb373hg47o"));
                    ordersBean.setKeyid(e.a("Bw=="));
                    TabLayout.Tab text15 = screenActivity.mTab8.newTab().setText(ordersBean.getValue());
                    text15.setTag(ordersBean);
                    text15.select();
                    screenActivity.mTab8.addTab(text15);
                    screenActivity.mTab8.addOnTabSelectedListener(screenActivity.f2268f);
                    for (ScreenVideo.DataBean.OrdersBean ordersBean2 : screenVideo.getData().getOrders()) {
                        TabLayout.Tab text16 = screenActivity.mTab8.newTab().setText(ordersBean2.getValue());
                        text16.setTag(ordersBean2);
                        screenActivity.mTab8.addTab(text16);
                        if (ordersBean2.getKeyid().equals(screenActivity.f2266d[7])) {
                            text16.select();
                        }
                    }
                }
                ScreenActivity.this.f114c.c();
            }
            ScreenActivity.this.f114c.a(screenVideo.getData().getVodrows());
        }
    }

    public static void t(Context context, String[] strArr) {
        Intent intent = new Intent(context, ScreenActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), strArr);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        String[] stringArrayExtra = intent.getStringArrayExtra(e.a("UwMXBQ=="));
        if (stringArrayExtra == null || stringArrayExtra.length != 8) {
            return;
        }
        this.f2266d = stringArrayExtra;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_secrrn;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        int parseColor = Color.parseColor(e.a("FFBVVlJBfw=="));
        j(parseColor);
        h(parseColor);
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
            SearchActivity.y(this);
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        f.e.a.j.s0.g.a a2 = f.e.a.j.s0.g.b.a();
        StringBuilder sb = new StringBuilder();
        sb.append(e.a("WwsQEAIdXh4="));
        f.b.a.a.a.B(sb, this.f2266d[0], "Gg==");
        f.b.a.a.a.B(sb, this.f2266d[1], "Gg==");
        f.b.a.a.a.B(sb, this.f2266d[2], "Gg==");
        f.b.a.a.a.B(sb, this.f2266d[3], "Gg==");
        f.b.a.a.a.B(sb, this.f2266d[4], "GlJO");
        f.b.a.a.a.B(sb, this.f2266d[5], "Gg==");
        f.b.a.a.a.B(sb, this.f2266d[6], "Gg==");
        sb.append(this.f2266d[7]);
        sb.append(e.a("Gg=="));
        sb.append(i2);
        k(a2.i(sb.toString()), new b(i2));
    }
}
