package chuangyuan.ycj.videolibrary.factory;

import android.content.Context;
import f.i.a.a.l1.m;
import f.i.a.a.l1.r;
import f.i.a.a.l1.s;
import f.i.a.a.l1.t;
import f.i.a.a.m1.h0;

/* loaded from: classes.dex */
public final class JDefaultDataSourceFactory implements m.a {
    public final m.a baseDataSourceFactory;
    public final Context context;

    public JDefaultDataSourceFactory(Context context) {
        String N = h0.N(context, context.getPackageName());
        this.context = context.getApplicationContext();
        this.baseDataSourceFactory = new t(context, N);
    }

    @Override // f.i.a.a.l1.m.a
    public m createDataSource() {
        Context context = this.context;
        r rVar = new r();
        s sVar = new s(context, this.baseDataSourceFactory.createDataSource());
        sVar.b.add(rVar);
        return sVar;
    }
}
