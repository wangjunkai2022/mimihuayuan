package f.e.a.j.a.f;

import android.content.Context;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import f.e.a.e;
import f.i.a.a.l1.m;
import f.i.a.a.l1.r;
import i.b0;
import javax.net.ssl.SSLSession;

/* compiled from: AMJData2Source.java */
/* loaded from: classes.dex */
public class b implements DataSourceListener {
    static {
        e.a("eAQFDQgWfVIHB2cIDRgADg==");
    }

    public b(Context context) {
    }

    public static /* synthetic */ boolean a(String str, SSLSession sSLSession) {
        return true;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.DataSourceListener
    public m.a getDataSourceFactory() {
        b0.a b = new b0().b();
        b.a(new c());
        b.u = a.a;
        return new f.i.a.a.a1.a.b(new b0(b), e.a("ewMVAkRGDh1LVRpWSFo="), new r());
    }
}
