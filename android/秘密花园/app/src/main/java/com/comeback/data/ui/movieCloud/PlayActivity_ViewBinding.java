package com.comeback.data.ui.movieCloud;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.bean.PlayListBean;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;
import g.a.x;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PlayActivity_ViewBinding implements Unbinder {
    public PlayActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1732c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ PlayActivity f1733c;

        public a(PlayActivity_ViewBinding playActivity_ViewBinding, PlayActivity playActivity) {
            this.f1733c = playActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            PlayActivity playActivity = this.f1733c;
            List<PlayListBean> list = playActivity.f1727e;
            if (list == null || list.size() == 0) {
                h.n1(e.a("0ejSgsb61o//g4n0nePug4Lmhd77l4G+lfKbgfTrheKOi+TrjeeP2+Tp29v0gszc0v7Lgvne36fNg63PnuPojr3KhfDdm668"));
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (PlayListBean playListBean : playActivity.f1727e) {
                CollectVideo collectVideo = new CollectVideo();
                collectVideo.setUrl(playListBean.getUri());
                collectVideo.setName(playActivity.f1728f + e.a("Gg==") + playListBean.getName());
                collectVideo.setAddTime(System.currentTimeMillis());
                arrayList.add(collectVideo);
            }
            g d2 = g.d(x.P());
            if (d2 != null) {
                g.a.N(new f.e.a.k.h(d2, arrayList));
                h.n1(e.a("0fbVjPz837vjg774l9bvj4rChuvEl4KWlvqcjt78isqChPfSg+S21vvx3MbQjtvg39/ejMz10JHi"));
                return;
            }
            throw null;
        }
    }

    @UiThread
    public PlayActivity_ViewBinding(PlayActivity playActivity, View view) {
        this.b = playActivity;
        playActivity.rvChapter = (RecyclerView) c.c(view, R.id.rv_chapter, e.a("UQsGCA9THkEFJVwGCB4GGRA="), RecyclerView.class);
        View b = c.b(view, R.id.tv_cnm, e.a("UQsGCA9THkcFJVsLFA8AHxBCAgoPU1RWBw5bA1hNAARbDgYHH1Q="));
        TextView textView = (TextView) c.a(b, R.id.tv_cnm, e.a("UQsGCA9THkcFJVsLFA8AHxA="), TextView.class);
        this.f1732c = b;
        b.setOnClickListener(new a(this, playActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        PlayActivity playActivity = this.b;
        if (playActivity != null) {
            this.b = null;
            playActivity.rvChapter = null;
            this.f1732c.setOnClickListener(null);
            this.f1732c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
