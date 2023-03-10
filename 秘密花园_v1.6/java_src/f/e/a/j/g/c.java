package f.e.a.j.g;

import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.bean.RealmVideo;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.k.g;
import m.j;
/* compiled from: MovieDetailActivity.java */
/* loaded from: classes.dex */
public class c extends j<VideoList> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f3941e;

    public c(MovieDetailActivity movieDetailActivity) {
        this.f3941e = movieDetailActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.printStackTrace();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // m.j
    public void f(VideoList videoList) {
        Video video = videoList.getData().get(0);
        this.f3941e.ivCollect.setTag(video.newRealm());
        this.f3941e.tvTitle.setText(video.getMovName());
        this.f3941e.tvIntro.setText(video.getMovDesc());
        this.f3941e.tvDetail.setText(video.getDetail());
        MovieDetailActivity movieDetailActivity = this.f3941e;
        RealmVideo realmVideo = (RealmVideo) movieDetailActivity.ivCollect.getTag();
        if (g.d(realmVideo.getRealm()).b(realmVideo.getClass(), f.e.a.e.a("XgY="), String.valueOf(realmVideo.getId()))) {
            movieDetailActivity.ivCollect.setImageResource(R.mipmap.ic_km_like_selected);
            movieDetailActivity.ivCollect.setClickable(false);
        }
        MovieDetailActivity movieDetailActivity2 = this.f3941e;
        if (movieDetailActivity2.f424d == null) {
            movieDetailActivity2.f424d = video;
            movieDetailActivity2.n();
        }
    }
}
