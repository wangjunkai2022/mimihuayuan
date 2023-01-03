package f.e.a.j.r0.d;

import android.text.TextUtils;
import c.a.a.b.g.h;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;
import com.comeback.data.ui.xj.bean.PlayUrl;
import f.e.a.e;
import m.j;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class r extends j<PlayUrl> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f3943e;

    public r(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f3943e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        e.a("aD0GFhkcSwk=");
        th.getMessage();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(PlayUrl playUrl) {
        PlayUrl playUrl2 = playUrl;
        if (TextUtils.isEmpty(playUrl2.getData().getHttpurl())) {
            h.n1(playUrl2.getErrmsg());
            return;
        }
        this.f3943e.f2226d.setPlay(playUrl2.getData().getHttpurl());
        this.f3943e.a.setPlayUri(playUrl2.getData().getHttpurl());
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f3943e;
        if (tiktopHolder.f2225c.f2224d == tiktopHolder.getAdapterPosition()) {
            this.f3943e.a.startPlayer();
        }
    }
}
