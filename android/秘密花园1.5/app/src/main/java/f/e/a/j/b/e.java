package f.e.a.j.b;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.adapter.GuessLikeAdapter;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import com.comeback.data.ui.avbobo.bean.MovieList;
import f.e.a.k.f;
import java.util.List;
import m.j;

/* compiled from: MoviePlayActivity.java */
/* loaded from: classes.dex */
public class e extends j<MovieList> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MoviePlayActivity f3894e;

    public e(MoviePlayActivity moviePlayActivity) {
        this.f3894e = moviePlayActivity;
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
    public void f(MovieList movieList) {
        MoviePlayActivity moviePlayActivity = this.f3894e;
        List<MovieDetail> data = movieList.getData();
        moviePlayActivity.rvList.setLayoutManager(new LinearLayoutManager(moviePlayActivity));
        GuessLikeAdapter guessLikeAdapter = new GuessLikeAdapter(moviePlayActivity);
        moviePlayActivity.rvList.setAdapter(guessLikeAdapter);
        guessLikeAdapter.b(data, guessLikeAdapter.b.size());
    }
}
