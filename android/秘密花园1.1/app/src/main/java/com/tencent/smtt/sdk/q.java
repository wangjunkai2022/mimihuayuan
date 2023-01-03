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
    public VideoView f2595c;

    /* renamed from: d  reason: collision with root package name */
    public Context f2596d;

    /* renamed from: e  reason: collision with root package name */
    public String f2597e;

    public q(Context context) {
        super(context.getApplicationContext());
        this.f2596d = null;
        this.f2596d = context;
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
        VideoView videoView = this.f2595c;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        if (this.f2595c == null) {
            this.f2595c = new VideoView(getContext());
        }
        String string = bundle.getString("videoUrl");
        this.f2597e = string;
        this.f2595c.setVideoURI(Uri.parse(string));
        this.f2595c.setOnErrorListener(this);
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
            if (this.f2596d instanceof Activity) {
                Activity activity = (Activity) this.f2596d;
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
                intent.setDataAndType(Uri.parse(this.f2597e), "video/*");
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
        if (b() || (videoView = this.f2595c) == null) {
            return;
        }
        if (videoView.getParent() == null) {
            Window window = activity.getWindow();
            FrameLayout frameLayout = (FrameLayout) window.getDecorView();
            window.addFlags(1024);
            window.addFlags(128);
            frameLayout.setBackgroundColor(-16777216);
            MediaController mediaController = new MediaController(activity);
            mediaController.setMediaPlayer(this.f2595c);
            this.f2595c.setMediaController(mediaController);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            frameLayout.addView(this.f2595c, layoutParams);
        }
        this.f2595c.start();
    }

    public boolean b() {
        return (this.b == null || this.a == null) ? false : true;
    }

    public void a(Activity activity, int i2) {
        VideoView videoView;
        VideoView videoView2;
        if (i2 == 3 && !b() && (videoView2 = this.f2595c) != null) {
            videoView2.pause();
        }
        if (i2 == 4) {
            this.f2596d = null;
            if (!b() && (videoView = this.f2595c) != null) {
                videoView.stopPlayback();
                this.f2595c = null;
            }
        }
        if (i2 == 2 && !b()) {
            this.f2596d = activity;
            a(activity);
        }
        if (b()) {
            this.b.a(this.a, activity, i2);
        }
    }
}
