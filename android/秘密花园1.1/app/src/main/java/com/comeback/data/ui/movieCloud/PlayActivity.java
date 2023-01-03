package com.comeback.data.ui.movieCloud;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.bean.PlayListBean;
import com.comeback.data.ui.movieCloud.PlayActivity;
import com.comeback.data.ui.movieCloud.adapter.ChapterAdapter;
import com.comeback.data.ui.movieCloud.bean.AMJPlay;
import com.comeback.data.ui.movieCloud.bean.PlayIndex;
import com.comeback.data.ui.movieCloud.bean.XXPlay;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BaseActivity {
    public ExoUserPlayer b;

    /* renamed from: c  reason: collision with root package name */
    public String f1725c;

    /* renamed from: d  reason: collision with root package name */
    public String f1726d;

    /* renamed from: e  reason: collision with root package name */
    public List<PlayListBean> f1727e;

    /* renamed from: f  reason: collision with root package name */
    public String f1728f;
    @BindView
    public RecyclerView rvChapter;

    /* loaded from: classes.dex */
    public class a extends j<AMJPlay> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(AMJPlay aMJPlay) {
            AMJPlay aMJPlay2 = aMJPlay;
            PlayActivity.this.f1728f = aMJPlay2.getData().getName();
            final PlayActivity playActivity = PlayActivity.this;
            ArrayList<PlayListBean> playList = aMJPlay2.getData().getPlayList();
            playActivity.f1727e = playList;
            playActivity.rvChapter.setLayoutManager(new GridLayoutManager(playActivity, 5));
            ChapterAdapter chapterAdapter = new ChapterAdapter(playActivity);
            playActivity.rvChapter.setAdapter(chapterAdapter);
            chapterAdapter.b(playList, chapterAdapter.b.size());
            chapterAdapter.f1746d = new ChapterAdapter.a() { // from class: f.e.a.j.f0.a
                @Override // com.comeback.data.ui.movieCloud.adapter.ChapterAdapter.a
                public final void a(int i2, String str) {
                    PlayActivity.this.l(i2, str);
                }
            };
            playActivity.b.setPlayUri(playList.get(0).getUri());
            playActivity.b.startPlayer();
            h.h1(playActivity.b.getVideoPlayerView(), playList.get(0).getUri());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<XXPlay> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(XXPlay xXPlay) {
            final PlayActivity playActivity = PlayActivity.this;
            ArrayList<PlayListBean> playList = xXPlay.getData().getVodrow().getPlayList();
            playActivity.rvChapter.setLayoutManager(new GridLayoutManager(playActivity, 5));
            ChapterAdapter chapterAdapter = new ChapterAdapter(playActivity);
            playActivity.rvChapter.setAdapter(chapterAdapter);
            chapterAdapter.b(playList, chapterAdapter.b.size());
            chapterAdapter.f1746d = new ChapterAdapter.a() { // from class: f.e.a.j.f0.b
                @Override // com.comeback.data.ui.movieCloud.adapter.ChapterAdapter.a
                public final void a(int i2, String str) {
                    PlayActivity.this.m(i2, str);
                }
            };
            playActivity.k(f.e.a.j.f0.h.b.a().c(playActivity.f1726d, playList.get(0).getUri()), new c());
        }
    }

    /* loaded from: classes.dex */
    public class c extends j<PlayIndex> {
        public c() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(PlayIndex playIndex) {
            PlayIndex playIndex2 = playIndex;
            PlayActivity.this.b.setPlayUri(playIndex2.getData().getHttpurl());
            h.h1(PlayActivity.this.b.getVideoPlayerView(), playIndex2.getData().getHttpurl());
            PlayActivity.this.b.startPlayer();
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("Vg8JLQ8=", intent, str, context, intent);
    }

    public static void p(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("TxoqAA==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1725c = intent.getStringExtra(e.a("Vg8JLQ8="));
        this.f1726d = intent.getStringExtra(e.a("TxoqAA=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_movie_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        ExoUserPlayer h2 = h.h(this, (VideoPlayerView) findViewById(R.id.video_view));
        this.b = h2;
        h2.setPlayUri(e.a("XxYXFBhJFhwEEUNJHwUMDFsHTQcEHg=="));
        if (!TextUtils.isEmpty(this.f1725c)) {
            k(f.e.a.j.f0.h.b.a().f("", this.f1725c), new a());
        } else {
            k(f.e.a.j.f0.h.b.a().e(this.f1726d), new b());
        }
    }

    public /* synthetic */ void l(int i2, String str) {
        this.b.setPlayUri(str);
        this.b.startPlayer();
        this.rvChapter.smoothScrollToPosition(i2);
        h.h1(this.b.getVideoPlayerView(), str);
    }

    public /* synthetic */ void m(int i2, String str) {
        n(str);
        this.rvChapter.smoothScrollToPosition(i2);
    }

    public final void n(String str) {
        k(f.e.a.j.f0.h.b.a().c(this.f1726d, str), new c());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.b.onBackPressed()) {
            ActivityCompat.finishAfterTransition(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.b.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.b.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.b.onResume();
    }
}
