package com.comeback.data.ui.tv91;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.tv91.bean.MovieInfo;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.o0.h;
import f.e.a.l.d;
import i.b0;
import i.d0;
import i.e0;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f2163d;

    /* renamed from: e  reason: collision with root package name */
    public b0 f2164e;

    /* renamed from: g  reason: collision with root package name */
    public Thread f2166g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2167h;

    /* renamed from: i  reason: collision with root package name */
    public int f2168i;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<f> f2165f = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public g f2169j = new b();

    /* loaded from: classes.dex */
    public class a extends j<MovieInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(MovieInfo movieInfo) {
            PlayActivity.n(PlayActivity.this, movieInfo);
        }
    }

    /* loaded from: classes.dex */
    public class b implements g {
        public b() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6524e > 300) {
                PlayActivity playActivity = PlayActivity.this;
                playActivity.f2168i++;
                if (playActivity.f2165f.size() == PlayActivity.this.f2168i) {
                    e.a("3+zUgeTl36HegKDZnfbTjqrihsDam42WnNq4j9fdheaVhtvOjOeM1s7X");
                    f.e.a.k.f.a();
                    return;
                }
                return;
            }
            Iterator<f> it = PlayActivity.this.f2165f.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            PlayActivity playActivity2 = PlayActivity.this;
            if (playActivity2.f2167h) {
                return;
            }
            playActivity2.f2167h = true;
            String str = fVar.S().b.f6854j;
            PlayActivity playActivity3 = PlayActivity.this;
            if (playActivity3 != null) {
                e.a("aD08Ow==");
                e.a("DQ==");
                f.e.a.k.f.b();
                f.e.a.j.o0.f fVar2 = new f.e.a.j.o0.f(playActivity3, str, new h(playActivity3));
                fVar2.start();
                playActivity3.f2166g = fVar2;
                return;
            }
            throw null;
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            iOException.printStackTrace();
        }
    }

    public static void n(PlayActivity playActivity, MovieInfo movieInfo) {
        if (playActivity != null) {
            ArrayList<String> ts0 = movieInfo.getMessage().getTs0();
            if (ts0.size() == 0) {
                c.a.a.b.g.h.n1(e.a("3+zUgeTl3Yv+g7zXnvjOjaPchvjblqSz"));
                return;
            }
            b0.a aVar = new b0.a();
            aVar.c(25L, TimeUnit.SECONDS);
            aVar.d(25L, TimeUnit.SECONDS);
            aVar.f6463m = Proxy.NO_PROXY;
            aVar.f6456f = true;
            playActivity.f2164e = new b0(aVar);
            Iterator<String> it = ts0.iterator();
            while (it.hasNext()) {
                e0.a aVar2 = new e0.a();
                aVar2.i(it.next());
                aVar2.a(e.a("dA0NCg4QTVocCA=="), e.a("VA4MFw4="));
                f a2 = playActivity.f2164e.a(f.b.a.a.a.s("DlM3MjsfWEoWFBtUVllDQ3sLDRETSHhdFxRbDhxKVUUHTFJNSzZBXCMKVR4dGC8CVU1RSlpAFwA=", aVar2, e.a("QhEGFkYSXlYdEg==")));
                playActivity.f2165f.add(a2);
                ((d0) a2).W(playActivity.f2169j);
            }
            return;
        }
        throw null;
    }

    public static void o(Context context, String str, int i2) {
        Intent intent = new Intent(context, PlayActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("RA0WFggWcFc="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
        this.f2163d = intent.getIntExtra(e.a("RA0WFggWcFc="), 1);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(-16777216);
        this.f113c = new VideoPlayerManager.Builder(this, 1, R.id.video_view).setDataSource(new d(this)).setPlayerGestureOnTouch(true).create();
        l(this.b);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(f.e.a.j.o0.i.b.a().f(TiktopParam.buildMovieInfo(Integer.valueOf(str).intValue(), this.f2163d)), new a());
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void m(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.e.a.k.f.a();
        this.f113c.setPlayUri(str);
        this.f113c.startPlayer();
        c.a.a.b.g.h.h1(this.f113c.getVideoPlayerView(), str);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Thread thread = this.f2166g;
        if (thread != null && thread.isAlive()) {
            this.f2166g.interrupt();
        }
        ArrayList<f> arrayList = this.f2165f;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
