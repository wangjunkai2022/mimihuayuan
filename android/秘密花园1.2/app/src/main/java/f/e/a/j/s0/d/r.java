package f.e.a.j.s0.d;

import android.text.TextUtils;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;
import com.comeback.data.ui.xj.bean.PlayUrl;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class r extends m.j<PlayUrl> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f4018e;

    public r(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f4018e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        f.e.a.e.a("aD0GFhkcSwk=");
        th.getMessage();
    }

    @Override // m.j
    public void f(PlayUrl playUrl) {
        PlayUrl playUrl2 = playUrl;
        if (TextUtils.isEmpty(playUrl2.getData().getHttpurl())) {
            c.a.a.b.g.h.n1(playUrl2.getErrmsg());
            return;
        }
        this.f4018e.f2301d.setPlay(playUrl2.getData().getHttpurl());
        this.f4018e.a.setPlayUri(playUrl2.getData().getHttpurl());
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f4018e;
        if (tiktopHolder.f2300c.f2299d == tiktopHolder.getAdapterPosition()) {
            this.f4018e.a.startPlayer();
        }
    }
}
