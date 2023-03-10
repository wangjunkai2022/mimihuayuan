package com.comeback.data.ui.isiyu.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HomeFragment_ViewBinding implements Unbinder {
    public HomeFragment b;

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        this.b = homeFragment;
        homeFragment.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HomeFragment homeFragment = this.b;
        if (homeFragment != null) {
            this.b = null;
            homeFragment.mViewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
