package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.cucumber.bean.RealmVideo;
import com.comeback.data.ui.cucumber.bean.StarWork;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.d;
import f.e.a.j.g.h.c;
import f.e.a.k.g;
import f.i.a.a.w;
import java.util.List;

/* loaded from: classes.dex */
public class MovieDetailActivity extends BasePlayByIdActivity {

    /* renamed from: d  reason: collision with root package name */
    public Video f424d;

    /* renamed from: e  reason: collision with root package name */
    public int f425e;

    /* renamed from: f  reason: collision with root package name */
    public StarWork.DataBean.ActorDTOBean f426f;

    /* renamed from: g  reason: collision with root package name */
    public int f427g = 0;
    @BindView
    public ImageView ivCollect;
    @BindView
    public RatioImageView ivStarHead;
    @BindView
    public RelativeLayout rlStar;
    @BindView
    public RecyclerView rvList;
    @BindView
    public RecyclerView rvStarWork;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvStarIntro;
    @BindView
    public TextView tvStarName;
    @BindView
    public TextView tvStarWork;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a implements VideoInfoListener {
        public final /* synthetic */ List a;

        public a(List list) {
            this.a = list;
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void isPlaying(boolean z) {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onLoadingChanged() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayEnd() {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayStart(long j2) {
        }

        @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
        public void onPlayerError(@Nullable w wVar) {
            MovieDetailActivity movieDetailActivity = MovieDetailActivity.this;
            int i2 = movieDetailActivity.f427g + 1;
            movieDetailActivity.f427g = i2;
            if (i2 < this.a.size()) {
                MovieDetailActivity movieDetailActivity2 = MovieDetailActivity.this;
                movieDetailActivity2.f113c.setPlayUri((String) this.a.get(movieDetailActivity2.f427g));
                MovieDetailActivity.this.f113c.getVideoPlayerView().getErrorLayout().setVisibility(8);
                MovieDetailActivity.this.f113c.startPlayer();
            }
        }
    }

    public static void o(Context context, int i2) {
        Intent intent = new Intent(context, MovieDetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        context.startActivity(intent);
    }

    public static void p(Context context, Video video) {
        int id = video.getId();
        Intent intent = new Intent(context, MovieDetailActivity.class);
        intent.putExtra(e.a("XgY="), id);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f424d = (Video) intent.getParcelableExtra(e.a("UwMXBQ=="));
        this.f425e = intent.getIntExtra(e.a("XgY="), 0);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_detail;
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        int i2 = this.f425e;
        Video video = this.f424d;
        if (video != null) {
            i2 = video.getId();
        }
        k(c.a().t(i2), new f.e.a.j.g.e(this));
        int i3 = this.f425e;
        Video video2 = this.f424d;
        if (video2 != null) {
            i3 = video2.getId();
        }
        k(c.a().h(i3), new d(this));
        n();
        int i4 = this.f425e;
        Video video3 = this.f424d;
        if (video3 != null) {
            i4 = video3.getId();
        }
        k(c.a().p(i4), new f.e.a.j.g.c(this));
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
    }

    public final void n() {
        if (this.f113c == null) {
            this.f113c = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        }
        if (this.f424d == null) {
            return;
        }
        this.f113c.getVideoPlayerView().setTitle(this.f424d.getMovName());
        this.f113c.setShowVideoSwitch(true);
        List<String> playUrl = this.f424d.getPlayUrl();
        this.f424d.getPlayName();
        this.f427g = 0;
        this.f113c.setPlayUri(playUrl.get(0));
        this.f113c.addVideoInfoListener(new a(playUrl));
        this.f113c.startPlayer();
        h.h1(this.f113c.getVideoPlayerView(), playUrl.get(0));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f424d = (Video) intent.getParcelableExtra(e.a("UwMXBQ=="));
        e();
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != R.id.iv_collect) {
            if (id != R.id.rl_star) {
                return;
            }
            ActorDetailActivity.l(this, this.f426f.getId());
            return;
        }
        RealmVideo realmVideo = (RealmVideo) this.ivCollect.getTag();
        g.d(realmVideo.getRealm()).a(realmVideo);
        this.ivCollect.setImageResource(R.mipmap.ic_km_like_selected);
        h.n1(e.a("0fbVjPz837vjg774"));
    }
}
