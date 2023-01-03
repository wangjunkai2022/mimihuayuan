package com.comeback.data.ui.mimei;

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
public class MimeiActivity_ViewBinding implements Unbinder {
    public MimeiActivity b;

    @UiThread
    public MimeiActivity_ViewBinding(MimeiActivity mimeiActivity, View view) {
        this.b = mimeiActivity;
        mimeiActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        mimeiActivity.rgTab = (RadioGroup) c.c(view, R.id.rg_tab, e.a("UQsGCA9THkEUMlUFXw=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MimeiActivity mimeiActivity = this.b;
        if (mimeiActivity != null) {
            this.b = null;
            mimeiActivity.viewPager = null;
            mimeiActivity.rgTab = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
