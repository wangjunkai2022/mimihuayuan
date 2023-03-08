package com.comeback.data.ui.xj;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.xj.bean.PlayUrl;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.b;
import java.util.Random;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2263c = false;

    /* renamed from: d  reason: collision with root package name */
    public ExoUserPlayer f2264d;

    /* loaded from: classes.dex */
    public class a extends j<PlayUrl> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD0GFhkcSwk=");
            th.getMessage();
        }

        @Override // m.j
        public void f(PlayUrl playUrl) {
            PlayUrl playUrl2 = playUrl;
            if (TextUtils.isEmpty(playUrl2.getData().getHttpurl())) {
                h.n1(playUrl2.getErrmsg());
                return;
            }
            PlayActivity.this.f2264d.setPlayUri(playUrl2.getData().getHttpurl());
            PlayActivity.this.f2264d.startPlayer();
            h.h1(PlayActivity.this.f2264d.getVideoPlayerView(), playUrl2.getData().getHttpurl());
        }
    }

    public static void l(@NonNull Context context, @NonNull String str, String str2) {
        Intent intent = new Intent(context, PlayActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("UwcFDQUaTVocCA=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
        String stringExtra = intent.getStringExtra(e.a("UwcFDQUaTVocCA=="));
        this.f2263c = stringExtra.equals(e.a("Aw==")) | stringExtra.equals(e.a("BA=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        String str;
        m.e<PlayUrl> h2;
        try {
            if ((Integer.valueOf(this.b).intValue() % 10 > 5) && !TextUtils.isEmpty(b.f4053k)) {
                str = b.f4053k;
            } else {
                str = b.f4052j;
            }
        } catch (Exception unused) {
            str = b.f4052j;
        }
        j(-16777216);
        h(-16777216);
        ExoUserPlayer h3 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.f2264d = h3;
        h3.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        if (this.f2263c) {
            h2 = f.e.a.j.s0.g.b.a().g(str, this.b);
        } else {
            f.e.a.j.s0.g.a a2 = f.e.a.j.s0.g.b.a();
            Random random = new Random();
            h2 = a2.h(random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255), this.b);
        }
        k(h2, new a());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f2264d.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2264d.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f2264d.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f2264d.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f2264d.onResume();
    }
}
