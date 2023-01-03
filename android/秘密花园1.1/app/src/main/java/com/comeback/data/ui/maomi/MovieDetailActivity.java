package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.maomi.bean.VideoDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c0.m.b;
import f.e.a.j.c0.m.d;
import m.j;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MovieDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1537c;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;

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

        @Override // m.j
        public void f(VideoDetail videoDetail) {
            VideoDetail videoDetail2 = videoDetail;
            MovieDetailActivity.this.tvTitle.setText(videoDetail2.getData().getName());
            MovieDetailActivity.this.tvTime.setText(videoDetail2.getData().getAll());
            MovieDetailActivity.this.tvDetail.setText(videoDetail2.getData().getDescription());
            VideoDetail.DataBean.VideoItemBean videoItemBean = videoDetail2.getData().getVideo_item().get(0);
            MovieDetailActivity.this.f1537c.setPlayUri(videoItemBean.getFile());
            MovieDetailActivity.this.f1537c.startPlayer();
            h.h1(MovieDetailActivity.this.f1537c.getVideoPlayerView(), videoItemBean.getFile());
        }
    }

    public static void l(@NonNull Context context, @NonNull String str) {
        Intent intent = new Intent(context, MovieDetailActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_movie;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("XgY="), this.b);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f1537c = h2;
        h2.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        k(d.a().a(b.a(jSONObject.toString())), new a());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1537c.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1537c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f1537c.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1537c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1537c.onResume();
    }
}
