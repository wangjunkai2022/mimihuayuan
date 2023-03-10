package com.comeback.data.ui.xj;

import android.content.Context;
import android.text.TextUtils;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
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
import java.util.Random;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class XJLaunchActivity extends BaseActivity {

    /* renamed from: f  reason: collision with root package name */
    public static String[] f2294f = {e.a("TwsCCgwLUFIdAVUXCBlNCFgP"), e.a("UBcMAx4cWEMDFRoEFwc="), e.a("TwgQFAoDSUBdBVsK"), e.a("WwMECwoDSUBdBVsK"), e.a("RwsTDQoDSUBdBVsK"), e.a("Xg0QSgkLXkYEA1pJGwUO")};
    public b0 b;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2296d;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<f> f2295c = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public g f2297e = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6533e > 300) {
                if (XJLaunchActivity.this.f2295c.size() == 1) {
                    XJLaunchActivity.this.l();
                    return;
                }
                return;
            }
            Iterator<f> it = XJLaunchActivity.this.f2295c.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            XJLaunchActivity xJLaunchActivity = XJLaunchActivity.this;
            if (xJLaunchActivity.f2296d) {
                return;
            }
            xJLaunchActivity.f2296d = true;
            String replace = fVar.S().b.f6863j.replace(e.a("GAUGECwfVlESCnAGDAs="), "");
            b.f4060i = replace;
            j.b().h(e.a("byg8LCQgbQ=="), replace);
            XJLaunchActivity xJLaunchActivity2 = XJLaunchActivity.this;
            synchronized (xJLaunchActivity2) {
                MainActivity.m(xJLaunchActivity2);
                xJLaunchActivity2.finish();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (XJLaunchActivity.this.f2295c.size() == 1) {
                XJLaunchActivity.this.l();
            }
        }
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, XJLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        b0.a aVar = new b0.a();
        aVar.c(25L, TimeUnit.SECONDS);
        aVar.d(25L, TimeUnit.SECONDS);
        aVar.f6472m = Proxy.NO_PROXY;
        aVar.f6465f = true;
        this.b = new b0(aVar);
        String d2 = j.b().d(e.a("byg8LCQgbQ=="));
        if (!TextUtils.isEmpty(d2)) {
            m(d2);
        } else {
            l();
        }
    }

    public final void l() {
        String sb;
        String[] strArr = new String[6];
        for (int i2 = 0; i2 < 6; i2++) {
            String str = f2294f[i2];
            if (str.contains(e.a("Xg0Q"))) {
                sb = e.a("XxYXFFFcFg==") + str;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(e.a("XxYXFBhJFhw="));
                Random random = new Random();
                String str2 = "";
                for (int i3 = 0; i3 < 20; i3++) {
                    String a2 = e.a("VAoCFg==");
                    String a3 = e.a("WRcO");
                    if (random.nextInt(2) % 2 == 0) {
                        a3 = a2;
                    }
                    if (a2.equalsIgnoreCase(a3)) {
                        StringBuilder o = f.b.a.a.a.o(str2);
                        o.append((char) (random.nextInt(26) + 97));
                        str2 = o.toString();
                    } else {
                        StringBuilder o2 = f.b.a.a.a.o(str2);
                        o2.append(random.nextInt(10));
                        str2 = o2.toString();
                    }
                }
                sb2.append(str2);
                sb2.append(e.a("GQ=="));
                sb2.append(str);
                sb = sb2.toString();
            }
            strArr[i2] = sb;
        }
        m(strArr);
    }

    public final void m(String... strArr) {
        this.f2295c.clear();
        for (String str : strArr) {
            e0.a aVar = new e0.a();
            StringBuilder o = f.b.a.a.a.o(str);
            o.append(e.a("GAUGECwfVlESCnAGDAs="));
            aVar.i(o.toString());
            f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
            this.f2295c.add(a2);
            ((d0) a2).W(this.f2297e);
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ArrayList<f> arrayList = this.f2295c;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
