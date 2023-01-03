package com.comeback.data.ui.aimeiju;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class AimeijuActivity_ViewBinding implements Unbinder {
    public AimeijuActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f125c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ AimeijuActivity f126c;

        public a(AimeijuActivity_ViewBinding aimeijuActivity_ViewBinding, AimeijuActivity aimeijuActivity) {
            this.f126c = aimeijuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            AimeijuActivity aimeijuActivity = this.f126c;
            if (aimeijuActivity == null) {
                throw null;
            }
            SearchActivity.m(aimeijuActivity);
        }
    }

    @UiThread
    public AimeijuActivity_ViewBinding(AimeijuActivity aimeijuActivity, View view) {
        this.b = aimeijuActivity;
        aimeijuActivity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        aimeijuActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        View b = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f125c = b;
        b.setOnClickListener(new a(this, aimeijuActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AimeijuActivity aimeijuActivity = this.b;
        if (aimeijuActivity != null) {
            this.b = null;
            aimeijuActivity.navigation = null;
            aimeijuActivity.viewPager = null;
            this.f125c.setOnClickListener(null);
            this.f125c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
