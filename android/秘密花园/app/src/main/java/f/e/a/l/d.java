package f.e.a.l;

import android.content.Context;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import f.e.a.e;
import f.i.a.a.l1.m;
import f.i.a.a.l1.t;

/* compiled from: Tv91Data2Source.java */
/* loaded from: classes.dex */
public class d implements DataSourceListener {
    public Context a;

    static {
        e.a("eAQFDQgWfVIHB2cIDRgADg==");
    }

    public d(Context context) {
        this.a = context;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.DataSourceListener
    public m.a getDataSourceFactory() {
        return new t(this.a, e.a("DlM3MjsfWEoWFBtVVltVSx8uCgoeCwJyHQJGCBEOQ10ZUk1VQlN8Sxw2WAYBDxEnXgBMVkVKFwU="));
    }
}
