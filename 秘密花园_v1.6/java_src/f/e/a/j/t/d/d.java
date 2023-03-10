package f.e.a.j.t.d;

import android.text.TextUtils;
import com.comeback.data.ui.iqiyi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import f.e.a.e;
import m.j;
/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class d extends j<VideoInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f4029e;

    public d(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f4029e = tiktopHolder;
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
        this.f4029e.b.setVideoLink(videoInfo2.getVideoLink());
        this.f4029e.f1221c.setPlayUri(videoInfo2.getVideoLink());
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f4029e;
        if (tiktopHolder.a.f1220d == tiktopHolder.getAdapterPosition()) {
            this.f4029e.f1221c.startPlayer();
        }
    }
}
