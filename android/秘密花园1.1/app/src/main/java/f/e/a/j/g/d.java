package f.e.a.j.g;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.adapter.VideoList3Adapter;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.ui.cucumber.bean.VideoList;
import f.e.a.k.f;
import java.util.List;
import m.j;

/* compiled from: MovieDetailActivity.java */
/* loaded from: classes.dex */
public class d extends j<VideoList> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f3864e;

    public d(MovieDetailActivity movieDetailActivity) {
        this.f3864e = movieDetailActivity;
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
    public void f(VideoList videoList) {
        MovieDetailActivity movieDetailActivity = this.f3864e;
        List<Video> data = videoList.getData();
        movieDetailActivity.rvList.setLayoutManager(new LinearLayoutManager(movieDetailActivity));
        VideoList3Adapter videoList3Adapter = new VideoList3Adapter(movieDetailActivity);
        movieDetailActivity.rvList.setAdapter(videoList3Adapter);
        videoList3Adapter.b(data, videoList3Adapter.b.size());
    }
}
