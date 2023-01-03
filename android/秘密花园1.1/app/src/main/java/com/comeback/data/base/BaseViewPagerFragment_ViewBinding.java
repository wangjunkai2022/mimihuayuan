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
public class BaseViewPagerFragment_ViewBinding implements Unbinder {
    public BaseViewPagerFragment b;

    @UiThread
    public BaseViewPagerFragment_ViewBinding(BaseViewPagerFragment baseViewPagerFragment, View view) {
        this.b = baseViewPagerFragment;
        baseViewPagerFragment.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
        baseViewPagerFragment.mTabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THl4nB1YrGRMMHkNF"), TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        BaseViewPagerFragment baseViewPagerFragment = this.b;
        if (baseViewPagerFragment != null) {
            this.b = null;
            baseViewPagerFragment.mViewPager = null;
            baseViewPagerFragment.mTabLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
