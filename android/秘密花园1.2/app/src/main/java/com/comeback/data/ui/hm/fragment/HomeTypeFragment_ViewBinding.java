package com.comeback.data.ui.hm.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.data.ui.hm.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HomeTypeFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HomeTypeFragment f1139c;

    /* renamed from: d  reason: collision with root package name */
    public View f1140d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HomeTypeFragment f1141c;

        public a(HomeTypeFragment_ViewBinding homeTypeFragment_ViewBinding, HomeTypeFragment homeTypeFragment) {
            this.f1141c = homeTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.y(this.f1141c.getContext());
        }
    }

    @UiThread
    public HomeTypeFragment_ViewBinding(HomeTypeFragment homeTypeFragment, View view) {
        super(homeTypeFragment, view);
        this.f1139c = homeTypeFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1140d = b;
        b.setOnClickListener(new a(this, homeTypeFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1139c != null) {
            this.f1139c = null;
            this.f1140d.setOnClickListener(null);
            this.f1140d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
