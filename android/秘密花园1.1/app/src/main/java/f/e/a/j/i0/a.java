package f.e.a.j.i0;

import com.comeback.data.ui.senlin.SenLinActivity;
import com.comeback.data.ui.senlin.adapter.VSearchAdapter;

/* compiled from: SenLinActivity.java */
/* loaded from: classes.dex */
public class a implements VSearchAdapter.a {
    public final /* synthetic */ SenLinActivity a;

    public a(SenLinActivity senLinActivity) {
        this.a = senLinActivity;
    }

    public void a(String str) {
        SenLinActivity senLinActivity = this.a;
        senLinActivity.f1820g = str;
        senLinActivity.r();
        this.a.refreshLayout.h();
    }
}
