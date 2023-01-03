package f.i.a.a.b1.x;

import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.x.c0;
import java.util.List;

/* compiled from: SeiReader.java */
/* loaded from: classes.dex */
public final class x {
    public final List<f.i.a.a.b0> a;
    public final f.i.a.a.b1.p[] b;

    public x(List<f.i.a.a.b0> list) {
        this.a = list;
        this.b = new f.i.a.a.b1.p[list.size()];
    }

    public void a(f.i.a.a.b1.h hVar, c0.d dVar) {
        for (int i2 = 0; i2 < this.b.length; i2++) {
            dVar.a();
            f.i.a.a.b1.p q = hVar.q(dVar.c(), 3);
            f.i.a.a.b0 b0Var = this.a.get(i2);
            String str = b0Var.f4013i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            c.a.a.b.g.h.n(z, "Invalid closed caption mime type provided: " + str);
            String str2 = b0Var.a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            q.d(f.i.a.a.b0.r(str2, str, null, -1, b0Var.f4007c, b0Var.A, b0Var.B, null, RecyclerView.FOREVER_NS, b0Var.f4015k));
            this.b[i2] = q;
        }
    }
}
