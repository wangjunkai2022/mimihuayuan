package com.comeback.data.ui.tomato;

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
public class TomatoActivity_ViewBinding implements Unbinder {
    public TomatoActivity b;

    @UiThread
    public TomatoActivity_ViewBinding(TomatoActivity tomatoActivity, View view) {
        this.b = tomatoActivity;
        tomatoActivity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        tomatoActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        TomatoActivity tomatoActivity = this.b;
        if (tomatoActivity != null) {
            this.b = null;
            tomatoActivity.navigation = null;
            tomatoActivity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
