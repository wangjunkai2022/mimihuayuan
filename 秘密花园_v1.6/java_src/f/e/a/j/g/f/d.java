package f.e.a.j.g.f;

import android.text.TextUtils;
import com.comeback.data.ui.cucumber.adapter.ShortVideoAdapter;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.ui.cucumber.bean.VideoList;
import m.j;
/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class d extends j<VideoList> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f3944e;

    public d(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f3944e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.printStackTrace();
    }

    @Override // m.j
    public void f(VideoList videoList) {
        Video video = videoList.getData().get(0);
        if (TextUtils.isEmpty(video.getPlayUrl().get(0))) {
            return;
        }
        this.f3944e.b.setUploaderInviteCode(video.getInviteCode());
        this.f3944e.b.setRealVideo(video.getPlayUrl().get(0));
        this.f3944e.f458c.setPlayUri(video.getPlayUrl().get(0));
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f3944e;
        if (tiktopHolder.a.f456d == tiktopHolder.getAdapterPosition()) {
            this.f3944e.f458c.startPlayer();
        }
    }
}
