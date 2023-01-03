package com.comeback.data.ui.iqiyi;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserCenterActivity_ViewBinding implements Unbinder {
    public UserCenterActivity b;

    @UiThread
    public UserCenterActivity_ViewBinding(UserCenterActivity userCenterActivity, View view) {
        this.b = userCenterActivity;
        userCenterActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        userCenterActivity.ivHeader = (ImageView) c.c(view, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTA=="), ImageView.class);
        userCenterActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        userCenterActivity.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        UserCenterActivity userCenterActivity = this.b;
        if (userCenterActivity != null) {
            this.b = null;
            userCenterActivity.viewPager = null;
            userCenterActivity.ivHeader = null;
            userCenterActivity.tvName = null;
            userCenterActivity.tabLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
