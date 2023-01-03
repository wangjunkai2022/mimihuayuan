package f.j.a.a.j;

import android.graphics.PointF;
import android.view.View;

/* compiled from: ScrollBoundaryDeciderAdapter.java */
/* loaded from: classes.dex */
public class d {
    public PointF a;
    public d b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6165c = true;

    public boolean a(View view) {
        d dVar = this.b;
        if (dVar != null) {
            return dVar.a(view);
        }
        return f.j.a.a.m.b.a(view, this.a, this.f6165c);
    }

    public boolean b(View view) {
        d dVar = this.b;
        if (dVar != null) {
            return dVar.b(view);
        }
        return f.j.a.a.m.b.b(view, this.a);
    }
}
