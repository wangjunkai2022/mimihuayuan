package com.comeback.data.ui.sex8.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankingFragment_ViewBinding implements Unbinder {
    public RankingFragment b;

    @UiThread
    public RankingFragment_ViewBinding(RankingFragment rankingFragment, View view) {
        this.b = rankingFragment;
        rankingFragment.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        rankingFragment.rgTab = (RadioGroup) c.c(view, R.id.rg_tab, e.a("UQsGCA9THkEUMlUFXw=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        RankingFragment rankingFragment = this.b;
        if (rankingFragment != null) {
            this.b = null;
            rankingFragment.viewPager = null;
            rankingFragment.rgTab = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
