package com.comeback.data.ui.maomi;

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
public class MovieDetailActivity_ViewBinding implements Unbinder {
    public MovieDetailActivity b;

    @UiThread
    public MovieDetailActivity_ViewBinding(MovieDetailActivity movieDetailActivity, View view) {
        this.b = movieDetailActivity;
        movieDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        movieDetailActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        movieDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        RecyclerView recyclerView = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MovieDetailActivity movieDetailActivity = this.b;
        if (movieDetailActivity != null) {
            this.b = null;
            movieDetailActivity.tvTitle = null;
            movieDetailActivity.tvTime = null;
            movieDetailActivity.tvDetail = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
