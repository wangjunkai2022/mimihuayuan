package f.e.a.j.q0;

import com.comeback.data.ui.xiuxiu.XXBrowseActivity;
import f.e.a.e;
import i.i0;
import l.d;
import l.f;
import l.g0;
import org.json.JSONObject;

/* compiled from: XXBrowseActivity.java */
/* loaded from: classes.dex */
public class b implements f<i0> {
    public final /* synthetic */ XXBrowseActivity a;

    public b(XXBrowseActivity xXBrowseActivity) {
        this.a = xXBrowseActivity;
    }

    @Override // l.f
    public void a(d<i0> dVar, g0<i0> g0Var) {
        try {
            JSONObject jSONObject = new JSONObject(g0Var.b.H());
            f.e.a.k.b.W = jSONObject.getString(e.a("QhAP"));
            f.e.a.k.b.X = jSONObject.getString(e.a("Qw0IAQU="));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        XXBrowseActivity.l(this.a);
    }

    @Override // l.f
    public void b(d<i0> dVar, Throwable th) {
        XXBrowseActivity.l(this.a);
    }
}
