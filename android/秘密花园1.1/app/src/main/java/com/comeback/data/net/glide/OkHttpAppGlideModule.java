package com.comeback.data.net.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import f.d.a.c;
import f.d.a.h;
import f.d.a.n.a.c;
import f.d.a.o.o.g;
import f.d.a.q.a;
import f.e.a.i.c.e;
import f.e.a.i.c.f;
import f.e.a.j.k0.h.e.b;
import f.e.a.j.s.e.e.d;
import i.b0;
import java.io.InputStream;
import java.security.SecureRandom;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public class OkHttpAppGlideModule extends a {
    @Override // f.d.a.q.d, f.d.a.q.f
    public void registerComponents(@NonNull Context context, @NonNull c cVar, @NonNull h hVar) {
        try {
            TrustManager[] trustManagerArr = {new e()};
            SSLContext sSLContext = SSLContext.getInstance(f.e.a.e.a("ZDEv"));
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            b0.a aVar = new b0.a();
            aVar.e(socketFactory, (X509TrustManager) trustManagerArr[0]);
            aVar.u = new f();
            aVar.c(20L, TimeUnit.SECONDS);
            aVar.d(20L, TimeUnit.SECONDS);
            b0 b0Var = new b0(aVar);
            hVar.i(g.class, InputStream.class, new c.a(b0Var));
            hVar.i(f.e.a.j.s.e.e.a.class, InputStream.class, new d(b0Var));
            hVar.i(f.e.a.j.m.p.f.a.class, InputStream.class, new f.e.a.j.m.p.f.c(b0Var));
            hVar.i(f.e.a.j.k.h.g.a.class, InputStream.class, new f.e.a.j.k.h.g.c(b0Var));
            hVar.i(b.class, InputStream.class, new f.e.a.j.k0.h.e.d(b0Var));
            hVar.i(f.e.a.j.t.e.f.a.class, InputStream.class, new f.e.a.j.t.e.f.c(b0Var));
            hVar.i(f.e.a.j.b.g.e.a.class, InputStream.class, new f.e.a.j.b.g.e.c(b0Var));
            hVar.i(f.e.a.j.e0.j.g.a.class, InputStream.class, new f.e.a.j.e0.j.g.c(b0Var));
            hVar.i(f.e.a.j.j.m.f.a.class, InputStream.class, new f.e.a.j.j.m.f.c(b0Var));
            hVar.i(f.e.a.i.b.a.a.class, InputStream.class, new f.e.a.i.b.a.c(b0Var));
            hVar.i(f.e.a.j.g0.m.f.a.class, InputStream.class, new f.e.a.j.g0.m.f.c(b0Var));
            hVar.i(f.e.a.j.m0.c.f.b.class, InputStream.class, new f.e.a.j.m0.c.f.d(b0Var));
            hVar.i(f.e.a.j.d0.d.f.a.class, InputStream.class, new f.e.a.j.d0.d.f.c(b0Var));
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
