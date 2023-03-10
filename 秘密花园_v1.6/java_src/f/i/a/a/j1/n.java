package f.i.a.a.j1;

import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import f.i.a.a.q0;
/* compiled from: TrackSelectorResult.java */
/* loaded from: classes.dex */
public final class n {
    public final int a;
    public final q0[] b;

    /* renamed from: c  reason: collision with root package name */
    public final k f5536c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f5537d;

    public n(q0[] q0VarArr, j[] jVarArr, Object obj) {
        this.b = q0VarArr;
        this.f5536c = new k(jVarArr);
        this.f5537d = obj;
        this.a = q0VarArr.length;
    }

    public boolean a(@Nullable n nVar, int i2) {
        return nVar != null && h0.b(this.b[i2], nVar.b[i2]) && h0.b(this.f5536c.b[i2], nVar.f5536c.b[i2]);
    }

    public boolean b(int i2) {
        return this.b[i2] != null;
    }
}
