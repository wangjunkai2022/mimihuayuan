package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankFragment_ViewBinding implements Unbinder {
    public RankFragment b;

    @UiThread
    public RankFragment_ViewBinding(RankFragment rankFragment, View view) {
        this.b = rankFragment;
        rankFragment.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
        rankFragment.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        rankFragment.ivBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        RankFragment rankFragment = this.b;
        if (rankFragment != null) {
            this.b = null;
            rankFragment.tabLayout = null;
            rankFragment.viewPager = null;
            rankFragment.ivBg = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
