package com.comeback.data.ui.gdian;

import android.content.Context;
import android.content.Intent;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.gdian.bean.Play;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.e.c;
import f.e.a.k.r;
import f.e.a.k.s;
import f.e.a.k.t;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<Play> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD0=");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(Play play) {
            PlayActivity.this.m(play.getData().getPlayUrl());
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        VideoPlayerView videoPlayerView = (VideoPlayerView) findViewById(R.id.video_view);
        h.i1(this, videoPlayerView);
        ExoUserPlayer create = new VideoPlayerManager.Builder(1, videoPlayerView).setDataSource(new c(this)).setPlayerGestureOnTouch(true).addOnWindowListener(new t()).addVideoInfoListener(new s()).setOnCoverMapImage(new r()).create();
        this.f113c = create;
        create.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        k(f.e.a.j.l.e.e.a().a(this.b), new a());
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(f.e.a.j.l.e.e.a().a(str), new a());
    }
}
