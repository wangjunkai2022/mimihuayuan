package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchFragment_ViewBinding implements Unbinder {
    public SearchFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f219c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f220c;

        public a(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f220c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f220c.search();
        }
    }

    @UiThread
    public SearchFragment_ViewBinding(SearchFragment searchFragment, View view) {
        this.b = searchFragment;
        searchFragment.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
        searchFragment.mTabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THl4nB1YrGRMMHkNF"), TabLayout.class);
        searchFragment.searchInput = (EditText) c.c(view, R.id.search_input, e.a("UQsGCA9THkAWB0YEECMNG0IWRA=="), EditText.class);
        View b = c.b(view, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTBcDDQBLHlxHGwlQR18ZBgpFAQtD"));
        TextView textView = (TextView) c.a(b, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTA=="), TextView.class);
        this.f219c = b;
        b.setOnClickListener(new a(this, searchFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchFragment searchFragment = this.b;
        if (searchFragment != null) {
            this.b = null;
            searchFragment.mViewPager = null;
            searchFragment.mTabLayout = null;
            searchFragment.searchInput = null;
            this.f219c.setOnClickListener(null);
            this.f219c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
