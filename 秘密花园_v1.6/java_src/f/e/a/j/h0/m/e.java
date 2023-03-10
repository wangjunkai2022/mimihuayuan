package f.e.a.j.h0.m;

import android.text.TextUtils;
import com.comeback.data.App;
import i.b0;
import java.io.File;
import java.net.Proxy;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import l.e;
import l.h0;
import l.l;
/* compiled from: NetHelper.java */
/* loaded from: classes.dex */
public class e {
    public static volatile e b;
    public final b a;

    /* compiled from: NetHelper.java */
    /* loaded from: classes.dex */
    public class a implements X509TrustManager {
        public a(e eVar) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public e() {
        i.d dVar = new i.d(new File(App.b.getCacheDir(), f.e.a.e.a("ehsgBQgbXA==")), 10485760);
        TrustManager[] trustManagerArr = {new a(this)};
        SSLSocketFactory sSLSocketFactory = null;
        try {
            SSLContext sSLContext = SSLContext.getInstance(f.e.a.e.a("ZDEv"));
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            sSLSocketFactory = sSLContext.getSocketFactory();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        b0.a aVar = new b0.a();
        aVar.b(new f.e.a.j.i0.b());
        aVar.a(new f.e.a.i.a());
        aVar.a(new c());
        aVar.u = f.e.a.j.h0.m.a.a;
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6470k = dVar;
        aVar.f6472m = Proxy.NO_PROXY;
        if (sSLSocketFactory != null) {
            aVar.e(sSLSocketFactory, (X509TrustManager) trustManagerArr[0]);
        }
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7277d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (b) f.b.a.a.a.F(bVar.f7278e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, TextUtils.isEmpty(d.f3957d) ? f.e.a.e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG") : d.f3957d, b0Var), "factory == null"), bVar, b.class);
    }

    public static synchronized b a() {
        b bVar;
        synchronized (e.class) {
            if (b == null) {
                b = new e();
            }
            bVar = b.a;
        }
        return bVar;
    }
}
