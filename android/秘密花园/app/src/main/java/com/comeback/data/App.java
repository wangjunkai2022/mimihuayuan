package com.comeback.data;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.multidex.MultiDexApplication;
import c.a.a.b.g.h;
import com.comeback.data.ndk.SignHelper;
import com.comeback.data.ui.main.bean.ConfigBean;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.tencent.smtt.sdk.QbSdk;
import com.umeng.commonsdk.UMConfigure;
import f.e.a.c;
import f.e.a.h.a;
import f.e.a.k.g;
import f.e.a.k.j;
import f.j.a.a.f.e;
import f.j.a.a.f.i;
import f.j.a.a.h.b;
import g.a.b0;
import g.a.x;

/* loaded from: classes.dex */
public class App extends MultiDexApplication {
    public static App b;

    /* renamed from: c  reason: collision with root package name */
    public static int f102c;

    /* renamed from: d  reason: collision with root package name */
    public static int f103d;

    /* renamed from: e  reason: collision with root package name */
    public static ConfigBean f104e;
    public a a;

    public static e b(Context context, i iVar) {
        b bVar = new b(context);
        ImageView imageView = bVar.f6170e;
        ImageView imageView2 = bVar.f6171f;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
        int d2 = f.j.a.a.m.b.d(20.0f);
        layoutParams2.width = d2;
        layoutParams.width = d2;
        int d3 = f.j.a.a.m.b.d(20.0f);
        layoutParams2.height = d3;
        layoutParams.height = d3;
        imageView.setLayoutParams(layoutParams);
        imageView2.setLayoutParams(layoutParams2);
        return bVar;
    }

    public void c(String str) {
        String str2;
        try {
            if (TextUtils.isEmpty(str)) {
                str2 = j.b().d(f.e.a.e.a("VA0NAgIUZlASBVwC"));
            } else {
                str2 = h.L(str);
                j.b().h(f.e.a.e.a("VA0NAgIUZlASBVwC"), str2);
            }
            if (!TextUtils.isEmpty(str2)) {
                ConfigBean configBean = (ConfigBean) new f.i.b.j().d(str2, ConfigBean.class);
                f104e = configBean;
                f.e.a.k.b.a(configBean);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        b = this;
        SignHelper.validitySign(this);
        UMConfigure.init(this, f.e.a.e.a("AVFbBl8WWAFLXlcEHAxXCQAHWlBbQAlV"), f.e.a.e.a("ZAcAFg4HflIBAlEJ"), 1, "");
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        f103d = displayMetrics.widthPixels;
        f102c = displayMetrics.heightPixels;
        QbSdk.initX5Environment(this, new c(this));
        SmartRefreshLayout.setDefaultRefreshHeaderCreator(f.e.a.b.a);
        SmartRefreshLayout.setDefaultRefreshFooterCreator(f.e.a.a.a);
        j.b();
        x.R(this);
        b0.a aVar = new b0.a(g.a.a.f6187g);
        String a = f.e.a.e.a("VAMADA5dS1YSClk=");
        if (!a.isEmpty()) {
            aVar.b = a;
            aVar.f6211f = true;
            x.T(aVar.a());
            g.d(x.P());
            c("");
            return;
        }
        throw new IllegalArgumentException("A non-empty filename must be provided");
    }
}
