package f.e.a.j.x;

import c.a.a.b.g.h;
import com.comeback.data.ui.km2.VideoPlayActivity;
import com.comeback.data.ui.km2.bean.VideoInfo;
import m.j;

/* compiled from: VideoPlayActivity.java */
/* loaded from: classes.dex */
public class i extends j<VideoInfo> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ VideoPlayActivity f3964e;

    public i(VideoPlayActivity videoPlayActivity) {
        this.f3964e = videoPlayActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(VideoInfo videoInfo) {
        String str;
        this.f3964e.b = videoInfo.getData().getVideo_info();
        if (VideoPlayActivity.f1362f) {
            str = this.f3964e.b.getNormal_url();
        } else {
            str = this.f3964e.b.getM3u8_url();
        }
        this.f3964e.f1363c.setPlayUri(str);
        this.f3964e.f1363c.startPlayer();
        h.h1(this.f3964e.f1363c.getVideoPlayerView(), str);
    }
}
