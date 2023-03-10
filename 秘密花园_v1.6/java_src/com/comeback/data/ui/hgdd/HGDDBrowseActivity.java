package com.comeback.data.ui.hgdd;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
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
import f.e.a.j.p.c;
import f.e.a.k.f;
/* loaded from: classes.dex */
public class HGDDBrowseActivity extends BaseActivity {
    public boolean b;
    @BindView
    public FrameLayout flProgress;
    @BindView
    public FrameLayout flShow;
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
            if (str.contains(e.a("URI8DQ8="))) {
                e.a("0frdg8/J");
                f.a();
            }
            HGDDBrowseActivity hGDDBrowseActivity = HGDDBrowseActivity.this;
            boolean contains = str.contains(e.a("URI8DQ8="));
            if (hGDDBrowseActivity.b != contains) {
                hGDDBrowseActivity.b = contains;
                if (contains) {
                    int width = hGDDBrowseActivity.flShow.getWidth() / 2;
                    int height = hGDDBrowseActivity.flShow.getHeight() / 2;
                    Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(hGDDBrowseActivity.flShow, width, height, 0.0f, (float) Math.hypot(width, height));
                    hGDDBrowseActivity.flShow.setVisibility(0);
                    createCircularReveal.start();
                } else {
                    int width2 = hGDDBrowseActivity.flShow.getWidth() / 2;
                    int height2 = hGDDBrowseActivity.flShow.getHeight() / 2;
                    Animator createCircularReveal2 = ViewAnimationUtils.createCircularReveal(hGDDBrowseActivity.flShow, width2, height2, (float) Math.hypot(width2, height2), 0.0f);
                    createCircularReveal2.addListener(new f.e.a.j.p.a(hGDDBrowseActivity));
                    createCircularReveal2.start();
                }
            }
            HGDDBrowseActivity.this.progressBar.setVisibility(8);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            HGDDBrowseActivity.this.progressBar.setVisibility(0);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
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
        public IX5WebChromeClient.CustomViewCallback f1089c;

        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onHideCustomView() {
            IX5WebChromeClient.CustomViewCallback customViewCallback = this.f1089c;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                this.f1089c = null;
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
            HGDDBrowseActivity.this.progressBar.setProgress(i2);
            if (i2 == 100) {
                HGDDBrowseActivity.this.progressBar.setVisibility(8);
            }
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onShowCustomView(View view, IX5WebChromeClient.CustomViewCallback customViewCallback) {
            WebView webView = HGDDBrowseActivity.this.webView;
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            viewGroup.removeView(webView);
            viewGroup.addView(view);
            this.a = view;
            this.b = webView;
            this.f1089c = customViewCallback;
        }
    }

    public static void l(HGDDBrowseActivity hGDDBrowseActivity, String str, String str2, String str3) {
        if (hGDDBrowseActivity != null) {
            View inflate = View.inflate(hGDDBrowseActivity, R.layout.dialog_update, null);
            AlertDialog create = new AlertDialog.Builder(hGDDBrowseActivity).setView(inflate).setCancelable(false).create();
            TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
            View findViewById = inflate.findViewById(R.id.view_divide);
            textView.setText(e.a("0P3Gjerg3Yn1"));
            textView.setOnClickListener(new c(hGDDBrowseActivity, create));
            findViewById.setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("093Cgurc"));
            ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("ZjNZ") + str3 + e.a("PWiG2sWXhpJJ") + str2 + e.a("PWiG+NuWpLOc2q4=") + str);
            create.show();
            return;
        }
        throw null;
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, HGDDBrowseActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_h5_hgdd;
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
        this.webView.loadUrl(f.e.a.k.b.b0);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.flProgress.getVisibility() == 0) {
            this.flProgress.setVisibility(8);
        } else if (this.webView.canGoBack()) {
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
}
