package com.comeback.data.ui.lutube;

import android.content.Context;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.lutube.LutubeLaunchActivity;
import com.comeback.data.ui.lutube.bean.HostInfo;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.j.a0.f;
import f.e.a.j.a0.g;
import f.e.a.j.a0.h;
import f.e.a.j.a0.i;
import f.e.a.j.a0.k.d;
import i.b0;
import i.d0;
import i.e0;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import m.e;

/* loaded from: classes.dex */
public class LutubeLaunchActivity extends BaseActivity {
    public b0 b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1397c = false;

    /* renamed from: d  reason: collision with root package name */
    public int f1398d = 0;

    public static void l(LutubeLaunchActivity lutubeLaunchActivity, HostInfo hostInfo) {
        lutubeLaunchActivity.f1397c = true;
        g gVar = new g(lutubeLaunchActivity);
        h hVar = new h(lutubeLaunchActivity);
        i iVar = new i(lutubeLaunchActivity);
        lutubeLaunchActivity.p(hostInfo.getApis(), gVar);
        lutubeLaunchActivity.p(hostInfo.getStreams(), hVar);
        lutubeLaunchActivity.p(hostInfo.getImgs(), iVar);
    }

    public static /* synthetic */ int m(LutubeLaunchActivity lutubeLaunchActivity) {
        int i2 = lutubeLaunchActivity.f1398d;
        lutubeLaunchActivity.f1398d = i2 + 1;
        return i2;
    }

    public static void n(LutubeLaunchActivity lutubeLaunchActivity) {
        if (lutubeLaunchActivity.f1398d >= 3) {
            synchronized (d.class) {
                d.b = null;
            }
            lutubeLaunchActivity.getWindow().getDecorView().postDelayed(new Runnable() { // from class: f.e.a.j.a0.a
                @Override // java.lang.Runnable
                public final void run() {
                    LutubeLaunchActivity.this.o();
                }
            }, 1500);
        }
    }

    public static void q(Context context) {
        a.u(context, LutubeLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lutube_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        b0.a aVar = new b0.a();
        aVar.c(25, TimeUnit.SECONDS);
        aVar.d(25, TimeUnit.SECONDS);
        aVar.f6383h = true;
        aVar.f6388m = Proxy.NO_PROXY;
        aVar.f6381f = true;
        this.b = new b0(aVar);
        e<HostInfo> j2 = d.a().j();
        e<HostInfo> d2 = d.a().d();
        e<HostInfo> e2 = d.a().e();
        f.e.a.j.a0.d dVar = new f.e.a.j.a0.d(this);
        f.e.a.j.a0.e eVar = new f.e.a.j.a0.e(this);
        f fVar = new f(this);
        k(j2, dVar);
        k(d2, eVar);
        k(e2, fVar);
    }

    public /* synthetic */ void o() {
        MainActivity.m(this);
        finish();
    }

    public final void p(List<String> list, i.g gVar) {
        for (String str : list) {
            e0.a aVar = new e0.a();
            StringBuilder o = a.o(str);
            o.append(f.e.a.e.a("GBETAQ4XF1sHC1g="));
            aVar.i(o.toString());
            ((d0) this.b.a(a.s("VA4MFw4=", aVar, f.e.a.e.a("dA0NCg4QTVocCA==")))).W(gVar);
        }
    }
}
