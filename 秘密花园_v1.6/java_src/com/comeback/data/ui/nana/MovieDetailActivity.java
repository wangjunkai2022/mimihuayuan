package com.comeback.data.ui.nana;

import android.content.Context;
import android.content.Intent;
import c.a.a.b.g.h;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.nana.bean.VideoInfo;
import f.e.a.j.h0.m.d;
import f.e.a.j.h0.m.e;
import m.j;
/* loaded from: classes.dex */
public class MovieDetailActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<VideoInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            MovieDetailActivity.this.f113c.getVideoPlayerView().setTitle(videoInfo2.getResponse().getVideo_title());
            MovieDetailActivity.this.f113c.setShowVideoSwitch(true);
            MovieDetailActivity.this.f113c.setPlaySwitchUri(0, videoInfo2.getResponse().getPlayUrl(), videoInfo2.getResponse().getPlayName());
            MovieDetailActivity.this.f113c.startPlayer();
            h.j1(MovieDetailActivity.this.f113c.getVideoPlayerView(), videoInfo2.getResponse().getPlayUrl().get(0));
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, MovieDetailActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(e.a().k(str, d.a), new a());
    }
}
