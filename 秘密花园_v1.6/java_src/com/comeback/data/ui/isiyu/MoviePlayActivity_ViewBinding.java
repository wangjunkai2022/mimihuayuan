package com.comeback.data.ui.isiyu;

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
public class MoviePlayActivity_ViewBinding implements Unbinder {
    public MoviePlayActivity b;

    @UiThread
    public MoviePlayActivity_ViewBinding(MoviePlayActivity moviePlayActivity, View view) {
        this.b = moviePlayActivity;
        moviePlayActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        moviePlayActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        moviePlayActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        moviePlayActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MoviePlayActivity moviePlayActivity = this.b;
        if (moviePlayActivity != null) {
            this.b = null;
            moviePlayActivity.tvTitle = null;
            moviePlayActivity.tvTime = null;
            moviePlayActivity.tvDetail = null;
            moviePlayActivity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
