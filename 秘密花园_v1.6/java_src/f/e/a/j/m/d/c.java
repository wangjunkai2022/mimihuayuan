package f.e.a.j.m.d;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.bean.VideoList;
import com.comeback.data.ui.gdian.fragment.SearchResultFragment;
/* compiled from: SearchResultFragment.java */
/* loaded from: classes.dex */
public class c extends BaseRefreshFragment.a<VideoList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f3997f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ SearchResultFragment f3998g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(SearchResultFragment searchResultFragment, int i2) {
        super();
        this.f3998g = searchResultFragment;
        this.f3997f = i2;
    }

    @Override // m.j
    public void f(Object obj) {
        BaseAbstractAdapter baseAbstractAdapter;
        BaseAbstractAdapter baseAbstractAdapter2;
        VideoList videoList = (VideoList) obj;
        if (this.f3997f == 1) {
            baseAbstractAdapter2 = this.f3998g.f117h;
            baseAbstractAdapter2.c();
        }
        baseAbstractAdapter = this.f3998g.f117h;
        baseAbstractAdapter.a(videoList.getData().getData());
    }
}
