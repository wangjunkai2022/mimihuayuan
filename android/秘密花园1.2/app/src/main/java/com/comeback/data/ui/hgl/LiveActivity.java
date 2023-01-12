package com.comeback.data.ui.hgl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import androidx.core.app.ActivityCompat;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.f;
import f.e.a.k.u;
import f.e.a.k.w;
import f.e.a.k.x;

/* loaded from: classes.dex */
public class LiveActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1089c;

    public static void l(Context context, String str) {
        Intent intent = new Intent(context, LiveActivity.class);
        a.v("QhAP", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hgl_live;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        VideoPlayerView videoPlayerView = (VideoPlayerView) findViewById(R.id.video_view);
        h.i1(this, videoPlayerView);
        ExoUserPlayer create = new VideoPlayerManager.Builder(1, videoPlayerView).setPlayerGestureOnTouch(true).addOnWindowListener(new x()).addVideoInfoListener(new w()).setOnCoverMapImage(new u()).create();
        this.f1089c = create;
        create.setPlayUri(this.b);
        this.f1089c.startPlayer();
        this.f1089c.hideControllerView();
        e.a("CVxdWlE=");
        f.b();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1089c.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1089c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f1089c.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1089c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1089c.onResume();
    }
}
