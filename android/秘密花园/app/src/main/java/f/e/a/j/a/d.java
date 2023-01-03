package f.e.a.j.a;

import c.a.a.b.g.h;
import com.comeback.data.ui.aimeiju.AMJLauncherActivity;
import com.comeback.data.ui.aimeiju.bean.PlayKey;
import f.e.a.e;
import m.j;

/* compiled from: AMJLauncherActivity.java */
/* loaded from: classes.dex */
public class d extends j<PlayKey> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AMJLauncherActivity f3816e;

    public d(AMJLauncherActivity aMJLauncherActivity) {
        this.f3816e = aMJLauncherActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.n1(e.a("3+zUgeTl36HegKDZke/ujIrMhsDam42WnNq4g8XVhP+fi9j8g92d2vbr09rW"));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(PlayKey playKey) {
        f.e.a.j.a.f.d.a = playKey.getData().getKey();
        AMJLauncherActivity.m(this.f3816e);
    }
}
