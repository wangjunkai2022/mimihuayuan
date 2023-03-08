package com.comeback.data.ui.km2;

import android.content.Context;
import android.content.Intent;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.b;
import i.b0;
import i.d0;
import i.e0;
import i.f;
import i.g;
import i.g0;
import i.h0;
import i.z;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Km2LaunchActivity extends BaseActivity {

    /* renamed from: h  reason: collision with root package name */
    public static String[] f1396h = {e.a("BlNaSllLFwFBXhpVTVk="), e.a("BldTSlpDAB1HUhpRTg==")};
    public b0 b;

    /* renamed from: c  reason: collision with root package name */
    public f f1397c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1398d;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1400f;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<f> f1399e = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    public g f1401g = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6524e > 300) {
                if (Km2LaunchActivity.this.f1399e.size() == 1) {
                    Km2LaunchActivity.this.m();
                    return;
                }
                return;
            }
            Iterator<f> it = Km2LaunchActivity.this.f1399e.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            Km2LaunchActivity km2LaunchActivity = Km2LaunchActivity.this;
            if (km2LaunchActivity.f1400f) {
                return;
            }
            km2LaunchActivity.f1400f = true;
            b.f4049g = fVar.S().b.f6854j.replace(e.a("GAMTDUQQVl0VD1NIEQQHDk8="), "");
            Km2LaunchActivity km2LaunchActivity2 = Km2LaunchActivity.this;
            synchronized (km2LaunchActivity2) {
                if (km2LaunchActivity2.f1398d) {
                    MMActivity.t(km2LaunchActivity2);
                } else {
                    Km2Activity.m(km2LaunchActivity2);
                }
                km2LaunchActivity2.finish();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (Km2LaunchActivity.this.f1399e.size() == 1) {
                Km2LaunchActivity.this.m();
            }
        }
    }

    public static void l(Km2LaunchActivity km2LaunchActivity) {
        if (km2LaunchActivity != null) {
            int length = f1396h.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                String str = f1396h[i2];
                strArr[i2] = e.a("XxYXFFFcFg==") + str + e.a("DVpTXVI=");
            }
            km2LaunchActivity.f1399e.clear();
            for (int i3 = 0; i3 < length; i3++) {
                String str2 = strArr[i3];
                g0 c2 = g0.c(e.a("VhIKOx8cUlYdWxIDGR4CVnZTUiJbQA0CMFEMJD4sIV9xIVVRWzV8BUQndSRILlJbdVAlVig1fwMxJ3dSOV5TXHMhJyVcQQhwMlABITxTWl0EJlRVUzd9AkpfcVI+W1RYdVBVXSg2DXJEV3VQSFImL3RSUFJTNnp3N1UHXj4uUFoFUiBQWkp6C0VRdiU8KFtdEQYGEgIQXA4SCFAVFwMHTVMHFQ0IFmZHChZRWjUfLh4RBgYSAhBcbAUDRhQRBQ1WAUxTSlpVT1YBFV0IFjUABFMHXlI="), z.c(e.a("VhITCAIQWEcaCVpIAEcUHEBPBQsZHhRGAQpRCRsFBw5TWUMHAxJLQBYSCRIMDE5T")));
                e0.a aVar = new e0.a();
                StringBuilder o = f.b.a.a.a.o(str2);
                o.append(e.a("GAMTDUQQVl0VD1NIEQQHDk8="));
                aVar.i(o.toString());
                aVar.a(e.a("dA0NCg4QTVocCA=="), e.a("VA4MFw4="));
                aVar.f(c2);
                f a2 = km2LaunchActivity.b.a(aVar.b());
                km2LaunchActivity.f1399e.add(a2);
                ((d0) a2).W(km2LaunchActivity.f1401g);
            }
            return;
        }
        throw null;
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, Km2LaunchActivity.class);
    }

    public static void o(Context context) {
        Intent intent = new Intent(context, Km2LaunchActivity.class);
        intent.putExtra(e.a("XhEuKQ=="), true);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1398d = intent.getBooleanExtra(e.a("XhEuKQ=="), false);
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
        aVar.f6463m = Proxy.NO_PROXY;
        aVar.f6456f = true;
        this.b = new b0(aVar);
        m();
    }

    public final void m() {
        e0.a aVar = new e0.a();
        aVar.i(e.a("XxYXFFFcFgJCXxpVQERRUxlQW0sPTF1dTgdEF1YEBhxcD04FEQZcQRACWkkbBQ4="));
        f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
        this.f1397c = a2;
        ((d0) a2).W(new f.e.a.j.y.g(this));
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f fVar = this.f1397c;
        if (fVar != null) {
            fVar.cancel();
        }
        ArrayList<f> arrayList = this.f1399e;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
