package f.e.a.j.j0;

import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.senlin.VideoDetailActivity;
import com.comeback.data.ui.senlin.bean.SenlinDetail;
/* compiled from: VideoDetailActivity.java */
/* loaded from: classes.dex */
public class c extends BaseRefreshActivity.a<SenlinDetail> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ VideoDetailActivity f3974f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(VideoDetailActivity videoDetailActivity) {
        super();
        this.f3974f = videoDetailActivity;
    }

    @Override // m.j
    public void f(Object obj) {
        VideoDetailActivity.r(this.f3974f, (SenlinDetail) obj);
    }
}
