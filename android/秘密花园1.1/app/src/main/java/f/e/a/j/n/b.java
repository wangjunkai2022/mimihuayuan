package f.e.a.j.n;

import c.a.a.b.g.h;
import com.comeback.data.ui.hg.HGMovieDetailActivity;
import com.comeback.data.ui.hg.bean.VideoList;
import f.i.b.j;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: HGMovieDetailActivity.java */
/* loaded from: classes.dex */
public class b implements g {
    public final /* synthetic */ HGMovieDetailActivity a;

    /* compiled from: HGMovieDetailActivity.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ VideoList a;

        public a(VideoList videoList) {
            this.a = videoList;
        }

        @Override // java.lang.Runnable
        public void run() {
            HGMovieDetailActivity hGMovieDetailActivity = b.this.a;
            VideoList.DataBean dataBean = this.a.getData().get(0);
            hGMovieDetailActivity.tvTitle.setText(dataBean.getMovName());
            hGMovieDetailActivity.tvIntro.setText(dataBean.getMovDesc());
            hGMovieDetailActivity.tvDetail.setText(dataBean.getDetail());
            hGMovieDetailActivity.f113c.getVideoPlayerView().setTitle(dataBean.getMovName());
            hGMovieDetailActivity.f113c.setShowVideoSwitch(true);
            hGMovieDetailActivity.f113c.setPlaySwitchUri(0, dataBean.getPlayUrl(), dataBean.getPlayName());
            hGMovieDetailActivity.f113c.startPlayer();
            h.h1(hGMovieDetailActivity.f113c.getVideoPlayerView(), dataBean.getPlayUrl().get(0));
        }
    }

    public b(HGMovieDetailActivity hGMovieDetailActivity) {
        this.a = hGMovieDetailActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) throws IOException {
        this.a.runOnUiThread(new a((VideoList) new j().d(h0Var.f6452h.H(), VideoList.class)));
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
