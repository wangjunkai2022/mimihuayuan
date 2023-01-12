package f.i.a.a.l1;

import androidx.annotation.Nullable;
import f.i.a.a.l1.m;

/* compiled from: FileDataSourceFactory.java */
/* loaded from: classes.dex */
public final class z implements m.a {
    @Nullable
    public final i0 a = null;

    @Override // f.i.a.a.l1.m.a
    public m createDataSource() {
        y yVar = new y();
        i0 i0Var = this.a;
        if (i0Var != null) {
            yVar.c(i0Var);
        }
        return yVar;
    }
}
