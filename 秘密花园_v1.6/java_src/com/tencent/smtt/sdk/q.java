package com.tencent.smtt.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.Toast;
import android.widget.VideoView;
import com.tencent.smtt.export.external.DexLoader;
/* compiled from: TbsVideoView.java */
/* loaded from: classes.dex */
public class q extends FrameLayout implements MediaPlayer.OnErrorListener {
    public Object a;
    public s b;

    /* renamed from: c  reason: collision with root package name */
    public VideoView f2674c;

    /* renamed from: d  reason: collision with root package name */
    public Context f2675d;

    /* renamed from: e  reason: collision with root package name */
    public String f2676e;

    public q(Context context) {
        super(context.getApplicationContext());
        this.f2675d = null;
        this.f2675d = context;
    }

    private void b(Bundle bundle, Object obj) {
        boolean z;
        a();
        if (b()) {
            bundle.putInt("callMode", bundle.getInt("callMode"));
            z = this.b.a(this.a, bundle, this, obj);
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        VideoView videoView = this.f2674c;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        if (this.f2674c == null) {
            this.f2674c = new VideoView(getContext());
        }
        String string = bundle.getString("videoUrl");
        this.f2676e = string;
        this.f2674c.setVideoURI(Uri.parse(string));
        this.f2674c.setOnErrorListener(this);
        Intent intent = new Intent("com.tencent.smtt.tbs.video.PLAY");
        intent.addFlags(268435456);
        Context applicationContext = getContext().getApplicationContext();
        intent.setPackage(applicationContext.getPackageName());
        applicationContext.startActivity(intent);
    }

    public void a(Bundle bundle, Object obj) {
        b(bundle, obj);
    }

    public void c() {
        if (b()) {
            this.b.a(this.a);
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        try {
            if (this.f2675d instanceof Activity) {
                Activity activity = (Activity) this.f2675d;
                if (!activity.isFinishing()) {
                    activity.finish();
                }
            }
            Context context = getContext();
            if (context != null) {
                Toast.makeText(context, "播放失败，请选择其它播放器播放", 1).show();
                Context applicationContext = context.getApplicationContext();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setDataAndType(Uri.parse(this.f2676e), "video/*");
                applicationContext.startActivity(intent);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void a() {
        setBackgroundColor(-16777216);
        if (this.b == null) {
            d.a(true).a(getContext().getApplicationContext(), false, false);
            r a = d.a(true).a();
            DexLoader b = a != null ? a.b() : null;
            if (b != null && QbSdk.canLoadVideo(getContext())) {
                this.b = new s(b);
            }
        }
        s sVar = this.b;
        if (sVar == null || this.a != null) {
            return;
        }
        this.a = sVar.a(getContext().getApplicationContext());
    }

    public void a(Activity activity) {
        VideoView videoView;
        if (b() || (videoView = this.f2674c) == null) {
            return;
        }
        if (videoView.getParent() == null) {
            Window window = activity.getWindow();
            FrameLayout frameLayout = (FrameLayout) window.getDecorView();
            window.addFlags(1024);
            window.addFlags(128);
            frameLayout.setBackgroundColor(-16777216);
            MediaController mediaController = new MediaController(activity);
            mediaController.setMediaPlayer(this.f2674c);
            this.f2674c.setMediaController(mediaController);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            frameLayout.addView(this.f2674c, layoutParams);
        }
        this.f2674c.start();
    }

    public boolean b() {
        return (this.b == null || this.a == null) ? false : true;
    }

    public void a(Activity activity, int i2) {
        VideoView videoView;
        VideoView videoView2;
        if (i2 == 3 && !b() && (videoView2 = this.f2674c) != null) {
            videoView2.pause();
        }
        if (i2 == 4) {
            this.f2675d = null;
            if (!b() && (videoView = this.f2674c) != null) {
                videoView.stopPlayback();
                this.f2674c = null;
            }
        }
        if (i2 == 2 && !b()) {
            this.f2675d = activity;
            a(activity);
        }
        if (b()) {
            this.b.a(this.a, activity, i2);
        }
    }
}
