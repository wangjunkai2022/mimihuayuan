package com.comeback.data.ui.isiyu;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.isiyu.adapter.VideoAdapter;
import com.comeback.data.ui.isiyu.bean.SpecialDetail;
import com.comeback.data.ui.isiyu.bean.Video;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.HashMap;
import m.j;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class MoviePlayActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1246c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<Video> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Video video) {
            Video video2 = video;
            MoviePlayActivity.this.tvTitle.setText(video2.getTitle());
            MoviePlayActivity.this.tvTime.setText(video2.getOnline_time());
            if (video2.getCoins() > 0) {
                MoviePlayActivity.this.tvDetail.setText(e.a("3sDnjMz70ZT1j5b2"));
            } else {
                TextView textView = MoviePlayActivity.this.tvDetail;
                textView.setText(e.a("0fDOgv/N0LT8iYj9") + video2.getPlay_count());
            }
            MoviePlayActivity.this.f1246c.setPlayUri(video2.getPlay_url_m3u8());
            MoviePlayActivity.this.f1246c.startPlayer();
            h.j1(MoviePlayActivity.this.f1246c.getVideoPlayerView(), video2.getPlay_url_m3u8());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<SpecialDetail> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(SpecialDetail specialDetail) {
            MoviePlayActivity moviePlayActivity = MoviePlayActivity.this;
            moviePlayActivity.rvList.setLayoutManager(new GridLayoutManager(moviePlayActivity, 2));
            VideoAdapter videoAdapter = new VideoAdapter(MoviePlayActivity.this);
            MoviePlayActivity.this.rvList.setAdapter(videoAdapter);
            videoAdapter.a(specialDetail.getData());
        }
    }

    public static void l(@NonNull Context context, @NonNull String str) {
        Intent intent = new Intent(context, MoviePlayActivity.class);
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
        try {
            new JSONObject().put(e.a("XgY="), this.b);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f1246c = h2;
        h2.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("QQsHAQQsUFc="), this.b);
        k(f.e.a.j.u.e.e.a().f(hashMap), new a());
        hashMap.put(e.a("VA0KChg="), e.a("Bw=="));
        k(f.e.a.j.u.e.e.a().c(hashMap), new b());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1246c.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1246c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f1246c.onDestroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.b = intent.getStringExtra(e.a("XgY="));
        e();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1246c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1246c.onResume();
    }
}
