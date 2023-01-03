package f.e.a.j.g.g;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.StarCardVAdapter;
import com.comeback.data.ui.cucumber.adapter.Title4Adapter;
import com.comeback.data.ui.cucumber.bean.TopStar;
import com.comeback.data.ui.cucumber.fragment.ColumnFragment;
import f.a.a.a.l.c;
import f.a.a.a.l.i;
import f.e.a.e;

/* compiled from: ColumnFragment.java */
/* loaded from: classes.dex */
public class f extends BaseRefreshFragment.a<TopStar> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ColumnFragment f3868f;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public f(ColumnFragment columnFragment) {
        super();
        this.f3868f = columnFragment;
    }

    @Override // m.j
    public void f(Object obj) {
        this.f3868f.f120i.b(new Title4Adapter(this.f3868f.getContext(), e.a("09jZgtvn3JbAgoj/"), new c()));
        ColumnFragment columnFragment = this.f3868f;
        columnFragment.f120i.b(new StarCardVAdapter(columnFragment.getContext(), ((TopStar) obj).getData(), new i()));
    }
}
