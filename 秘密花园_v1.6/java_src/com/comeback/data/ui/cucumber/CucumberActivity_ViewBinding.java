package com.comeback.data.ui.cucumber;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class CucumberActivity_ViewBinding implements Unbinder {
    public CucumberActivity b;

    @UiThread
    public CucumberActivity_ViewBinding(CucumberActivity cucumberActivity, View view) {
        this.b = cucumberActivity;
        cucumberActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        RadioButton radioButton = (RadioButton) c.c(view, R.id.rb_home, e.a("UQsGCA9THkERLlsKHU0="), RadioButton.class);
        RadioButton radioButton2 = (RadioButton) c.c(view, R.id.rb_column, e.a("UQsGCA9THkERJVsLDQcNTA=="), RadioButton.class);
        RadioButton radioButton3 = (RadioButton) c.c(view, R.id.rb_rank, e.a("UQsGCA9THkERNFUJE00="), RadioButton.class);
        RadioButton radioButton4 = (RadioButton) c.c(view, R.id.rb_mine, e.a("UQsGCA9THkERK10JHU0="), RadioButton.class);
        cucumberActivity.rgTab = (RadioGroup) c.c(view, R.id.rg_tab, e.a("UQsGCA9THkEUMlUFXw=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CucumberActivity cucumberActivity = this.b;
        if (cucumberActivity != null) {
            this.b = null;
            cucumberActivity.viewPager = null;
            cucumberActivity.rgTab = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
