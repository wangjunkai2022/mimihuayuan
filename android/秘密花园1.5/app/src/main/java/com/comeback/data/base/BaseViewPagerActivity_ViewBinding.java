package com.comeback.data.base;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class BaseViewPagerActivity_ViewBinding implements Unbinder {
    public BaseViewPagerActivity b;

    @UiThread
    public BaseViewPagerActivity_ViewBinding(BaseViewPagerActivity baseViewPagerActivity, View view) {
        this.b = baseViewPagerActivity;
        baseViewPagerActivity.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
        baseViewPagerActivity.mTabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THl4nB1YrGRMMHkNF"), TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        BaseViewPagerActivity baseViewPagerActivity = this.b;
        if (baseViewPagerActivity != null) {
            this.b = null;
            baseViewPagerActivity.mViewPager = null;
            baseViewPagerActivity.mTabLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
