package com.comeback.data.ui.fruitPie.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.data.ui.fruitPie.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeFragment f757c;

    /* renamed from: d  reason: collision with root package name */
    public View f758d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f759c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f759c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.t(this.f759c.getContext());
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        super(homeFragment, view);
        this.f757c = homeFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f758d = b;
        b.setOnClickListener(new a(this, homeFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f757c != null) {
            this.f757c = null;
            this.f758d.setOnClickListener(null);
            this.f758d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
