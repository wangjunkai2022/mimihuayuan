package f.e.a.l;

import android.content.Context;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import f.e.a.e;
import f.i.a.a.l1.m;
import f.i.a.a.l1.v;

/* compiled from: Data2Source.java */
/* loaded from: classes.dex */
public class b implements DataSourceListener {
    static {
        e.a("eAQFDQgWfVIHB2cIDRgADg==");
    }

    public b(Context context) {
    }

    @Override // chuangyuan.ycj.videolibrary.listener.DataSourceListener
    public m.a getDataSourceFactory() {
        return new v(e.a("ewMVAkRGDh1LVRpWSFo="), null, 8000, 8000, true);
    }
}
