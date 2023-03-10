package com.comeback.data.ui.cm;

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
    public ScreenActivity f326c;

    /* renamed from: d  reason: collision with root package name */
    public View f327d;

    /* renamed from: e  reason: collision with root package name */
    public View f328e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ScreenActivity f329c;

        public a(ScreenActivity_ViewBinding screenActivity_ViewBinding, ScreenActivity screenActivity) {
            this.f329c = screenActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f329c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ScreenActivity f330c;

        public b(ScreenActivity_ViewBinding screenActivity_ViewBinding, ScreenActivity screenActivity) {
            this.f330c = screenActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f330c.onClick(view);
        }
    }

    @UiThread
    public ScreenActivity_ViewBinding(ScreenActivity screenActivity, View view) {
        super(screenActivity, view);
        this.f326c = screenActivity;
        screenActivity.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        screenActivity.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        View b2 = c.b(view, R.id.iv_back, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f327d = b2;
        b2.setOnClickListener(new a(this, screenActivity));
        View b3 = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f328e = b3;
        b3.setOnClickListener(new b(this, screenActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ScreenActivity screenActivity = this.f326c;
        if (screenActivity != null) {
            this.f326c = null;
            screenActivity.tab1 = null;
            screenActivity.tab2 = null;
            this.f327d.setOnClickListener(null);
            this.f327d = null;
            this.f328e.setOnClickListener(null);
            this.f328e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
