package f.e.a.j.b;

import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import f.e.a.e;
import f.e.a.k.f;
import m.j;

/* compiled from: MoviePlayActivity.java */
/* loaded from: classes.dex */
public class d extends j<MovieDetail> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MoviePlayActivity f3821e;

    public d(MoviePlayActivity moviePlayActivity) {
        this.f3821e = moviePlayActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        e.a("aD08Ow==");
        th.getMessage();
        f.b();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(MovieDetail movieDetail) {
        MoviePlayActivity moviePlayActivity = this.f3821e;
        moviePlayActivity.f155d = movieDetail;
        moviePlayActivity.o();
    }
}
