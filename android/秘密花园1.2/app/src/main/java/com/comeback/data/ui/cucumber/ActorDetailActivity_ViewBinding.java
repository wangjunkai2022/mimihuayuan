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
public class ActorDetailActivity_ViewBinding implements Unbinder {
    public ActorDetailActivity b;

    @UiThread
    public ActorDetailActivity_ViewBinding(ActorDetailActivity actorDetailActivity, View view) {
        this.b = actorDetailActivity;
        actorDetailActivity.viewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THkUaA0M3GQ0GGRA="), CustomViewPager.class);
        actorDetailActivity.ivBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
        actorDetailActivity.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
        actorDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        actorDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        actorDetailActivity.tvInfo = (TextView) c.c(view, R.id.tv_info, e.a("UQsGCA9THkcFL1oBF00="), TextView.class);
        actorDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        actorDetailActivity.rb1 = (RadioButton) c.c(view, R.id.rb_1, e.a("UQsGCA9THkERVxM="), RadioButton.class);
        actorDetailActivity.rb2 = (RadioButton) c.c(view, R.id.rb_2, e.a("UQsGCA9THkERVBM="), RadioButton.class);
        actorDetailActivity.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ActorDetailActivity actorDetailActivity = this.b;
        if (actorDetailActivity != null) {
            this.b = null;
            actorDetailActivity.viewPager = null;
            actorDetailActivity.ivBg = null;
            actorDetailActivity.ivHead = null;
            actorDetailActivity.tvCount = null;
            actorDetailActivity.tvName = null;
            actorDetailActivity.tvInfo = null;
            actorDetailActivity.tvIntro = null;
            actorDetailActivity.rb1 = null;
            actorDetailActivity.rb2 = null;
            actorDetailActivity.radioGroup = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
