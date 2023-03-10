package com.comeback.data.ui.ds.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.ds.SearchActivity;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class DiscoverFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public DiscoverFragment f635c;

    /* renamed from: d  reason: collision with root package name */
    public View f636d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f637c;

        public a(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f637c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f637c.getContext());
        }
    }

    @UiThread
    public DiscoverFragment_ViewBinding(DiscoverFragment discoverFragment, View view) {
        super(discoverFragment, view);
        this.f635c = discoverFragment;
        discoverFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        discoverFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        View b = c.b(view, R.id.iv_search, e.a("UQsGCA9THloFNVEGCgkLTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        discoverFragment.ivSearch = (ImageView) c.a(b, R.id.iv_search, e.a("UQsGCA9THloFNVEGCgkLTA=="), ImageView.class);
        this.f636d = b;
        b.setOnClickListener(new a(this, discoverFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        DiscoverFragment discoverFragment = this.f635c;
        if (discoverFragment != null) {
            this.f635c = null;
            discoverFragment.tab1 = null;
            discoverFragment.tab2 = null;
            discoverFragment.ivSearch = null;
            this.f636d.setOnClickListener(null);
            this.f636d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
