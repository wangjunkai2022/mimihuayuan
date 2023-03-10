package com.comeback.data.ui.gdian;

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
public class GDianActivity_ViewBinding implements Unbinder {
    public GDianActivity b;

    @UiThread
    public GDianActivity_ViewBinding(GDianActivity gDianActivity, View view) {
        this.b = gDianActivity;
        gDianActivity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        gDianActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        GDianActivity gDianActivity = this.b;
        if (gDianActivity != null) {
            this.b = null;
            gDianActivity.navigation = null;
            gDianActivity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
