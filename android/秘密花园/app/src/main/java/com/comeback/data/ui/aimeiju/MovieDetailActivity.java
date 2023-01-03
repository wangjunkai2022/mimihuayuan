package com.comeback.data.ui.aimeiju;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.bean.PlayListBean;
import com.comeback.data.ui.aimeiju.MovieDetailActivity;
import com.comeback.data.ui.aimeiju.bean.VideoDetail;
import com.comeback.data.ui.movieCloud.adapter.ChapterAdapter;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.a.f.b;
import f.e.a.j.a.f.f;
import f.e.a.k.l;
import f.e.a.k.m;
import f.e.a.k.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class MovieDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f130c;
    @BindView
    public LinearLayout llChapter;
    @BindView
    public RecyclerView rvChapter;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvDirector;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvPlayCount;
    @BindView
    public TextView tvScore;
    @BindView
    public TextView tvStar;
    @BindView
    public TextView tvTitle;
    @BindView
    public VideoPlayerView videoView;

    /* loaded from: classes.dex */
    public class a extends j<VideoDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(VideoDetail videoDetail) {
            VideoDetail videoDetail2 = videoDetail;
            MovieDetailActivity movieDetailActivity = MovieDetailActivity.this;
            movieDetailActivity.tvTitle.setText(videoDetail2.getData().getName());
            movieDetailActivity.tvIntro.setText(videoDetail2.getData().getText());
            movieDetailActivity.tvPlayCount.setText(videoDetail2.getData().getHits());
            movieDetailActivity.tvDirector.setText(videoDetail2.getData().getDaoyan());
            movieDetailActivity.tvScore.setText(videoDetail2.getData().getPf());
            movieDetailActivity.tvArea.setText(videoDetail2.getData().getAllInfo());
            movieDetailActivity.tvStar.setText(videoDetail2.getData().getZhuyan());
            try {
                List<VideoDetail.DataEntity.ZuEntity.JiEntity> ji = videoDetail2.getData().getZu().get(0).getJi();
                if (!(ji == null || ji.size() == 0)) {
                    if (ji.size() == 1) {
                        movieDetailActivity.llChapter.setVisibility(8);
                        movieDetailActivity.f130c.setPlayUri(ji.get(0).getFinalUrl());
                        movieDetailActivity.f130c.startPlayer();
                        return;
                    }
                    ArrayList<PlayListBean> arrayList = new ArrayList<>();
                    for (VideoDetail.DataEntity.ZuEntity.JiEntity jiEntity : ji) {
                        PlayListBean playListBean = new PlayListBean();
                        playListBean.setName(jiEntity.getName());
                        playListBean.setUri(jiEntity.getPurl());
                        arrayList.add(playListBean);
                    }
                    movieDetailActivity.m(arrayList);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                h.n1(e.a("3+zUgeTl36HegKDZnNXCjbbNhsDam42W"));
            }
        }
    }

    public static void n(@NonNull Context context, @NonNull String str) {
        Intent intent = new Intent(context, MovieDetailActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_aimeiju_movie;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        VideoPlayerView videoPlayerView = this.videoView;
        h.i1(this, videoPlayerView);
        ExoUserPlayer create = new VideoPlayerManager.Builder(1, videoPlayerView).setDataSource(new b(this)).setPlayerGestureOnTouch(true).addOnWindowListener(new n()).addVideoInfoListener(new m()).setOnCoverMapImage(new l()).create();
        this.f130c = create;
        create.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        f.e.a.j.a.f.e a2 = f.a();
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("XgY="), this.b);
        hashMap.put(e.a("Qw0IAQU="), "");
        k(a2.f(hashMap), new a());
    }

    public /* synthetic */ void l(int i2, String str) {
        this.f130c.setPlayUri(str);
        this.f130c.startPlayer();
        this.rvChapter.smoothScrollToPosition(i2);
    }

    public final void m(ArrayList<PlayListBean> arrayList) {
        this.rvChapter.setLayoutManager(new GridLayoutManager(this, 5));
        this.rvChapter.setNestedScrollingEnabled(false);
        ChapterAdapter chapterAdapter = new ChapterAdapter(this);
        this.rvChapter.setAdapter(chapterAdapter);
        chapterAdapter.b(arrayList, chapterAdapter.b.size());
        chapterAdapter.f1746d = new ChapterAdapter.a() { // from class: f.e.a.j.a.b
            @Override // com.comeback.data.ui.movieCloud.adapter.ChapterAdapter.a
            public final void a(int i2, String str) {
                MovieDetailActivity.this.l(i2, str);
            }
        };
        this.f130c.setPlayUri(arrayList.get(0).getUri());
        this.f130c.startPlayer();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f130c.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f130c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f130c.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f130c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f130c.onResume();
    }
}
