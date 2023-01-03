package com.comeback.data.base;

import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.f;

/* loaded from: classes.dex */
public abstract class BasePlayByIdActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f113c;

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f113c = h2;
        h2.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        l(this.b);
    }

    public abstract void l(String str);

    public void m(String str) {
        if (!TextUtils.isEmpty(str)) {
            f.a();
            this.f113c.setPlayUri(str);
            this.f113c.startPlayer();
            h.h1(this.f113c.getVideoPlayerView(), str);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f113c.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f113c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f113c.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f113c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f113c.onResume();
    }
}
