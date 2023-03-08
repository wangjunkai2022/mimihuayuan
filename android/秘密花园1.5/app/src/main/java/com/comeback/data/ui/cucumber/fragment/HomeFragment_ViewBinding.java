package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.ui.cucumber.CollectActivity;
import com.comeback.data.ui.cucumber.SearchResultActivity;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HomeFragment_ViewBinding implements Unbinder {
    public HomeFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f495c;

    /* renamed from: d  reason: collision with root package name */
    public View f496d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f497c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f497c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            HomeFragment homeFragment = this.f497c;
            if (homeFragment.f493g == null) {
                h.n1(e.a("383Ug8b63I32joHjntDzjr3Ci9nWlpe/le6kgtbmheOnjd76"));
            } else {
                SearchResultActivity.o(homeFragment.getContext(), homeFragment.f493g);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f498c;

        public b(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f498c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            CollectActivity.p(this.f498c.getContext());
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        this.b = homeFragment;
        homeFragment.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
        View b2 = c.b(view, R.id.fl_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f495c = b2;
        b2.setOnClickListener(new a(this, homeFragment));
        View b3 = c.b(view, R.id.iv_like, e.a("WgcXDAQXGRQfD18CXw=="));
        this.f496d = b3;
        b3.setOnClickListener(new b(this, homeFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HomeFragment homeFragment = this.b;
        if (homeFragment != null) {
            this.b = null;
            homeFragment.mViewPager = null;
            this.f495c.setOnClickListener(null);
            this.f495c = null;
            this.f496d.setOnClickListener(null);
            this.f496d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
