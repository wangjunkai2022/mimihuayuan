package f.e.a.j.k.h;

import android.content.Context;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import f.e.a.e;
import f.i.a.a.a1.a.b;
import f.i.a.a.l1.m;
import f.i.a.a.l1.r;
import i.b0;
import javax.net.ssl.SSLSession;

/* compiled from: FL2Data2Source.java */
/* loaded from: classes.dex */
public class c implements DataSourceListener {
    static {
        e.a("eAQFDQgWfVIHB2cIDRgADg==");
    }

    public c(Context context) {
    }

    public static /* synthetic */ boolean a(String str, SSLSession sSLSession) {
        return true;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.DataSourceListener
    public m.a getDataSourceFactory() {
        b0.a b = new b0().b();
        b.a(new d());
        b.u = a.a;
        return new b(new b0(b), e.a("ewMVAkRGDh1LVRpWSFo="), new r());
    }
}
