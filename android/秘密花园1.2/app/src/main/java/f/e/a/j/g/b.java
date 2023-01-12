package f.e.a.j.g;

import c.a.a.b.g.h;
import com.comeback.data.ui.cucumber.ColumnDetailActivity;
import com.comeback.data.ui.cucumber.bean.ColumnDetail;
import m.j;

/* compiled from: ColumnDetailActivity.java */
/* loaded from: classes.dex */
public class b extends j<ColumnDetail> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ColumnDetailActivity f3936e;

    public b(ColumnDetailActivity columnDetailActivity) {
        this.f3936e = columnDetailActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        this.f3936e.u(1);
    }

    @Override // m.j
    public void f(ColumnDetail columnDetail) {
        ColumnDetail columnDetail2 = columnDetail;
        this.f3936e.u(1);
        ColumnDetailActivity columnDetailActivity = this.f3936e;
        columnDetailActivity.f406d = columnDetail2;
        ColumnDetail.DataBean dataBean = columnDetail2.getData().get(0);
        h.u0(dataBean.getPhotoAddr(), columnDetailActivity.ivBg);
        columnDetailActivity.tvTitle.setText(dataBean.getNavName());
        columnDetailActivity.tvDetail.setText(dataBean.getIntro());
    }
}
