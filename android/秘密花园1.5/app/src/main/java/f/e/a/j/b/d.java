package f.e.a.j.b;

import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import f.e.a.k.f;
import m.j;

/* compiled from: MoviePlayActivity.java */
/* loaded from: classes.dex */
public class d extends j<MovieDetail> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MoviePlayActivity f3893e;

    public d(MoviePlayActivity moviePlayActivity) {
        this.f3893e = moviePlayActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        f.e.a.e.a("aD08Ow==");
        th.getMessage();
        f.b();
    }

    @Override // m.j
    public void f(MovieDetail movieDetail) {
        MoviePlayActivity moviePlayActivity = this.f3893e;
        moviePlayActivity.f155d = movieDetail;
        moviePlayActivity.o();
    }
}
