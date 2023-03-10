package com.comeback.data.ui.km;

import android.content.Context;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.b;
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
public class KmLaunchActivity extends BaseActivity {

    /* renamed from: g  reason: collision with root package name */
    public static String[] f1356g = {e.a("BlJXSllACh1CUgJJSV5S"), e.a("BlJXSllACh1CUgJJSVlS"), e.a("BlJXSllACh1CUgBJQFM=")};
    public b0 b;

    /* renamed from: c  reason: collision with root package name */
    public f f1357c;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1359e;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<f> f1358d = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    public g f1360f = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6533e > 300) {
                if (KmLaunchActivity.this.f1358d.size() == 1) {
                    KmLaunchActivity.this.m();
                    return;
                }
                return;
            }
            Iterator<f> it = KmLaunchActivity.this.f1358d.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            KmLaunchActivity kmLaunchActivity = KmLaunchActivity.this;
            if (kmLaunchActivity.f1359e) {
                return;
            }
            kmLaunchActivity.f1359e = true;
            b.f4057f = fVar.S().b.f6863j.replace(e.a("GAMTDUQRVlwHSVYIFx42Gw=="), "");
            KmLaunchActivity kmLaunchActivity2 = KmLaunchActivity.this;
            synchronized (kmLaunchActivity2) {
                MainActivity.m(kmLaunchActivity2);
                kmLaunchActivity2.finish();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (KmLaunchActivity.this.f1358d.size() == 1) {
                KmLaunchActivity.this.m();
            }
        }
    }

    public static void l(KmLaunchActivity kmLaunchActivity) {
        if (kmLaunchActivity != null) {
            int length = f1356g.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                String str = f1356g[i2];
                strArr[i2] = e.a("XxYXFFFcFg==") + str + e.a("DVpTXVI=");
            }
            kmLaunchActivity.f1358d.clear();
            for (int i3 = 0; i3 < length; i3++) {
                String str2 = strArr[i3];
                e0.a aVar = new e0.a();
                StringBuilder o = f.b.a.a.a.o(str2);
                o.append(e.a("GAMTDUQRVlwHSVYIFx42Gw=="));
                aVar.i(o.toString());
                f a2 = kmLaunchActivity.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
                kmLaunchActivity.f1358d.add(a2);
                ((d0) a2).W(kmLaunchActivity.f1360f);
            }
            return;
        }
        throw null;
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, KmLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_km_launcher;
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
        m();
    }

    public final void m() {
        e0.a aVar = new e0.a();
        aVar.i(e.a("XxYXFFFcFgJCXxpVQERRUxlQW0sPTF1dTgdEDlYJCw5SFgIMU0sBHRAJWQ=="));
        f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
        this.f1357c = a2;
        ((d0) a2).W(new f.e.a.j.x.e(this));
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f fVar = this.f1357c;
        if (fVar != null) {
            fVar.cancel();
        }
        ArrayList<f> arrayList = this.f1358d;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
