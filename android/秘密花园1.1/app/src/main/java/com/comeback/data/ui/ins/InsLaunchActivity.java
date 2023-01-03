package com.comeback.data.ui.ins;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.ins.InsLaunchActivity;
import com.comeback.secret.garden.R;
import com.tencent.smtt.export.external.interfaces.IX5WebChromeClient;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
import com.tencent.smtt.export.external.interfaces.WebResourceResponse;
import com.tencent.smtt.sdk.CookieManager;
import com.tencent.smtt.sdk.CookieSyncManager;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebStorage;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;
import f.e.a.e;
import f.e.a.j.r.c;
import f.e.a.k.f;
import java.util.HashMap;
import java.util.Random;

/* loaded from: classes.dex */
public class InsLaunchActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public HashMap f1072c;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class a extends WebViewClient {
        public a() {
        }

        public /* synthetic */ void a() {
            InsLaunchActivity.l(InsLaunchActivity.this);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
            return super.shouldOverrideKeyEvent(webView, keyEvent);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str, InsLaunchActivity.this.f1072c);
            return true;
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            webResourceRequest.getRequestHeaders().put(e.a("T08FCxkEWEEXA1BKHgUR"), InsLaunchActivity.this.b);
            if (webResourceRequest.getUrl().toString().contains(e.a("GAMTFEQGSlYB"))) {
                String str = webResourceRequest.getRequestHeaders().get(e.a("dhcXDAQBUEkSEl0IFg=="));
                if (!TextUtils.isEmpty(str)) {
                    f.e.a.k.b.u0 = str;
                    e.a("aD08OwIdSg==");
                    String str2 = f.e.a.k.b.u0;
                    f.b();
                    InsLaunchActivity.this.runOnUiThread(new Runnable() { // from class: f.e.a.j.r.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            InsLaunchActivity.a.this.a();
                        }
                    });
                }
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest, Bundle bundle) {
            return super.shouldInterceptRequest(webView, webResourceRequest, bundle);
        }
    }

    /* loaded from: classes.dex */
    public class b extends WebChromeClient {
        public View a;
        public View b;

        /* renamed from: c  reason: collision with root package name */
        public IX5WebChromeClient.CustomViewCallback f1073c;

        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onHideCustomView() {
            IX5WebChromeClient.CustomViewCallback customViewCallback = this.f1073c;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                this.f1073c = null;
            }
            View view = this.a;
            if (view != null) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                viewGroup.removeView(this.a);
                viewGroup.addView(this.b);
            }
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return super.onJsAlert(null, str, str2, jsResult);
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return super.onJsConfirm(webView, str, str2, jsResult);
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onShowCustomView(View view, IX5WebChromeClient.CustomViewCallback customViewCallback) {
            WebView webView = InsLaunchActivity.this.webView;
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            viewGroup.removeView(webView);
            viewGroup.addView(view);
            this.a = view;
            this.b = webView;
            this.f1073c = customViewCallback;
        }
    }

    public static void l(InsLaunchActivity insLaunchActivity) {
        if (insLaunchActivity != null) {
            InsActivity.m(insLaunchActivity);
            insLaunchActivity.finish();
            return;
        }
        throw null;
    }

    public static void o(Context context) {
        f.b.a.a.a.u(context, InsLaunchActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ins_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        k(f.e.a.j.r.e.b.a().e(), new c(this));
        n();
    }

    public final void n() {
        Random random = new Random();
        this.b = random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255);
        this.webView.setWebViewClient(new a());
        this.webView.setWebChromeClient(new b());
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
        this.f1072c = hashMap;
        hashMap.put(e.a("T08FCxkEWEEXA1BKHgUR"), this.b);
        this.webView.loadUrl(f.e.a.k.b.s0, this.f1072c);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().sync();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (f.e.a.j.r.e.b.class) {
            f.e.a.j.r.e.b.b = null;
        }
        this.webView.loadUrl(e.a("VgAMER9JW18SCF8="));
        CookieSyncManager.createInstance(App.b);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeSessionCookies(null);
        cookieManager.removeAllCookie();
        cookieManager.flush();
        WebStorage.getInstance().deleteAllData();
    }
}
