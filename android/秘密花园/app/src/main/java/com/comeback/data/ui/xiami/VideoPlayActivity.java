package com.comeback.data.ui.xiami;

import android.content.Context;
import android.content.Intent;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.xiami.bean.VideoDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import f.e.a.k.c0;
import f.e.a.k.d0;
import f.e.a.k.e0;
import f.e.a.k.f;
import f.e.a.l.c;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class VideoPlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<VideoDetail> {
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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(VideoDetail videoDetail) {
            VideoPlayActivity.this.m(videoDetail.getData().getVideoUrl());
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, VideoPlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        VideoPlayerView videoPlayerView = (VideoPlayerView) findViewById(R.id.video_view);
        h.i1(this, videoPlayerView);
        ExoUserPlayer create = new VideoPlayerManager.Builder(1, videoPlayerView).setDataSource(new c(this)).setPlayerGestureOnTouch(true).addOnWindowListener(new e0()).addVideoInfoListener(new d0()).setOnCoverMapImage(new c0()).create();
        this.f113c = create;
        create.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        l(this.b);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("VAoCCgUWVQ=="), e.a("QAcBOwQVX1oQD1UL"));
        hashMap.put(e.a("QQsHAQQ6XQ=="), str);
        hashMap.put(e.a("UwcVDQgW"), f.e.a.k.b.I);
        k(a2.f(hashMap), new a());
    }
}
