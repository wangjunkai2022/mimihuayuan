package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.fulao2.adapter.ChooseAdapter;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.h.b;
import f.e.a.j.l.h.c;
import f.e.a.k.f;
import f.e.a.k.o;
import f.e.a.k.p;
import f.e.a.k.q;
import java.util.HashMap;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity implements ChooseAdapter.a {
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<VideoInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD0=");
        }

        @Override // m.j
        public void f(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            videoInfo2.toJson();
            f.a();
            PlayActivity.this.tvTitle.setText(videoInfo2.getResponse().getVideo_title());
            PlayActivity.this.m(videoInfo2.getResponse().getPlayUrl());
        }
    }

    public static void n(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_video;
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        VideoPlayerView videoPlayerView = (VideoPlayerView) findViewById(R.id.video_view);
        h.i1(this, videoPlayerView);
        ExoUserPlayer create = new VideoPlayerManager.Builder(1, videoPlayerView).setDataSource(new c(this)).setPlayerGestureOnTouch(true).addOnWindowListener(new q()).addVideoInfoListener(new p()).setOnCoverMapImage(new o()).create();
        this.f113c = create;
        create.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        l(this.b);
        Host host = FuLao2Activity.f772d;
        if (host == null) {
            return;
        }
        List<Host.StreamBean> stream = host.getStream();
        this.rvList.setLayoutManager(new GridLayoutManager(this, 3));
        ChooseAdapter chooseAdapter = new ChooseAdapter(this, this);
        this.rvList.setAdapter(chooseAdapter);
        chooseAdapter.a(stream);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        b b = f.e.a.j.l.h.f.b();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("A1pT", hashMap, e.a("Vgw8FR4SVVoHHw=="), "Vgw8Fx8BXFIe"), VideoInfo.StreamHost);
        e.a("Gk9OOzQsZh5eSxk4JzVORho=");
        String str2 = VideoInfo.StreamHost;
        f.b();
        hashMap.put(e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        k(b.j(str, hashMap), new a());
    }
}
