package com.comeback.data.ui.tv91.fragment;

import android.graphics.Bitmap;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;
/* loaded from: classes.dex */
public class NovelFragment extends BaseFragment {
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
            NovelFragment.this.progressBar.setVisibility(8);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            NovelFragment.this.progressBar.setVisibility(0);
        }

        @Override // com.tencent.smtt.sdk.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public class b extends WebChromeClient {
        public b() {
        }

        @Override // com.tencent.smtt.sdk.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            NovelFragment.this.progressBar.setProgress(i2);
            if (i2 == 100) {
                NovelFragment.this.progressBar.setVisibility(8);
            }
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_tv91_novel;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
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
        settings.setAppCacheMaxSize(RecyclerView.FOREVER_NS);
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        System.currentTimeMillis();
        this.webView.loadUrl(f.e.a.j.o0.i.b.f4017c);
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
