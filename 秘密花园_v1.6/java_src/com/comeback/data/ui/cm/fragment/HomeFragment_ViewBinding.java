package com.comeback.data.ui.cm.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.cm.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeFragment f379c;

    /* renamed from: d  reason: collision with root package name */
    public View f380d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f381c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f381c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.m(this.f381c.getContext());
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        super(homeFragment, view);
        this.f379c = homeFragment;
        View b = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f380d = b;
        b.setOnClickListener(new a(this, homeFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f379c != null) {
            this.f379c = null;
            this.f380d.setOnClickListener(null);
            this.f380d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
