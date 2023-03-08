package com.comeback.data.ui.aimeiju;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MovieDetailActivity_ViewBinding implements Unbinder {
    public MovieDetailActivity b;

    @UiThread
    public MovieDetailActivity_ViewBinding(MovieDetailActivity movieDetailActivity, View view) {
        this.b = movieDetailActivity;
        movieDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        movieDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        movieDetailActivity.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
        movieDetailActivity.tvDirector = (TextView) c.c(view, R.id.tv_director, e.a("UQsGCA9THkcFIl0VHQkXBEVF"), TextView.class);
        movieDetailActivity.tvScore = (TextView) c.c(view, R.id.tv_score, e.a("UQsGCA9THkcFNVcICg9E"), TextView.class);
        movieDetailActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        movieDetailActivity.tvStar = (TextView) c.c(view, R.id.tv_star, e.a("UQsGCA9THkcFNUAGCk0="), TextView.class);
        movieDetailActivity.rvChapter = (RecyclerView) c.c(view, R.id.rv_chapter, e.a("UQsGCA9THkEFJVwGCB4GGRA="), RecyclerView.class);
        movieDetailActivity.llChapter = (LinearLayout) c.c(view, R.id.ll_chapter, e.a("UQsGCA9THl8fJVwGCB4GGRA="), LinearLayout.class);
        movieDetailActivity.videoView = (VideoPlayerView) c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MovieDetailActivity movieDetailActivity = this.b;
        if (movieDetailActivity != null) {
            this.b = null;
            movieDetailActivity.tvTitle = null;
            movieDetailActivity.tvIntro = null;
            movieDetailActivity.tvPlayCount = null;
            movieDetailActivity.tvDirector = null;
            movieDetailActivity.tvScore = null;
            movieDetailActivity.tvArea = null;
            movieDetailActivity.tvStar = null;
            movieDetailActivity.rvChapter = null;
            movieDetailActivity.llChapter = null;
            movieDetailActivity.videoView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
