package com.comeback.data.ui.cucumber;

import android.view.View;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserDetailActivity_ViewBinding implements Unbinder {
    public UserDetailActivity b;

    @UiThread
    public UserDetailActivity_ViewBinding(UserDetailActivity userDetailActivity, View view) {
        this.b = userDetailActivity;
        userDetailActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        userDetailActivity.ivBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
        userDetailActivity.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
        userDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        userDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        userDetailActivity.tvInfo = (TextView) c.c(view, R.id.tv_info, e.a("UQsGCA9THkcFL1oBF00="), TextView.class);
        userDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        userDetailActivity.rb1 = (RadioButton) c.c(view, R.id.rb_1, e.a("UQsGCA9THkERVxM="), RadioButton.class);
        userDetailActivity.rb2 = (RadioButton) c.c(view, R.id.rb_2, e.a("UQsGCA9THkERVBM="), RadioButton.class);
        userDetailActivity.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        UserDetailActivity userDetailActivity = this.b;
        if (userDetailActivity != null) {
            this.b = null;
            userDetailActivity.viewPager = null;
            userDetailActivity.ivBg = null;
            userDetailActivity.ivHead = null;
            userDetailActivity.tvCount = null;
            userDetailActivity.tvName = null;
            userDetailActivity.tvInfo = null;
            userDetailActivity.tvIntro = null;
            userDetailActivity.rb1 = null;
            userDetailActivity.rb2 = null;
            userDetailActivity.radioGroup = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
