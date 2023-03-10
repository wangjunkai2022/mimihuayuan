package com.comeback.data.ui.bale.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeFragment f294c;

    /* renamed from: d  reason: collision with root package name */
    public View f295d;

    /* renamed from: e  reason: collision with root package name */
    public View f296e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f297c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f297c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f297c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f298c;

        public b(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f298c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f298c.onViewClicked(view);
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        super(homeFragment, view);
        this.f294c = homeFragment;
        View b2 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f295d = b2;
        b2.setOnClickListener(new a(this, homeFragment));
        View b3 = c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f296e = b3;
        b3.setOnClickListener(new b(this, homeFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f294c != null) {
            this.f294c = null;
            this.f295d.setOnClickListener(null);
            this.f295d = null;
            this.f296e.setOnClickListener(null);
            this.f296e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
