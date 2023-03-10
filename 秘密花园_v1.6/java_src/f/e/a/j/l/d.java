package f.e.a.j.l;

import android.os.Bundle;
import android.view.KeyEvent;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
import com.tencent.smtt.export.external.interfaces.WebResourceResponse;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;
/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class d extends WebViewClient {
    public final /* synthetic */ FuLao2Launch2Activity b;

    /* compiled from: FuLao2Launch2Activity.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FuLao2Launch2Activity.l(d.this.b);
        }
    }

    public d(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.b = fuLao2Launch2Activity;
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
        webView.loadUrl(str, this.b.f779d);
        return true;
    }

    @Override // com.tencent.smtt.sdk.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        webResourceRequest.getRequestHeaders().put(f.e.a.e.a("T08FCxkEWEEXA1BKHgUR"), this.b.f778c);
        String uri = webResourceRequest.getUrl().toString();
        if (uri.contains(f.e.a.e.a("GBAGAwIATVYBSUAIEw8N"))) {
            f.e.a.e.a("RQcEDRgHXEEmFFg=");
            f.e.a.k.f.b();
            this.b.f780e = uri.split(f.e.a.e.a("XwMQDFY="))[1];
            if (this.b.f780e.contains(f.e.a.e.a("EQ=="))) {
                FuLao2Launch2Activity fuLao2Launch2Activity = this.b;
                fuLao2Launch2Activity.f780e = fuLao2Launch2Activity.f780e.split(f.e.a.e.a("EQ=="))[0];
            }
            this.b.f781f = uri.split(f.e.a.e.a("a10="))[1];
            this.b.runOnUiThread(new a());
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
