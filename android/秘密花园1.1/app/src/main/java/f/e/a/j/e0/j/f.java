package f.e.a.j.e0.j;

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
public class f {
    public static volatile f b;
    public final c a;

    /* compiled from: NetHelper.java */
    /* loaded from: classes.dex */
    public class a implements X509TrustManager {
        public a(f fVar) {
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

    public f() {
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
        aVar.b(new f.e.a.j.h0.b());
        aVar.a(new e());
        aVar.a(new f.e.a.i.a());
        aVar.u = f.e.a.j.e0.j.a.a;
        aVar.c(15L, TimeUnit.SECONDS);
        aVar.f6386k = dVar;
        aVar.f6388m = Proxy.NO_PROXY;
        if (sSLSocketFactory != null) {
            aVar.e(sSLSocketFactory, (X509TrustManager) trustManagerArr[0]);
        }
        b0 b0Var = new b0(aVar);
        h0.b bVar = new h0.b();
        bVar.f7193d.add((l.a) Objects.requireNonNull(l.n0.a.a.c(), "factory == null"));
        this.a = (c) f.b.a.a.a.F(bVar.f7194e, (e.a) Objects.requireNonNull(f.b.a.a.a.t(bVar, TextUtils.isEmpty(d.f3854e) ? f.e.a.e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG") : d.f3854e, b0Var), "factory == null"), bVar, c.class);
    }

    public static synchronized c a() {
        c cVar;
        synchronized (f.class) {
            if (b == null) {
                b = new f();
            }
            cVar = b.a;
        }
        return cVar;
    }
}
