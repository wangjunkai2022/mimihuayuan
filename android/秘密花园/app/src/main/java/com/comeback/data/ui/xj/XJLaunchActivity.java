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
    public static String[] f2215f = {e.a("TwsCCgwLUFIdAVUXCBlNCFgP"), e.a("UBcMAx4cWEMDFRoEFwc="), e.a("TwgQFAoDSUBdBVsK"), e.a("WwMECwoDSUBdBVsK"), e.a("RwsTDQoDSUBdBVsK"), e.a("Xg0QSgkLXkYEA1pJGwUO")};
    public b0 b;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2217d;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<f> f2216c = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public g f2218e = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6449e <= 300) {
                Iterator<f> it = XJLaunchActivity.this.f2216c.iterator();
                while (it.hasNext()) {
                    it.next().cancel();
                }
                XJLaunchActivity xJLaunchActivity = XJLaunchActivity.this;
                if (!xJLaunchActivity.f2217d) {
                    xJLaunchActivity.f2217d = true;
                    String replace = fVar.S().b.f6779j.replace(e.a("GAUGECwfVlESCnAGDAs="), "");
                    b.f3976i = replace;
                    j.b().h(e.a("byg8LCQgbQ=="), replace);
                    XJLaunchActivity xJLaunchActivity2 = XJLaunchActivity.this;
                    synchronized (xJLaunchActivity2) {
                        MainActivity.m(xJLaunchActivity2);
                        xJLaunchActivity2.finish();
                    }
                }
            } else if (XJLaunchActivity.this.f2216c.size() == 1) {
                XJLaunchActivity.this.l();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (XJLaunchActivity.this.f2216c.size() == 1) {
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
        aVar.c(25, TimeUnit.SECONDS);
        aVar.d(25, TimeUnit.SECONDS);
        aVar.f6388m = Proxy.NO_PROXY;
        aVar.f6381f = true;
        this.b = new b0(aVar);
        String d2 = j.b().d(e.a("byg8LCQgbQ=="));
        if (!TextUtils.isEmpty(d2)) {
            m(d2);
        } else {
            l();
        }
    }

    public final void l() {
        String str;
        String[] strArr = new String[6];
        for (int i2 = 0; i2 < 6; i2++) {
            String str2 = f2215f[i2];
            if (str2.contains(e.a("Xg0Q"))) {
                str = e.a("XxYXFFFcFg==") + str2;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(e.a("XxYXFBhJFhw="));
                Random random = new Random();
                String str3 = "";
                for (int i3 = 0; i3 < 20; i3++) {
                    String a2 = e.a("VAoCFg==");
                    String a3 = e.a("WRcO");
                    if (random.nextInt(2) % 2 == 0) {
                        a3 = a2;
                    }
                    if (a2.equalsIgnoreCase(a3)) {
                        StringBuilder o = f.b.a.a.a.o(str3);
                        o.append((char) (random.nextInt(26) + 97));
                        str3 = o.toString();
                    } else {
                        StringBuilder o2 = f.b.a.a.a.o(str3);
                        o2.append(random.nextInt(10));
                        str3 = o2.toString();
                    }
                }
                sb.append(str3);
                sb.append(e.a("GQ=="));
                sb.append(str2);
                str = sb.toString();
            }
            strArr[i2] = str;
        }
        m(strArr);
    }

    public final void m(String... strArr) {
        this.f2216c.clear();
        for (String str : strArr) {
            e0.a aVar = new e0.a();
            StringBuilder o = f.b.a.a.a.o(str);
            o.append(e.a("GAUGECwfVlESCnAGDAs="));
            aVar.i(o.toString());
            f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
            this.f2216c.add(a2);
            ((d0) a2).W(this.f2218e);
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ArrayList<f> arrayList = this.f2216c;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
