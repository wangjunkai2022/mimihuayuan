package com.comeback.data.ui.xj;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ScreenActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ScreenActivity f2275c;

    /* renamed from: d  reason: collision with root package name */
    public View f2276d;

    /* renamed from: e  reason: collision with root package name */
    public View f2277e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ScreenActivity f2278c;

        public a(ScreenActivity_ViewBinding screenActivity_ViewBinding, ScreenActivity screenActivity) {
            this.f2278c = screenActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2278c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ScreenActivity f2279c;

        public b(ScreenActivity_ViewBinding screenActivity_ViewBinding, ScreenActivity screenActivity) {
            this.f2279c = screenActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2279c.onClick(view);
        }
    }

    @UiThread
    public ScreenActivity_ViewBinding(ScreenActivity screenActivity, View view) {
        super(screenActivity, view);
        this.f2275c = screenActivity;
        screenActivity.mTab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THl4nB1ZWXw=="), TabLayout.class);
        screenActivity.mTab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THl4nB1ZVXw=="), TabLayout.class);
        screenActivity.mTab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THl4nB1ZUXw=="), TabLayout.class);
        screenActivity.mTab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THl4nB1ZTXw=="), TabLayout.class);
        screenActivity.mTab5 = (TabLayout) c.c(view, R.id.tab5, e.a("UQsGCA9THl4nB1ZSXw=="), TabLayout.class);
        screenActivity.mTab6 = (TabLayout) c.c(view, R.id.tab6, e.a("UQsGCA9THl4nB1ZRXw=="), TabLayout.class);
        screenActivity.mTab7 = (TabLayout) c.c(view, R.id.tab7, e.a("UQsGCA9THl4nB1ZQXw=="), TabLayout.class);
        screenActivity.mTab8 = (TabLayout) c.c(view, R.id.tab8, e.a("UQsGCA9THl4nB1ZfXw=="), TabLayout.class);
        View b2 = c.b(view, R.id.iv_back, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f2276d = b2;
        b2.setOnClickListener(new a(this, screenActivity));
        View b3 = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f2277e = b3;
        b3.setOnClickListener(new b(this, screenActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ScreenActivity screenActivity = this.f2275c;
        if (screenActivity != null) {
            this.f2275c = null;
            screenActivity.mTab1 = null;
            screenActivity.mTab2 = null;
            screenActivity.mTab3 = null;
            screenActivity.mTab4 = null;
            screenActivity.mTab5 = null;
            screenActivity.mTab6 = null;
            screenActivity.mTab7 = null;
            screenActivity.mTab8 = null;
            this.f2276d.setOnClickListener(null);
            this.f2276d = null;
            this.f2277e.setOnClickListener(null);
            this.f2277e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
