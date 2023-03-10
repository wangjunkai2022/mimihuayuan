package com.comeback.data.ui.iqiyi.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.iqiyi.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeFragment f1235c;

    /* renamed from: d  reason: collision with root package name */
    public View f1236d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeFragment f1237c;

        public a(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f1237c = homeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.u(this.f1237c.getContext());
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        super(homeFragment, view);
        this.f1235c = homeFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1236d = b;
        b.setOnClickListener(new a(this, homeFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1235c != null) {
            this.f1235c = null;
            this.f1236d.setOnClickListener(null);
            this.f1236d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
