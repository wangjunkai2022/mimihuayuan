package com.comeback.data.ui.md;

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
public class MdActivity_ViewBinding implements Unbinder {
    public MdActivity b;

    @UiThread
    public MdActivity_ViewBinding(MdActivity mdActivity, View view) {
        this.b = mdActivity;
        mdActivity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        mdActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MdActivity mdActivity = this.b;
        if (mdActivity != null) {
            this.b = null;
            mdActivity.navigation = null;
            mdActivity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
