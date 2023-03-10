package com.comeback.data.ui.commom;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class LocalPlayActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f391c;

    /* renamed from: d  reason: collision with root package name */
    public ExoUserPlayer f392d;

    public static void l(@NonNull Context context, @NonNull String str, String str2) {
        Intent intent = new Intent(context, LocalPlayActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f391c = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        ExoUserPlayer create = new VideoPlayerManager.Builder(this, 1, R.id.video_view).setPlayerGestureOnTouch(true).create();
        this.f392d = create;
        create.getVideoPlayerView().setTitle(this.f391c);
        this.f392d.setPlayUri(this.b);
        this.f392d.startPlayer();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f392d.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f392d.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f392d.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f392d.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f392d.onResume();
    }
}
