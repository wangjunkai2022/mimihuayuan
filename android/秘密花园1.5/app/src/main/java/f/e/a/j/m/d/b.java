package f.e.a.j.m.d;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.bean.ImageList;
import com.comeback.data.ui.gdian.fragment.SearchResultFragment;

/* compiled from: SearchResultFragment.java */
/* loaded from: classes.dex */
public class b extends BaseRefreshFragment.a<ImageList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f3991f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ SearchResultFragment f3992g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(SearchResultFragment searchResultFragment, int i2) {
        super();
        this.f3992g = searchResultFragment;
        this.f3991f = i2;
    }

    @Override // m.j
    public void f(Object obj) {
        BaseAbstractAdapter baseAbstractAdapter;
        BaseAbstractAdapter baseAbstractAdapter2;
        ImageList imageList = (ImageList) obj;
        if (this.f3991f == 1) {
            baseAbstractAdapter2 = this.f3992g.f117h;
            baseAbstractAdapter2.c();
        }
        baseAbstractAdapter = this.f3992g.f117h;
        baseAbstractAdapter.a(imageList.getData().getData());
    }
}
