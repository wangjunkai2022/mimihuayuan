package com.comeback.data.ui.iqiyi;

import android.content.Context;
import android.text.TextUtils;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.s.c;
import f.e.a.j.s.e.d;
import f.e.a.k.b;
import f.e.a.k.j;
import i.b0;
import i.d0;
import i.e0;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class IQYLaunchActivity extends BaseActivity {

    /* renamed from: f  reason: collision with root package name */
    public static String[] f1126f = {e.a("XxYXFFFcFlIDDxoGCAMIHlYLEAwEBgodEAlZ"), e.a("XxYXFFFcFlIDDxoGCAMIHlYLEAwEBgsdEAlZ"), e.a("XxYXFFFcFlIDDxoGCAMIHlYLEAwEBg0dEAlZ")};
    public b0 b;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1128d;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<f> f1127c = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public g f1129e = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6449e <= 300) {
                Iterator<f> it = IQYLaunchActivity.this.f1127c.iterator();
                while (it.hasNext()) {
                    it.next().cancel();
                }
                IQYLaunchActivity iQYLaunchActivity = IQYLaunchActivity.this;
                if (!iQYLaunchActivity.f1128d) {
                    iQYLaunchActivity.f1128d = true;
                    String replace = fVar.S().b.f6779j.replace(e.a("GAAKAwoDUBwSFkRICAMNDAg9FQEZAFBcHVsFSUxMPA9SFAoHDk5YXRcUWw4c"), "");
                    b.v = replace;
                    j.b().h(e.a("YjAvOyAg"), replace);
                    IQYLaunchActivity iQYLaunchActivity2 = IQYLaunchActivity.this;
                    if (iQYLaunchActivity2 != null) {
                        b.x = h.a1();
                        iQYLaunchActivity2.k(d.a().g(f.e.a.j.s.e.b.a()), new c(iQYLaunchActivity2));
                        return;
                    }
                    throw null;
                }
            } else if (IQYLaunchActivity.this.f1127c.size() == 1) {
                IQYLaunchActivity.this.l(IQYLaunchActivity.f1126f);
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (IQYLaunchActivity.this.f1127c.size() == 1) {
                IQYLaunchActivity.this.l(IQYLaunchActivity.f1126f);
            }
        }
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, IQYLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_iqy_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        b0.a aVar = new b0.a();
        aVar.c(25, TimeUnit.SECONDS);
        aVar.d(25, TimeUnit.SECONDS);
        aVar.f6388m = Proxy.NO_PROXY;
        aVar.f6381f = true;
        this.b = new b0(aVar);
        String d2 = j.b().d(e.a("YjAvOyAg"));
        if (!TextUtils.isEmpty(d2)) {
            l(d2);
        } else {
            l(f1126f);
        }
    }

    public final void l(String... strArr) {
        this.f1127c.clear();
        for (String str : strArr) {
            e0.a aVar = new e0.a();
            StringBuilder o = f.b.a.a.a.o(str);
            o.append(e.a("GAAKAwoDUBwSFkRICAMNDAg9FQEZAFBcHVsFSUxMPA9SFAoHDk5YXRcUWw4c"));
            aVar.i(o.toString());
            f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
            this.f1127c.add(a2);
            ((d0) a2).W(this.f1129e);
        }
    }
}
