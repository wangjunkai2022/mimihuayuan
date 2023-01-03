package com.comeback.data.ui.cucumber.fragment;

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
public class HotRankFragment_ViewBinding implements Unbinder {
    public HotRankFragment b;

    @UiThread
    public HotRankFragment_ViewBinding(HotRankFragment hotRankFragment, View view) {
        this.b = hotRankFragment;
        hotRankFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
        hotRankFragment.viewpager = (CustomViewPager) c.c(view, R.id.viewpager, e.a("UQsGCA9THkUaA0MXGQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HotRankFragment hotRankFragment = this.b;
        if (hotRankFragment != null) {
            this.b = null;
            hotRankFragment.radioGroup = null;
            hotRankFragment.viewpager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
