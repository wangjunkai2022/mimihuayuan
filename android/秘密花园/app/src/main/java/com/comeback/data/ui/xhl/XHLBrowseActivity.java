package com.comeback.data.ui.xhl;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
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

/* loaded from: classes.dex */
public class XHLBrowseActivity extends BaseActivity {
    @BindView
    public ProgressBar progressBar;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            XHLBrowseActivity.this.progressBar.setVisibility(8);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            XHLBrowseActivity.this.progressBar.setVisibility(0);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.contains(e.a("Wg0HWR0aXEQHDkYCGQ4="))) {
                InfoActivity.l(XHLBrowseActivity.this, str);
                return true;
            } else if (str.contains(e.a("Xw0OAUUDUUNMC1sDRRkTClQH"))) {
                return true;
            } else {
                return false;
            }
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest, Bundle bundle) {
            return super.shouldInterceptRequest(webView, webResourceRequest, bundle);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    /* loaded from: classes.dex */
    public class b extends WebChromeClient {
        public View a;
        public View b;

        /* renamed from: c  reason: collision with root package name */
        public IX5WebChromeClient.CustomViewCallback f2132c;

        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onHideCustomView() {
            IX5WebChromeClient.CustomViewCallback customViewCallback = this.f2132c;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                this.f2132c = null;
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
            XHLBrowseActivity.this.progressBar.setProgress(i2);
            if (i2 == 100) {
                XHLBrowseActivity.this.progressBar.setVisibility(8);
            }
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onShowCustomView(View view, IX5WebChromeClient.CustomViewCallback customViewCallback) {
            WebView webView = XHLBrowseActivity.this.webView;
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            viewGroup.removeView(webView);
            viewGroup.addView(view);
            this.a = view;
            this.b = webView;
            this.f2132c = customViewCallback;
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, XHLBrowseActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_h5;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
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
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setUserAgent(e.a("eg0ZDQcfWBxGSARHUCYKBUIaWEQqHV1BHA9QR01EU1AXMS5JLEoJAyNGdhIRBgdEezA7VlonEBMyFkQLHT0GCXwLF0teQA4dQFAUTzMiNyZ7TkMIAhhcEzQDVwwXQ0MoXxAMCQ5cAQNdVhpUQVJURQZQUUQmHFtaHwMUNBkMAhleTVZXXF0KBQ=="));
        settings.setAppCacheMaxSize(RecyclerView.FOREVER_NS);
        settings.setAppCachePath(getDir(e.a("VhITBwoQUVY="), 0).getPath());
        settings.setDatabasePath(getDir(e.a("UwMXBQkSSlYA"), 0).getPath());
        settings.setGeolocationDatabasePath(getDir(e.a("UAcMCAQQWEcaCVo="), 0).getPath());
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        this.webView.loadUrl(f.e.a.k.b.T);
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
