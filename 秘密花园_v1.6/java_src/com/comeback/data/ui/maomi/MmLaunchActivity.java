package com.comeback.data.ui.maomi;

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
import i.g0;
import i.h0;
import i.z;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class MmLaunchActivity extends BaseActivity {

    /* renamed from: g  reason: collision with root package name */
    public static String[] f1611g = {e.a("BlBXSlpGDx1CVw1JSl9R"), e.a("BldTSlpDAB1CVwJJTVk=")};
    public b0 b;

    /* renamed from: c  reason: collision with root package name */
    public f f1612c;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1614e;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<f> f1613d = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    public g f1615f = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6533e > 300) {
                if (MmLaunchActivity.this.f1613d.size() == 1) {
                    MmLaunchActivity.this.m();
                    return;
                }
                return;
            }
            Iterator<f> it = MmLaunchActivity.this.f1613d.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            MmLaunchActivity mmLaunchActivity = MmLaunchActivity.this;
            if (mmLaunchActivity.f1614e) {
                return;
            }
            mmLaunchActivity.f1614e = true;
            String replace = fVar.S().b.f6863j.replace(e.a("GAMTDUQHVlwfFRsDFwcCAlk="), "");
            b.f4059h = replace;
            j.b().h(e.a("YjAvOyY+"), replace);
            MmLaunchActivity mmLaunchActivity2 = MmLaunchActivity.this;
            synchronized (mmLaunchActivity2) {
                MainActivity.m(mmLaunchActivity2);
                mmLaunchActivity2.finish();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            if (MmLaunchActivity.this.f1613d.size() == 1) {
                MmLaunchActivity.this.m();
            }
        }
    }

    public static void l(MmLaunchActivity mmLaunchActivity) {
        if (mmLaunchActivity != null) {
            int length = f1611g.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                String str = f1611g[i2];
                strArr[i2] = e.a("XxYXFFFcFg==") + str + e.a("DVpTXFI=");
            }
            mmLaunchActivity.n(strArr);
            return;
        }
        throw null;
    }

    public static void o(Context context) {
        f.b.a.a.a.u(context, MmLaunchActivity.class);
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
        String d2 = j.b().d(e.a("YjAvOyY+"));
        if (!TextUtils.isEmpty(d2)) {
            n(d2);
        } else {
            m();
        }
    }

    public final void m() {
        e0.a aVar = new e0.a();
        aVar.i(e.a("XxYXFFFcFgJCXxpVQERRUxlQW0sPTF1dTgVQCVYEBhxaD04QDh1eSwYITRIWRAAEWg=="));
        f a2 = this.b.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
        this.f1612c = a2;
        ((d0) a2).W(new f.e.a.j.d0.g(this));
    }

    public final void n(String... strArr) {
        this.f1613d.clear();
        for (String str : strArr) {
            g0 c2 = g0.c(e.a("VhIKOx8cUlYdWxIDGR4CVnZTUiJbQA0CMFEMJD4sIV9xIVVRWzV8BUQndSRILlJbdVAlVig1fwMxJ3dSOV5TXHMhJyVcQQhwMlABITxTWl0EJlRVUzd9AkpfcVI+W1RYdVBVXSg2DXJEV3VQSFImL3RSUFJTNnp3N1UHXj4uUFoFUiBQWkp6C0VRdiU8KFtdEQYGEgIQXA4SCFAVFwMHTVMHFQ0IFmZHChZRWjUfLh4RBgYSAhBcbAUDRhQRBQ1WAUxTSlpVT1YBFV0IFjUABFMHXlI="), z.c(e.a("VhITCAIQWEcaCVpIAEcUHEBPBQsZHhRGAQpRCRsFBw5TWUMHAxJLQBYSCRIMDE5T")));
            e0.a aVar = new e0.a();
            StringBuilder o = f.b.a.a.a.o(str);
            o.append(e.a("GAMTDUQHVlwfFRsDFwcCAlk="));
            aVar.i(o.toString());
            aVar.a(e.a("dA0NCg4QTVocCA=="), e.a("VA4MFw4="));
            aVar.f(c2);
            f a2 = this.b.a(aVar.b());
            this.f1613d.add(a2);
            ((d0) a2).W(this.f1615f);
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f fVar = this.f1612c;
        if (fVar != null) {
            fVar.cancel();
        }
        ArrayList<f> arrayList = this.f1613d;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
