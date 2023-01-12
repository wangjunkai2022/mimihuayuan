package f.e.a.j.g;

import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import c.a.a.b.g.h;
import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.adapter.VideoList2Adapter;
import com.comeback.data.ui.cucumber.bean.StarWork;
import f.e.a.k.f;
import m.j;

/* compiled from: MovieDetailActivity.java */
/* loaded from: classes.dex */
public class e extends j<StarWork> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f3939e;

    public e(MovieDetailActivity movieDetailActivity) {
        this.f3939e = movieDetailActivity;
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
    public void f(StarWork starWork) {
        StarWork starWork2 = starWork;
        if (starWork2.getData().size() != 0) {
            MovieDetailActivity movieDetailActivity = this.f3939e;
            StarWork.DataBean dataBean = starWork2.getData().get(0);
            movieDetailActivity.rlStar.setVisibility(0);
            StarWork.DataBean.ActorDTOBean actorDTO = dataBean.getActorDTO();
            movieDetailActivity.f426f = actorDTO;
            h.u0(actorDTO.getPhotoUrl(), movieDetailActivity.ivStarHead);
            movieDetailActivity.tvStarName.setText(movieDetailActivity.f426f.getNameCn());
            movieDetailActivity.tvStarIntro.setText(movieDetailActivity.f426f.getBriefIntroduction());
            TextView textView = movieDetailActivity.tvStarWork;
            textView.setText(movieDetailActivity.f426f.getVideosCount() + f.e.a.e.a("F4vgzI7OiNT64Q=="));
            VideoList2Adapter videoList2Adapter = new VideoList2Adapter(movieDetailActivity);
            movieDetailActivity.rvStarWork.setAdapter(videoList2Adapter);
            movieDetailActivity.rvStarWork.setLayoutManager(new LinearLayoutManager(movieDetailActivity, 0, false));
            videoList2Adapter.a(dataBean.getMovieList());
            return;
        }
        this.f3939e.rlStar.setVisibility(8);
    }
}
