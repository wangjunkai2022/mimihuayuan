package com.comeback.data.ui.lutube;

import android.content.Context;
import android.content.Intent;
import c.a.a.b.g.h;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.lutube.bean.VideoInfo;
import f.e.a.j.b0.k.d;
import f.e.a.k.b;
import f.e.a.k.f;
import m.j;
/* loaded from: classes.dex */
public class VideoPlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<VideoInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.getMessage();
            f.a();
        }

        @Override // m.j
        public void f(VideoInfo videoInfo) {
            VideoInfo.ResponseBean response = videoInfo.getResponse();
            VideoPlayActivity.this.f113c.getVideoPlayerView().setTitle(response.getVideo_title());
            VideoPlayActivity.this.f113c.setShowVideoSwitch(true);
            VideoPlayActivity.this.f113c.setPlaySwitchUri(0, response.getPlayUrl(), response.getPlayName());
            VideoPlayActivity.this.f113c.startPlayer();
            h.j1(VideoPlayActivity.this.f113c.getVideoPlayerView(), response.getPlayUrl().get(0));
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, VideoPlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(d.a().f(str, b.u), new a());
    }
}
