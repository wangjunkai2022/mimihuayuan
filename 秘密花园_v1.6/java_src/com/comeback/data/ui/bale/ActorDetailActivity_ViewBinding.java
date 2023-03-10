package com.comeback.data.ui.bale;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import com.google.android.material.appbar.AppBarLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ActorDetailActivity_ViewBinding implements Unbinder {
    public ActorDetailActivity b;

    @UiThread
    public ActorDetailActivity_ViewBinding(ActorDetailActivity actorDetailActivity, View view) {
        this.b = actorDetailActivity;
        actorDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        ImageView imageView = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
        actorDetailActivity.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
        actorDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        actorDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        actorDetailActivity.tvInfo = (TextView) c.c(view, R.id.tv_info, e.a("UQsGCA9THkcFL1oBF00="), TextView.class);
        actorDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        AppBarLayout appBarLayout = (AppBarLayout) c.c(view, R.id.app_bar_layout, e.a("UQsGCA9THlIDFnYGCiYCElgXF0M="), AppBarLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ActorDetailActivity actorDetailActivity = this.b;
        if (actorDetailActivity != null) {
            this.b = null;
            actorDetailActivity.rvList = null;
            actorDetailActivity.ivHead = null;
            actorDetailActivity.tvCount = null;
            actorDetailActivity.tvName = null;
            actorDetailActivity.tvInfo = null;
            actorDetailActivity.tvIntro = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
