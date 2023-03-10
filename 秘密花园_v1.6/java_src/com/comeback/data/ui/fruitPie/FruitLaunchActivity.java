package com.comeback.data.ui.fruitPie;

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
import i.g0;
import i.h0;
import i.z;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class FruitLaunchActivity extends BaseActivity {

    /* renamed from: f  reason: collision with root package name */
    public static String[] f703f = {e.a("XxYXFBhJFhwSFl1JGwgBDlJSTQcEHg=="), e.a("XxYXFFFcFlIDDxpTT14CDVVMAAsG"), e.a("XxYXFFFcFlIDDxpeTQ9aUlVMAAsG"), e.a("XxYXFFFcFlIDDxpSQQ4CX1NMAAsG"), e.a("XxYXFFFcFlIDDxpUHV8HCVVMAAsG")};
    public b0 b;

    /* renamed from: d  reason: collision with root package name */
    public boolean f705d;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<f> f704c = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public g f706e = new a();

    /* loaded from: classes.dex */
    public class a implements g {
        public a() {
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6533e > 300) {
                return;
            }
            Iterator<f> it = FruitLaunchActivity.this.f704c.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            FruitLaunchActivity fruitLaunchActivity = FruitLaunchActivity.this;
            if (fruitLaunchActivity.f705d) {
                return;
            }
            fruitLaunchActivity.f705d = true;
            b.u0 = fVar.S().b.f6863j.replace(e.a("GBRSO1lcXVweB10JVwkLDlQJ"), "");
            FruitLaunchActivity fruitLaunchActivity2 = FruitLaunchActivity.this;
            synchronized (fruitLaunchActivity2) {
                FruitActivity.l(fruitLaunchActivity2);
                fruitLaunchActivity2.finish();
            }
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            iOException.getMessage();
            f.e.a.k.f.a();
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, FruitLaunchActivity.class);
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
        int length = f703f.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            StringBuilder o = f.b.a.a.a.o(f703f[i2]);
            o.append(e.a("GBRSO1lcXVweB10JVwkLDlQJ"));
            strArr[i2] = o.toString();
        }
        this.f704c.clear();
        for (int i3 = 0; i3 < length; i3++) {
            String str = strArr[i3];
            e0.a aVar2 = new e0.a();
            aVar2.i(str);
            aVar2.f(g0.c("", z.c(e.a("VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw=="))));
            f a2 = this.b.a(aVar2.b());
            this.f704c.add(a2);
            ((d0) a2).W(this.f706e);
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ArrayList<f> arrayList = this.f704c;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }
}
