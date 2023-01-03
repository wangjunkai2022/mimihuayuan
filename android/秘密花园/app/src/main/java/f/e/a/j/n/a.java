package f.e.a.j.n;

import androidx.recyclerview.widget.GridLayoutManager;
import com.comeback.data.ui.hg.HGMovieDetailActivity;
import com.comeback.data.ui.hg.VideoListAdapter;
import com.comeback.data.ui.hg.bean.VideoList;
import f.i.b.j;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;

/* compiled from: HGMovieDetailActivity.java */
/* loaded from: classes.dex */
public class a implements g {
    public final /* synthetic */ HGMovieDetailActivity a;

    /* compiled from: HGMovieDetailActivity.java */
    /* renamed from: f.e.a.j.n.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0050a implements Runnable {
        public final /* synthetic */ VideoList a;

        public RunnableC0050a(VideoList videoList) {
            this.a = videoList;
        }

        @Override // java.lang.Runnable
        public void run() {
            HGMovieDetailActivity hGMovieDetailActivity = a.this.a;
            hGMovieDetailActivity.rvList.setLayoutManager(new GridLayoutManager(hGMovieDetailActivity, 2));
            VideoListAdapter videoListAdapter = new VideoListAdapter(a.this.a);
            a.this.a.rvList.setAdapter(videoListAdapter);
            videoListAdapter.a(this.a.getData());
        }
    }

    public a(HGMovieDetailActivity hGMovieDetailActivity) {
        this.a = hGMovieDetailActivity;
    }

    @Override // i.g
    public void c(f fVar, h0 h0Var) throws IOException {
        this.a.runOnUiThread(new RunnableC0050a((VideoList) new j().d(h0Var.f6452h.H(), VideoList.class)));
    }

    @Override // i.g
    public void d(f fVar, IOException iOException) {
    }
}
