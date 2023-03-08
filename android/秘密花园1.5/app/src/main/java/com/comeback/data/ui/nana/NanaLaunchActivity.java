package com.comeback.data.ui.nana;

import android.content.Context;
import android.text.TextUtils;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.nana.bean.AuthBean;
import com.comeback.data.ui.nana.bean.HostInfo;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.j.h0.c;
import f.e.a.j.h0.d;
import f.e.a.j.h0.g;
import f.e.a.j.h0.h;
import f.e.a.j.h0.i;
import f.e.a.j.h0.m.e;
import f.e.a.k.b;
import f.i.b.j;
import i.b0;
import i.d0;
import i.e0;
import i.f;
import i.i0;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import l.g0;

/* loaded from: classes.dex */
public class NanaLaunchActivity extends BaseActivity {
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public b0 f1838c;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<f> f1839d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public boolean f1840e;

    public static void l(NanaLaunchActivity nanaLaunchActivity, g0 g0Var, String str) {
        if (nanaLaunchActivity != null) {
            try {
                e.a().h(str, ((AuthBean) new j().d(((i0) g0Var.b).H(), AuthBean.class)).getResponse().getCode()).X(new f.e.a.j.h0.e(nanaLaunchActivity));
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void m(NanaLaunchActivity nanaLaunchActivity) {
        if (nanaLaunchActivity != null) {
            e.a().c(f.e.a.e.a("XxYXFBhJFhwDEVUJVhoTD14MBEoFFk0cBVcbARkZFwpCFgs=")).X(new d(nanaLaunchActivity));
            return;
        }
        throw null;
    }

    public static void n(NanaLaunchActivity nanaLaunchActivity) {
        if (nanaLaunchActivity.f1840e) {
            return;
        }
        if ((TextUtils.isEmpty(f.e.a.j.h0.m.d.b) || TextUtils.isEmpty(f.e.a.j.h0.m.d.f3952c) || TextUtils.isEmpty(f.e.a.j.h0.m.d.f3953d)) || !nanaLaunchActivity.b) {
            return;
        }
        nanaLaunchActivity.f1840e = true;
        synchronized (e.class) {
            e.b = null;
        }
        MainActivity.m(nanaLaunchActivity);
        nanaLaunchActivity.finish();
    }

    public static void o(NanaLaunchActivity nanaLaunchActivity, g0 g0Var) {
        if (nanaLaunchActivity != null) {
            try {
                nanaLaunchActivity.r((HostInfo) new j().d(((i0) g0Var.b).H(), HostInfo.class));
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void p(NanaLaunchActivity nanaLaunchActivity) {
        if (nanaLaunchActivity != null) {
            e.a().c(f.e.a.e.a("XxYXFBhJFhwDE1YLEQlNH1YFBhBFEFccGwlHEycaFAoZFhsQ")).X(new g(nanaLaunchActivity));
            return;
        }
        throw null;
    }

    public static void q(Context context) {
        a.u(context, NanaLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_nana_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        if (!TextUtils.isEmpty(b.U)) {
            f.e.a.j.h0.m.d.a = b.U;
        }
        b0.a aVar = new b0.a();
        aVar.c(25L, TimeUnit.SECONDS);
        aVar.d(25L, TimeUnit.SECONDS);
        aVar.f6463m = Proxy.NO_PROXY;
        aVar.f6456f = true;
        this.f1838c = new b0(aVar);
        e.a().c(f.e.a.e.a("XxYXFBhJFhwDEVUfVgIaE0cDGkoIHFQcBVcbARkZFwpCFgs=")).X(new c(this));
        e.a().c(f.e.a.e.a("XxYXFBhJFhwDE1YLEQlNEV8HDQMNFldUGANeDlYJDURfDRAQNANOUl0STBM=")).X(new f.e.a.j.h0.f(this));
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ArrayList<f> arrayList = this.f1839d;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    public final void r(HostInfo hostInfo) {
        if (hostInfo != null && hostInfo.getApi_pwa() != null) {
            for (HostInfo.ApiEntity apiEntity : hostInfo.getApi_pwa()) {
                e0.a aVar = new e0.a();
                aVar.i(apiEntity.getSpeedUrl());
                f a = this.f1838c.a(a.s("VA4MFw4=", aVar, f.e.a.e.a("dA0NCg4QTVocCA==")));
                this.f1839d.add(a);
                ((d0) a).W(new h(this));
            }
        }
        if (hostInfo != null && hostInfo.getImg_pwa() != null) {
            for (HostInfo.ApiEntity apiEntity2 : hostInfo.getImg_pwa()) {
                e0.a aVar2 = new e0.a();
                aVar2.i(apiEntity2.getSpeedUrl());
                f a2 = this.f1838c.a(a.s("VA4MFw4=", aVar2, f.e.a.e.a("dA0NCg4QTVocCA==")));
                this.f1839d.add(a2);
                ((d0) a2).W(new i(this));
            }
        }
        if (hostInfo == null || hostInfo.getStream_pwa() == null) {
            return;
        }
        for (HostInfo.ApiEntity apiEntity3 : hostInfo.getStream_pwa()) {
            e0.a aVar3 = new e0.a();
            aVar3.i(apiEntity3.getSpeedUrl());
            f a3 = this.f1838c.a(a.s("VA4MFw4=", aVar3, f.e.a.e.a("dA0NCg4QTVocCA==")));
            this.f1839d.add(a3);
            ((d0) a3).W(new f.e.a.j.h0.j(this));
        }
    }
}
