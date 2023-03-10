package com.comeback.data.ui.isiyu;

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
public class MainActivity_ViewBinding implements Unbinder {
    public MainActivity b;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.b = mainActivity;
        mainActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        mainActivity.rgTab = (RadioGroup) c.c(view, R.id.rg_tab, e.a("UQsGCA9THkEUMlUFXw=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MainActivity mainActivity = this.b;
        if (mainActivity != null) {
            this.b = null;
            mainActivity.viewPager = null;
            mainActivity.rgTab = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
