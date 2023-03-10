package f.i.a.a.l1;

import android.content.Context;
import androidx.annotation.Nullable;
import f.i.a.a.l1.m;
/* compiled from: DefaultDataSourceFactory.java */
/* loaded from: classes.dex */
public final class t implements m.a {
    public final Context a;
    @Nullable
    public final i0 b;

    /* renamed from: c  reason: collision with root package name */
    public final m.a f5722c;

    public t(Context context, String str) {
        v vVar = new v(str, null, 8000, 8000, false);
        this.a = context.getApplicationContext();
        this.b = null;
        this.f5722c = vVar;
    }

    @Override // f.i.a.a.l1.m.a
    public m createDataSource() {
        s sVar = new s(this.a, this.f5722c.createDataSource());
        i0 i0Var = this.b;
        if (i0Var != null) {
            sVar.c(i0Var);
        }
        return sVar;
    }

    public t(Context context, m.a aVar) {
        this.a = context.getApplicationContext();
        this.b = null;
        this.f5722c = aVar;
    }

    public t(Context context, @Nullable i0 i0Var, m.a aVar) {
        this.a = context.getApplicationContext();
        this.b = null;
        this.f5722c = aVar;
    }
}
