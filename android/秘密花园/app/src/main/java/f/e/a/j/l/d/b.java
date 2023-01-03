package f.e.a.j.l.d;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.bean.ImageList;
import com.comeback.data.ui.gdian.fragment.SearchResultFragment;

/* compiled from: SearchResultFragment.java */
/* loaded from: classes.dex */
public class b extends BaseRefreshFragment.a<ImageList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f3916f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ SearchResultFragment f3917g;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public b(SearchResultFragment searchResultFragment, int i2) {
        super();
        this.f3917g = searchResultFragment;
        this.f3916f = i2;
    }

    @Override // m.j
    public void f(Object obj) {
        ImageList imageList = (ImageList) obj;
        if (this.f3916f == 1) {
            this.f3917g.f117h.c();
        }
        this.f3917g.f117h.a(imageList.getData().getData());
    }
}
