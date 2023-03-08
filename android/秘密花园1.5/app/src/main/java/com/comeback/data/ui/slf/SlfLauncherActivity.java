package com.comeback.data.ui.slf;

import android.content.Context;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.slf.bean.AppInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.h.d;
import f.e.a.k.b;
import f.e.a.k.f;
import f.i.b.r;
import m.j;

/* loaded from: classes.dex */
public class SlfLauncherActivity extends BaseActivity {

    /* loaded from: classes.dex */
    public class a extends j<AppInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.getMessage();
            f.a();
            h.n1(e.a("3ufug9bd0b3Eg7vxnc7Sg4PH"));
        }

        @Override // m.j
        public void f(AppInfo appInfo) {
            b.G = appInfo.getToken().getAccessToken();
            SlfActivity.m(SlfLauncherActivity.this);
            SlfLauncherActivity.this.finish();
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, SlfLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        r rVar = new r();
        rVar.e(e.a("UwcVDQgWb1YBFV0IFg=="), e.a("BkxV"));
        rVar.e(e.a("UwcVDQgWcFc="), b.F);
        k(f.e.a.j.l0.h.b.a().f(d.a(rVar.toString())), new a());
    }
}
