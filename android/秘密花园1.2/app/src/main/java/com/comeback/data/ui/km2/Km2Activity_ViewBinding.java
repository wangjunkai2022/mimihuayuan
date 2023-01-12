package com.comeback.data.ui.km2;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class Km2Activity_ViewBinding implements Unbinder {
    public Km2Activity b;

    @UiThread
    public Km2Activity_ViewBinding(Km2Activity km2Activity, View view) {
        this.b = km2Activity;
        km2Activity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        km2Activity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        Km2Activity km2Activity = this.b;
        if (km2Activity != null) {
            this.b = null;
            km2Activity.navigation = null;
            km2Activity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
