package com.comeback.data.ui.fulao2;

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
public class FuLao2Activity_ViewBinding implements Unbinder {
    public FuLao2Activity b;

    @UiThread
    public FuLao2Activity_ViewBinding(FuLao2Activity fuLao2Activity, View view) {
        this.b = fuLao2Activity;
        fuLao2Activity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        fuLao2Activity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        FuLao2Activity fuLao2Activity = this.b;
        if (fuLao2Activity != null) {
            this.b = null;
            fuLao2Activity.navigation = null;
            fuLao2Activity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
