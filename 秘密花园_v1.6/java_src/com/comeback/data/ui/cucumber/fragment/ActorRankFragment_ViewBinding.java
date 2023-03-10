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
public class ActorRankFragment_ViewBinding implements Unbinder {
    public ActorRankFragment b;

    @UiThread
    public ActorRankFragment_ViewBinding(ActorRankFragment actorRankFragment, View view) {
        this.b = actorRankFragment;
        actorRankFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
        actorRankFragment.viewpager = (CustomViewPager) c.c(view, R.id.viewpager, e.a("UQsGCA9THkUaA0MXGQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ActorRankFragment actorRankFragment = this.b;
        if (actorRankFragment != null) {
            this.b = null;
            actorRankFragment.radioGroup = null;
            actorRankFragment.viewpager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
