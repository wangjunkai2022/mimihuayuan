package f.e.a.j.y;

import com.comeback.data.ui.km2.VideoPlayActivity;
import com.comeback.data.ui.km2.bean.VideoInfo;
import m.j;

/* compiled from: VideoPlayActivity.java */
/* loaded from: classes.dex */
public class i extends j<VideoInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ VideoPlayActivity f4039e;

    public i(VideoPlayActivity videoPlayActivity) {
        this.f4039e = videoPlayActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(VideoInfo videoInfo) {
        String m3u8_url;
        this.f4039e.b = videoInfo.getData().getVideo_info();
        if (VideoPlayActivity.f1437f) {
            m3u8_url = this.f4039e.b.getNormal_url();
        } else {
            m3u8_url = this.f4039e.b.getM3u8_url();
        }
        this.f4039e.f1438c.setPlayUri(m3u8_url);
        this.f4039e.f1438c.startPlayer();
        c.a.a.b.g.h.h1(this.f4039e.f1438c.getVideoPlayerView(), m3u8_url);
    }
}
