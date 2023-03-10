package com.comeback.data.ui.iqiyi;

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
public class IQYMainActivity_ViewBinding implements Unbinder {
    public IQYMainActivity b;

    @UiThread
    public IQYMainActivity_ViewBinding(IQYMainActivity iQYMainActivity, View view) {
        this.b = iQYMainActivity;
        iQYMainActivity.navigation = (BottomNavigationView) c.c(view, R.id.navigation, e.a("UQsGCA9THl0SEF0AGR4KBFlF"), BottomNavigationView.class);
        iQYMainActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        IQYMainActivity iQYMainActivity = this.b;
        if (iQYMainActivity != null) {
            this.b = null;
            iQYMainActivity.navigation = null;
            iQYMainActivity.viewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
