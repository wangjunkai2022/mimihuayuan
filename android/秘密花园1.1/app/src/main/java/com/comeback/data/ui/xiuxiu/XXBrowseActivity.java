package com.comeback.data.ui.xiuxiu;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
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
import f.e.a.j.h0.c;
import java.io.ByteArrayInputStream;

/* loaded from: classes.dex */
public class XXBrowseActivity extends BaseActivity {
    @BindView
    public ProgressBar progressBar;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class b extends WebChromeClient {
        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            XXBrowseActivity.this.progressBar.setProgress(i2);
            if (i2 == 100) {
                XXBrowseActivity.this.progressBar.setVisibility(8);
            }
        }
    }

    public static void l(XXBrowseActivity xXBrowseActivity) {
        if (xXBrowseActivity != null) {
            String str = f.e.a.k.b.W;
            String str2 = f.e.a.k.b.X;
            String replace = str.replace(e.a("XxYXFFFcFg=="), "").replace(e.a("XxYXFBhJFhw="), "");
            CookieSyncManager.createInstance(App.b);
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.removeSessionCookie();
            if (!TextUtils.isEmpty(str2) && str2.contains(e.a("DA=="))) {
                for (String str3 : str2.split(e.a("DA=="))) {
                    cookieManager.setCookie(replace, str3);
                }
            } else {
                cookieManager.setCookie(replace, str2);
            }
            CookieSyncManager.getInstance().sync();
            xXBrowseActivity.webView.loadUrl(f.e.a.k.b.W);
            return;
        }
        throw null;
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, XXBrowseActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_h5;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        c.a().d(e.a("XxYXFBhJFhwSFl1JEAMJCFUDTRwSCRZSEBIbCxcfBQ5ZBVFLHxxSVh0="), 50).X(new f.e.a.j.q0.b(this));
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
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeSessionCookies(null);
        cookieManager.removeAllCookie();
        cookieManager.flush();
        WebStorage.getInstance().deleteAllData();
    }

    /* loaded from: classes.dex */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            XXBrowseActivity.this.progressBar.setVisibility(8);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            XXBrowseActivity.this.progressBar.setVisibility(0);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest, Bundle bundle) {
            String uri = webResourceRequest.getUrl().toString();
            if (uri.contains(e.a("GBYLAQYWShwfB1sAHQ0GRFYBFw0EHRZQHAtZAhYeTRtfEg=="))) {
                return new WebResourceResponse(e.a("QwcbEEQbTV4f"), e.a("QhYFSVM="), new ByteArrayInputStream(e.a("0MTigsbR0Zz3jprd").getBytes()));
            }
            if (uri.contains(e.a("QBJOCAQUUF1dFlwXRwsAH14NDVkHHF5cBhI="))) {
                return new WebResourceResponse(e.a("QwcbEEQbTV4f"), e.a("QhYFSVM="), new ByteArrayInputStream(e.a("09/Dgvf635zogaPil9bvgrfihuPRnIWsnNqr").getBytes()));
            }
            return super.shouldInterceptRequest(webView, webResourceRequest, bundle);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return str.contains(e.a("QhEGFg=="));
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }
}
