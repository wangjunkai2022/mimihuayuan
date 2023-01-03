package f.e.a.j.g.f;

import android.text.TextUtils;
import com.comeback.data.ui.cucumber.adapter.ShortVideoAdapter;
import com.comeback.data.ui.cucumber.bean.NvshenBean;
import m.j;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class e extends j<NvshenBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder f3867e;

    public e(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.f3867e = tiktopHolder;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        th.printStackTrace();
    }

    @Override // m.j
    public void f(NvshenBean nvshenBean) {
        NvshenBean.Video video = nvshenBean.getData().get(0);
        if (TextUtils.isEmpty(video.getPlayUrl().get(0))) {
            return;
        }
        this.f3867e.b.setUploaderInviteCode(video.getInviteCode());
        this.f3867e.b.setRealVideo(video.getPlayUrl().get(0));
        this.f3867e.f458c.setPlayUri(video.getPlayUrl().get(0));
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.f3867e;
        if (tiktopHolder.a.f456d == tiktopHolder.getAdapterPosition()) {
            this.f3867e.f458c.startPlayer();
        }
    }
}
