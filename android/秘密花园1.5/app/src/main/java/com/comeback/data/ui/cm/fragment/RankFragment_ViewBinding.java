package com.comeback.data.ui.cm.fragment;

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
public class RankFragment_ViewBinding implements Unbinder {
    public RankFragment b;

    @UiThread
    public RankFragment_ViewBinding(RankFragment rankFragment, View view) {
        this.b = rankFragment;
        rankFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
        rankFragment.viewpager = (CustomViewPager) c.c(view, R.id.viewpager, e.a("UQsGCA9THkUaA0MXGQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        RankFragment rankFragment = this.b;
        if (rankFragment != null) {
            this.b = null;
            rankFragment.radioGroup = null;
            rankFragment.viewpager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
