package com.comeback.data.ui.hg;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.commom.PlayActivity;
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
import i.b0;
import i.d0;
import i.e0;
import i.h0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public class HGBrowseActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public HashMap f1004c;

    /* renamed from: d  reason: collision with root package name */
    public b0 f1005d;
    @BindView
    public ProgressBar progressBar;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class a extends WebViewClient {

        /* renamed from: com.comeback.data.ui.hg.HGBrowseActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0008a implements Runnable {
            public final /* synthetic */ WebResourceRequest a;

            public RunnableC0008a(WebResourceRequest webResourceRequest) {
                this.a = webResourceRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                HGMovieDetailActivity.n(HGBrowseActivity.this, f.e.a.j.n.d.a.c(this.a));
            }
        }

        /* loaded from: classes.dex */
        public class b implements Runnable {
            public final /* synthetic */ WebResourceRequest a;

            public b(WebResourceRequest webResourceRequest) {
                this.a = webResourceRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                PlayActivity.l(HGBrowseActivity.this, this.a.getUrl().toString());
            }
        }

        /* loaded from: classes.dex */
        public class c implements Runnable {
            public final /* synthetic */ WebResourceRequest a;

            public c(a aVar, WebResourceRequest webResourceRequest) {
                this.a = webResourceRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                f.e.a.j.n.d.a.b(this.a);
            }
        }

        public a() {
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            HGBrowseActivity.this.progressBar.setVisibility(8);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            HGBrowseActivity.this.progressBar.setVisibility(0);
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
            webView.loadUrl(str, HGBrowseActivity.this.f1004c);
            return true;
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            webResourceRequest.getRequestHeaders().put(e.a("T08FCxkEWEEXA1BKHgUR"), HGBrowseActivity.this.b);
            int a = f.e.a.j.n.d.a.a(webResourceRequest);
            if (f.e.a.j.n.d.a.f3934d == a) {
                webView.post(new RunnableC0008a(webResourceRequest));
            } else if (f.e.a.j.n.d.a.f3936f == a) {
                webView.post(new b(webResourceRequest));
            } else if (f.e.a.j.n.d.a.f3935e == a) {
                webView.postDelayed(new c(this, webResourceRequest), 300);
            }
            Uri url = webResourceRequest.getUrl();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String uri = url.toString();
            String method = webResourceRequest.getMethod();
            if (uri.endsWith(e.a("VBEQ")) || uri.endsWith(e.a("UAsF")) || uri.contains(e.a("UwMXBVEaVFIUAxsXFg1YCVYRBlJf")) || uri.endsWith(e.a("RwwE")) || uri.endsWith(e.a("XRIE"))) {
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
            if (uri.startsWith(e.a("XxYXFA==")) && (method.equals(e.a("cCc3")) || method.equals(e.a("Zy0wMA==")))) {
                e0.a aVar = new e0.a();
                aVar.i(uri);
                for (String str : requestHeaders.keySet()) {
                    aVar.c(str, requestHeaders.get(str));
                }
                try {
                    String a2 = e.a("QhYFSVM=");
                    h0 T = ((d0) HGBrowseActivity.this.f1005d.a(aVar.b())).T();
                    if (T.f6449e > 400) {
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                    WebResourceResponse webResourceResponse = new WebResourceResponse(T.f6452h.E().b, a2, T.f6452h.d());
                    Iterator<h.c<? extends String, ? extends String>> it = T.f6451g.iterator();
                    HashMap hashMap = new HashMap();
                    while (true) {
                        h.o.c.a aVar2 = (h.o.c.a) it;
                        if (aVar2.hasNext()) {
                            h.c cVar = (h.c) aVar2.next();
                            hashMap.put(cVar.a, cVar.b);
                        } else {
                            webResourceResponse.setResponseHeaders(hashMap);
                            e.a("aD08OzQsZg==");
                            return webResourceResponse;
                        }
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
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
        public IX5WebChromeClient.CustomViewCallback f1006c;

        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onHideCustomView() {
            IX5WebChromeClient.CustomViewCallback customViewCallback = this.f1006c;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                this.f1006c = null;
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
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            HGBrowseActivity.this.progressBar.setProgress(i2);
            if (i2 == 100) {
                HGBrowseActivity.this.progressBar.setVisibility(8);
            }
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onShowCustomView(View view, IX5WebChromeClient.CustomViewCallback customViewCallback) {
            WebView webView = HGBrowseActivity.this.webView;
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            viewGroup.removeView(webView);
            viewGroup.addView(view);
            this.a = view;
            this.b = webView;
            this.f1006c = customViewCallback;
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, HGBrowseActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_h5;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        Random random = new Random();
        this.b = random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255) + e.a("GQ==") + random.nextInt(255);
        this.f1005d = new b0();
        j(Color.parseColor(e.a("FCQmIFJDCQ==")));
        getWindow().setFormat(-3);
        getWindow().setSoftInputMode(18);
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
        settings.setUserAgent(e.a("eg0ZDQcfWBxGSARHUCYKBUIaWEQqHV1BHA9QR01EU1AXMS5JLEoJAyNGdhIRBgdEezA7VlonEBMyFkQLHT0GCXwLF0teQA4dQFAUTzMiNyZ7TkMIAhhcEzQDVwwXQ0MoXxAMCQ5cAQNdVhpUQVJURQZQUUQmHFtaHwMUNBkMAhleTVZXXF0KBQ=="));
        settings.setAppCacheMaxSize(RecyclerView.FOREVER_NS);
        settings.setAppCachePath(getDir(e.a("VhITBwoQUVY="), 0).getPath());
        settings.setDatabasePath(getDir(e.a("UwMXBQkSSlYA"), 0).getPath());
        settings.setGeolocationDatabasePath(getDir(e.a("UAcMCAQQWEcaCVo="), 0).getPath());
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        this.f1004c = hashMap;
        hashMap.put(e.a("T08FCxkEWEEXA1BKHgUR"), this.b);
        this.webView.loadUrl(f.e.a.k.b.L, this.f1004c);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().sync();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.webView.loadUrl(e.a("VgAMER9JW18SCF8="));
        CookieSyncManager.createInstance(App.b);
        CookieManager instance = CookieManager.getInstance();
        instance.removeSessionCookies(null);
        instance.removeAllCookie();
        instance.flush();
        WebStorage.getInstance().deleteAllData();
    }
}
