package com.comeback.data.ui.fruitPie;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class FruitActivity_ViewBinding implements Unbinder {
    public FruitActivity b;

    @UiThread
    public FruitActivity_ViewBinding(FruitActivity fruitActivity, View view) {
        this.b = fruitActivity;
        fruitActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        RadioButton radioButton = (RadioButton) c.c(view, R.id.tab_main_page, e.a("UQsGCA9THkcSBHkGEQQzClAHRA=="), RadioButton.class);
        RadioButton radioButton2 = (RadioButton) c.c(view, R.id.tab_discover, e.a("UQsGCA9THkcSBHAOCwkMHVIQRA=="), RadioButton.class);
        RadioButton radioButton3 = (RadioButton) c.c(view, R.id.tab_anchor, e.a("UQsGCA9THkcSBHUJGwIMGRA="), RadioButton.class);
        RelativeLayout relativeLayout = (RelativeLayout) c.c(view, R.id.bottom_tab_layout, e.a("UQsGCA9THlEcEkAIFT4CCXsDGgseBx4="), RelativeLayout.class);
        fruitActivity.rgTab = (RadioGroup) c.c(view, R.id.rg_tab, e.a("UQsGCA9THkEUMlUFXw=="), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        FruitActivity fruitActivity = this.b;
        if (fruitActivity != null) {
            this.b = null;
            fruitActivity.viewPager = null;
            fruitActivity.rgTab = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
