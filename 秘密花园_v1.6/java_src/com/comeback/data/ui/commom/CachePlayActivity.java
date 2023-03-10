package com.comeback.data.ui.commom;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class CachePlayActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f389c;

    /* renamed from: d  reason: collision with root package name */
    public ExoUserPlayer f390d;

    public static void l(@NonNull Context context, @NonNull String str, String str2) {
        Intent intent = new Intent(context, CachePlayActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f389c = intent.getStringExtra(e.a("WQMOAQ=="));
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
        this.f390d = h2;
        h2.getVideoPlayerView().setTitle(this.f389c);
        this.f390d.setPlayUri(this.b);
        this.f390d.startPlayer();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f390d.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f390d.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f390d.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f390d.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f390d.onResume();
    }
}
