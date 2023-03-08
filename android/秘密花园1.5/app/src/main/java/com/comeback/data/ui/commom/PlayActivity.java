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
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.f;

/* loaded from: classes.dex */
public class PlayActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f395c;

    /* renamed from: d  reason: collision with root package name */
    public ExoUserPlayer f396d;

    public static void l(@NonNull Context context, @NonNull String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        a.v("QhAP", intent, str, context, intent);
    }

    public static void m(@NonNull Context context, @NonNull String str, String str2) {
        Intent intent = new Intent(context, PlayActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f395c = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        f.a();
        j(-16777216);
        h(-16777216);
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f396d = h2;
        h2.getVideoPlayerView().setTitle(this.f395c);
        this.f396d.setPlayUri(this.b);
        this.f396d.startPlayer();
        h.h1(this.f396d.getVideoPlayerView(), this.b);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f396d.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f396d.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f396d.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f396d.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f396d.onResume();
    }
}
