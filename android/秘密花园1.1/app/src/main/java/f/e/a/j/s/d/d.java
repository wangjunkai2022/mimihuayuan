package f.e.a.j.s.d;

import android.text.TextUtils;
import com.comeback.data.ui.iqiyi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import f.e.a.e;
import m.j;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class d extends j<VideoInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f3945e;

    public d(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f3945e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        e.a("aD0GFhkcSwk=");
        th.getMessage();
    }

    @Override // m.j
    public void f(VideoInfo videoInfo) {
        VideoInfo videoInfo2 = videoInfo;
        if (TextUtils.isEmpty(videoInfo2.getVideoLink())) {
            return;
        }
        this.f3945e.b.setVideoLink(videoInfo2.getVideoLink());
        this.f3945e.f1142c.setPlayUri(videoInfo2.getVideoLink());
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f3945e;
        if (tiktopHolder.a.f1141d == tiktopHolder.getAdapterPosition()) {
            this.f3945e.f1142c.startPlayer();
        }
    }
}
