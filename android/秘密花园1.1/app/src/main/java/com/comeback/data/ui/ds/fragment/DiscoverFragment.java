package com.comeback.data.ui.ds.fragment;

import android.widget.ImageView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.ds.DsActivity;
import com.comeback.data.ui.ds.adapter.RealTimeAdapter;
import com.comeback.data.ui.ds.bean.ScreenBean;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.i.i.b;

/* loaded from: classes.dex */
public class DiscoverFragment extends BaseRefreshFragment {
    @BindView
    public ImageView ivSearch;
    @BindView
    public TabLayout tab1;
    @BindView
    public TabLayout tab2;

    /* renamed from: i  reason: collision with root package name */
    public String f631i = e.a("BQ==");

    /* renamed from: j  reason: collision with root package name */
    public String f632j = e.a("Bw==");

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ScreenBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f633f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f633f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenBean screenBean = (ScreenBean) obj;
            if (this.f633f == 1) {
                DiscoverFragment.this.f117h.c();
            }
            DiscoverFragment.this.f117h.a(screenBean.getResult().getList());
            if (screenBean.getResult().isLastPage()) {
                h.n1(e.a("0dDCgvf636jHg5D9nv/TjbrMh97t"));
            }
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ds_discover;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.ivSearch.setVisibility(DsActivity.f593d.equals(e.a("Bg==")) ? 0 : 8);
        TabLayout.Tab tag = this.tab1.newTab().setText(e.a("0ufLjejb")).setTag(e.a("BQ=="));
        tag.select();
        this.tab1.addTab(tag);
        this.tab1.addTab(this.tab1.newTab().setText(e.a("0tXRgcX/3ojg")).setTag(e.a("Bw==")));
        this.tab1.addTab(this.tab1.newTab().setText(e.a("3939jNbO3Yve")).setTag(e.a("Bg==")));
        this.tab1.addOnTabSelectedListener(new f.e.a.j.i.i.a(this));
        TabLayout.Tab tag2 = this.tab2.newTab().setText(e.a("0ufLjejb")).setTag(e.a("Bw=="));
        tag2.select();
        this.tab2.addTab(tag2);
        if (DsActivity.f593d.equals(e.a("Bg=="))) {
            this.tab2.addTab(this.tab2.newTab().setText(e.a("097Fg/v1")).setTag(e.a("BlJS")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("3uHegdPx")).setTag(e.a("BlJR")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0szmg9jI")).setTag(e.a("BlJQ")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0cLCgfDe")).setTag(e.a("BlJU")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0OzngdLI")).setTag(e.a("BlJb")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0OHOjMrz")).setTag(e.a("BlNT")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0eDPg/3i")).setTag(e.a("BlNS")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0NjMg+PC")).setTag(e.a("BlNW")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0OPWgdfx")).setTag(e.a("BlNU")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0v3Zguj2")).setTag(e.a("BlNa")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0eHpgunp")).setTag(e.a("BlBT")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("3/L+jOX6")).setTag(e.a("BlBX")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0ePog+PC")).setTag(e.a("BlBW")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0c/Agc/Z")).setTag(e.a("BlBV")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0uXZg+L734/YgaDc")).setTag(e.a("BlBU")));
        } else {
            this.tab2.addTab(this.tab2.newTab().setText(e.a("38rjguj2")).setTag(e.a("D1c=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0cLCgfDe")).setTag(e.a("D1Q=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("3uHegdPx")).setTag(e.a("D1U=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("3+Leg9X9")).setTag(e.a("D1o=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0MvcjN35")).setTag(e.a("D1s=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0Pn0gcng")).setTag(e.a("DlI=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0drbguP8")).setTag(e.a("DlM=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0OzngdLI")).setTag(e.a("DlA=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0OPWgdfx")).setTag(e.a("DlE=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0N/ygtPL")).setTag(e.a("DlY=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0eDPg/3i")).setTag(e.a("Dlc=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("09n6gNXT")).setTag(e.a("DlQ=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0ezLg/v1")).setTag(e.a("DlU=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0P3Ogv723Yn4")).setTag(e.a("Dlo=")));
            this.tab2.addTab(this.tab2.newTab().setText(e.a("0f7JjMzQ3Yr4joT7")).setTag(e.a("Dls=")));
        }
        this.tab2.addOnTabSelectedListener(new b(this));
        super.f();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new RealTimeAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.i.j.b.a().g(DsActivity.f593d, this.f631i, this.f632j, i2), new a(i2));
    }
}
