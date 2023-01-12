package com.comeback.data.ui.hg;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HGMovieDetailActivity_ViewBinding implements Unbinder {
    public HGMovieDetailActivity b;

    @UiThread
    public HGMovieDetailActivity_ViewBinding(HGMovieDetailActivity hGMovieDetailActivity, View view) {
        this.b = hGMovieDetailActivity;
        hGMovieDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        hGMovieDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        hGMovieDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        hGMovieDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HGMovieDetailActivity hGMovieDetailActivity = this.b;
        if (hGMovieDetailActivity != null) {
            this.b = null;
            hGMovieDetailActivity.tvTitle = null;
            hGMovieDetailActivity.tvDetail = null;
            hGMovieDetailActivity.tvIntro = null;
            hGMovieDetailActivity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
