package com.comeback.data.ui.xj.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.xj.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HomeFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeFragment f2332c;

    /* renamed from: d  reason: collision with root package name */
    public View f2333d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f2334c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f2334c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.y(this.f2334c.getContext());
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        super(homeFragment, view);
        this.f2332c = homeFragment;
        View b = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f2333d = b;
        b.setOnClickListener(new a(this, homeFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f2332c != null) {
            this.f2332c = null;
            this.f2333d.setOnClickListener(null);
            this.f2333d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
