package com.comeback.data.ui.cucumber;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class MovieDetailActivity_ViewBinding implements Unbinder {
    public MovieDetailActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f428c;

    /* renamed from: d  reason: collision with root package name */
    public View f429d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MovieDetailActivity f430c;

        public a(MovieDetailActivity_ViewBinding movieDetailActivity_ViewBinding, MovieDetailActivity movieDetailActivity) {
            this.f430c = movieDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f430c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MovieDetailActivity f431c;

        public b(MovieDetailActivity_ViewBinding movieDetailActivity_ViewBinding, MovieDetailActivity movieDetailActivity) {
            this.f431c = movieDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f431c.onViewClicked(view);
        }
    }

    @UiThread
    public MovieDetailActivity_ViewBinding(MovieDetailActivity movieDetailActivity, View view) {
        this.b = movieDetailActivity;
        movieDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        movieDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        movieDetailActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        View b2 = c.b(view, R.id.iv_collect, e.a("UQsGCA9THloFJVsLFA8AHxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        movieDetailActivity.ivCollect = (ImageView) c.a(b2, R.id.iv_collect, e.a("UQsGCA9THloFJVsLFA8AHxA="), ImageView.class);
        this.f428c = b2;
        b2.setOnClickListener(new a(this, movieDetailActivity));
        movieDetailActivity.ivStarHead = (RatioImageView) c.c(view, R.id.iv_star_head, e.a("UQsGCA9THloFNUAGCiIGClNF"), RatioImageView.class);
        movieDetailActivity.tvStarName = (TextView) c.c(view, R.id.tv_star_name, e.a("UQsGCA9THkcFNUAGCiQCBlJF"), TextView.class);
        movieDetailActivity.tvStarIntro = (TextView) c.c(view, R.id.tv_star_intro, e.a("UQsGCA9THkcFNUAGCiMNH0UNRA=="), TextView.class);
        movieDetailActivity.tvStarWork = (TextView) c.c(view, R.id.tv_star_work, e.a("UQsGCA9THkcFNUAGCj0MGVxF"), TextView.class);
        movieDetailActivity.rvStarWork = (RecyclerView) c.c(view, R.id.rv_star_work, e.a("UQsGCA9THkEFNUAGCj0MGVxF"), RecyclerView.class);
        View b3 = c.b(view, R.id.rl_star, e.a("UQsGCA9THkEfNUAGCk1DClkGQwkOB1FcF0YTCBY8Cg5AIQ8NCBhcV1Q="));
        movieDetailActivity.rlStar = (RelativeLayout) c.a(b3, R.id.rl_star, e.a("UQsGCA9THkEfNUAGCk0="), RelativeLayout.class);
        this.f429d = b3;
        b3.setOnClickListener(new b(this, movieDetailActivity));
        movieDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MovieDetailActivity movieDetailActivity = this.b;
        if (movieDetailActivity != null) {
            this.b = null;
            movieDetailActivity.tvTitle = null;
            movieDetailActivity.tvDetail = null;
            movieDetailActivity.tvIntro = null;
            movieDetailActivity.ivCollect = null;
            movieDetailActivity.ivStarHead = null;
            movieDetailActivity.tvStarName = null;
            movieDetailActivity.tvStarIntro = null;
            movieDetailActivity.tvStarWork = null;
            movieDetailActivity.rvStarWork = null;
            movieDetailActivity.rlStar = null;
            movieDetailActivity.rvList = null;
            this.f428c.setOnClickListener(null);
            this.f428c = null;
            this.f429d.setOnClickListener(null);
            this.f429d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
