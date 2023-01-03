package f.e.a.j.g.g;

import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.StarCardVAdapter;
import com.comeback.data.ui.cucumber.adapter.Title4Adapter;
import com.comeback.data.ui.cucumber.bean.TopStar;
import com.comeback.data.ui.cucumber.fragment.ColumnFragment;
import f.a.a.a.l.i;

/* compiled from: ColumnFragment.java */
/* loaded from: classes.dex */
public class f extends BaseRefreshFragment.a<TopStar> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ColumnFragment f3868f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ColumnFragment columnFragment) {
        super();
        this.f3868f = columnFragment;
    }

    @Override // m.j
    public void f(Object obj) {
        DelegateAdapter delegateAdapter;
        f.a.a.a.l.c cVar = new f.a.a.a.l.c();
        delegateAdapter = this.f3868f.f120i;
        delegateAdapter.b(new Title4Adapter(this.f3868f.getContext(), f.e.a.e.a("09jZgtvn3JbAgoj/"), cVar));
        ColumnFragment columnFragment = this.f3868f;
        columnFragment.f120i.b(new StarCardVAdapter(columnFragment.getContext(), ((TopStar) obj).getData(), new i()));
    }
}
