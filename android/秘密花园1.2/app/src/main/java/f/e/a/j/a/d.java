package f.e.a.j.a;

import c.a.a.b.g.h;
import com.comeback.data.ui.aimeiju.AMJLauncherActivity;
import com.comeback.data.ui.aimeiju.bean.PlayKey;
import m.j;

/* compiled from: AMJLauncherActivity.java */
/* loaded from: classes.dex */
public class d extends j<PlayKey> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AMJLauncherActivity f3891e;

    public d(AMJLauncherActivity aMJLauncherActivity) {
        this.f3891e = aMJLauncherActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        h.n1(f.e.a.e.a("3+zUgeTl36HegKDZke/ujIrMhsDam42WnNq4g8XVhP+fi9j8g92d2vbr09rW"));
    }

    @Override // m.j
    public void f(PlayKey playKey) {
        f.e.a.j.a.f.d.a = playKey.getData().getKey();
        AMJLauncherActivity.m(this.f3891e);
    }
}
