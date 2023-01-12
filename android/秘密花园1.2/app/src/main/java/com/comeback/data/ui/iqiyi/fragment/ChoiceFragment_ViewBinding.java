package com.comeback.data.ui.iqiyi.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ChoiceFragment_ViewBinding implements Unbinder {
    public ChoiceFragment b;

    @UiThread
    public ChoiceFragment_ViewBinding(ChoiceFragment choiceFragment, View view) {
        this.b = choiceFragment;
        choiceFragment.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        choiceFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        choiceFragment.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ChoiceFragment choiceFragment = this.b;
        if (choiceFragment != null) {
            this.b = null;
            choiceFragment.viewPager = null;
            choiceFragment.rvList = null;
            choiceFragment.tabLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
