package f.e.a.j.m.d;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.bean.NovelList;
import com.comeback.data.ui.gdian.fragment.SearchResultFragment;
/* compiled from: SearchResultFragment.java */
/* loaded from: classes.dex */
public class a extends BaseRefreshFragment.a<NovelList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f3993f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ SearchResultFragment f3994g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(SearchResultFragment searchResultFragment, int i2) {
        super();
        this.f3994g = searchResultFragment;
        this.f3993f = i2;
    }

    @Override // m.j
    public void f(Object obj) {
        BaseAbstractAdapter baseAbstractAdapter;
        BaseAbstractAdapter baseAbstractAdapter2;
        NovelList novelList = (NovelList) obj;
        if (this.f3993f == 1) {
            baseAbstractAdapter2 = this.f3994g.f117h;
            baseAbstractAdapter2.c();
        }
        baseAbstractAdapter = this.f3994g.f117h;
        baseAbstractAdapter.a(novelList.getData().getData());
    }
}
