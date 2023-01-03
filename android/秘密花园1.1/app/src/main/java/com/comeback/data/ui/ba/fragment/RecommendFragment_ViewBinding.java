package com.comeback.data.ui.ba.fragment;

import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.youth.banner.Banner;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class RecommendFragment_ViewBinding implements Unbinder {
    public RecommendFragment b;

    @UiThread
    public RecommendFragment_ViewBinding(RecommendFragment recommendFragment, View view) {
        this.b = recommendFragment;
        recommendFragment.banner = (Banner) c.c(view, R.id.banner, e.a("UQsGCA9THlESCFoCCk0="), Banner.class);
        recommendFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
        recommendFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        RecommendFragment recommendFragment = this.b;
        if (recommendFragment != null) {
            this.b = null;
            recommendFragment.banner = null;
            recommendFragment.radioGroup = null;
            recommendFragment.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
