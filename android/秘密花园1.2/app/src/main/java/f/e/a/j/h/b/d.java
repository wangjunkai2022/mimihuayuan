package f.e.a.j.h.b;

import android.text.TextUtils;
import com.comeback.data.ui.dn.adapter.ShortVideoAdapter;
import com.comeback.data.ui.dn.bean.PlayUrl;
import m.j;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class d extends j<PlayUrl> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f3947e;

    public d(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f3947e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.printStackTrace();
    }

    @Override // m.j
    public void f(PlayUrl playUrl) {
        String url = playUrl.getMediaInfoSet().get(0).getTranscodeInfo().getTranscodeSet().get(0).getUrl();
        if (TextUtils.isEmpty(url)) {
            return;
        }
        this.f3947e.f554d.setHref(url);
        this.f3947e.a.setPlayUri(url);
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f3947e;
        if (tiktopHolder.f553c.f552d == tiktopHolder.getAdapterPosition()) {
            this.f3947e.a.startPlayer();
        }
    }
}
