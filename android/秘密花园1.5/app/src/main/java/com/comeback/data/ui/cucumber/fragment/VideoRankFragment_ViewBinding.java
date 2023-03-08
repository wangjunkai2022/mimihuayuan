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
public class VideoRankFragment_ViewBinding implements Unbinder {
    public VideoRankFragment b;

    @UiThread
    public VideoRankFragment_ViewBinding(VideoRankFragment videoRankFragment, View view) {
        this.b = videoRankFragment;
        videoRankFragment.radioGroup = (RadioGroup) c.c(view, R.id.radio_group, e.a("UQsGCA9THkESAl0IPxgMHkdF"), RadioGroup.class);
        videoRankFragment.viewpager = (CustomViewPager) c.c(view, R.id.viewpager, e.a("UQsGCA9THkUaA0MXGQ0GGRA="), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VideoRankFragment videoRankFragment = this.b;
        if (videoRankFragment != null) {
            this.b = null;
            videoRankFragment.radioGroup = null;
            videoRankFragment.viewpager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
