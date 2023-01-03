package com.comeback.data.ui.fulao2;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.CookieManager;
import com.tencent.smtt.sdk.CookieSyncManager;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebStorage;
import com.tencent.smtt.sdk.WebView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.k.c;
import f.e.a.j.k.d;
import f.e.a.j.k.h.b;
import f.e.a.j.k.h.f;
import i.a0;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes.dex */
public class FuLao2Launch2Activity extends BaseActivity {

    /* renamed from: c  reason: collision with root package name */
    public String f701c;

    /* renamed from: d  reason: collision with root package name */
    public HashMap f702d;

    /* renamed from: e  reason: collision with root package name */
    public String f703e;

    /* renamed from: f  reason: collision with root package name */
    public String f704f;
    @BindView
    public WebView webView;
    public boolean b = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f705g = false;

    public static void l(FuLao2Launch2Activity fuLao2Launch2Activity) {
        if (fuLao2Launch2Activity != null) {
            f.a();
            e.a("aD08OzQ=");
            f.e.a.k.f.b();
            e.a("aD08OzQ=");
            a0.a aVar = new a0.a();
            aVar.d(a0.f6357h);
            aVar.a(e.a("XwMQDA=="), fuLao2Launch2Activity.f703e);
            aVar.a(e.a("Rw4CEA0cS14="), e.a("QAcB"));
            aVar.a(e.a("QhYOOxgcTEEQAw=="), e.a("QxcRCgkSWlg="));
            a0 c2 = aVar.c();
            b b = f.b();
            String str = f.e.a.k.b.b;
            HashMap<String, String> hashMap = new HashMap<>();
            String str2 = fuLao2Launch2Activity.f704f;
            if (str2 != null && !str2.isEmpty()) {
                String[] split = fuLao2Launch2Activity.f704f.split(e.a("EQ=="));
                for (String str3 : split) {
                    if (str3.contains(e.a("Cg=="))) {
                        String[] split2 = str3.split(e.a("Cg=="));
                        if (split2.length == 1) {
                            hashMap.put(split2[0], "");
                        } else {
                            hashMap.put(split2[0], split2[1]);
                        }
                    }
                }
            }
            fuLao2Launch2Activity.k(b.g(str, hashMap, c2), new f.e.a.j.k.f(fuLao2Launch2Activity));
            return;
        }
        throw null;
    }

    public static void m(Context context) {
        a.u(context, FuLao2Launch2Activity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        m.e<Host> b = f.b().b();
        m.e<Host> m2 = f.b().m();
        m.e<Host> k2 = f.b().k();
        k(b, new c(this));
        k(m2, new c(this));
        k(k2, new c(this));
        Random random = new Random();
        this.f701c = random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255);
        this.webView.setWebViewClient(new d(this));
        this.webView.setWebChromeClient(new f.e.a.j.k.e(this));
        WebSettings settings = this.webView.getSettings();
        settings.setAllowFileAccess(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        settings.setSupportMultipleWindows(false);
        settings.setAppCacheEnabled(true);
        settings.setCacheMode(2);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setUserAgent(h.Z());
        settings.setAppCacheMaxSize(RecyclerView.FOREVER_NS);
        settings.setAppCachePath(getDir(e.a("VhITBwoQUVY="), 0).getPath());
        settings.setDatabasePath(getDir(e.a("UwMXBQkSSlYA"), 0).getPath());
        settings.setGeolocationDatabasePath(getDir(e.a("UAcMCAQQWEcaCVo="), 0).getPath());
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        this.f702d = hashMap;
        hashMap.put(e.a("T08FCxkEWEEXA1BKHgUR"), this.f701c);
        this.webView.loadUrl(f.e.a.k.b.a, this.f702d);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().sync();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f.a();
        this.webView.loadUrl(e.a("VgAMER9JW18SCF8="));
        CookieSyncManager.createInstance(App.b);
        CookieManager instance = CookieManager.getInstance();
        instance.removeSessionCookies(null);
        instance.removeAllCookie();
        instance.flush();
        WebStorage.getInstance().deleteAllData();
    }
}
