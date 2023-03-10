package f.e.a.j.y;

import com.comeback.data.ui.km2.VideoPlayActivity;
import com.comeback.data.ui.km2.bean.VideoInfo;
import m.j;
/* compiled from: VideoPlayActivity.java */
/* loaded from: classes.dex */
public class i extends j<VideoInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ VideoPlayActivity f4048e;

    public i(VideoPlayActivity videoPlayActivity) {
        this.f4048e = videoPlayActivity;
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
        this.f4048e.b = videoInfo.getData().getVideo_info();
        if (VideoPlayActivity.f1441f) {
            m3u8_url = this.f4048e.b.getNormal_url();
        } else {
            m3u8_url = this.f4048e.b.getM3u8_url();
        }
        this.f4048e.f1442c.setPlayUri(m3u8_url);
        this.f4048e.f1442c.startPlayer();
        c.a.a.b.g.h.j1(this.f4048e.f1442c.getVideoPlayerView(), m3u8_url);
    }
}
