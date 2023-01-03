package f.e.a.j.l.d;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.bean.VideoList;
import com.comeback.data.ui.gdian.fragment.SearchResultFragment;

/* compiled from: SearchResultFragment.java */
/* loaded from: classes.dex */
public class c extends BaseRefreshFragment.a<VideoList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f3918f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ SearchResultFragment f3919g;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public c(SearchResultFragment searchResultFragment, int i2) {
        super();
        this.f3919g = searchResultFragment;
        this.f3918f = i2;
    }

    @Override // m.j
    public void f(Object obj) {
        VideoList videoList = (VideoList) obj;
        if (this.f3918f == 1) {
            this.f3919g.f117h.c();
        }
        this.f3919g.f117h.a(videoList.getData().getData());
    }
}
