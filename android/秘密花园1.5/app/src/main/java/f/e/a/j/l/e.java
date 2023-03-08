package f.e.a.j.l;

import android.view.View;
import android.view.ViewGroup;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.tencent.smtt.export.external.interfaces.IX5WebChromeClient;
import com.tencent.smtt.export.external.interfaces.JsResult;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebView;

/* compiled from: FuLao2Launch2Activity.java */
/* loaded from: classes.dex */
public class e extends WebChromeClient {
    public View a;
    public View b;

    /* renamed from: c  reason: collision with root package name */
    public IX5WebChromeClient.CustomViewCallback f3972c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ FuLao2Launch2Activity f3973d;

    public e(FuLao2Launch2Activity fuLao2Launch2Activity) {
        this.f3973d = fuLao2Launch2Activity;
    }

    @Override // com.tencent.smtt.sdk.WebChromeClient
    public void onHideCustomView() {
        IX5WebChromeClient.CustomViewCallback customViewCallback = this.f3972c;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f3972c = null;
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
        WebView webView = this.f3973d.webView;
        ViewGroup viewGroup = (ViewGroup) webView.getParent();
        viewGroup.removeView(webView);
        viewGroup.addView(view);
        this.a = view;
        this.b = webView;
        this.f3972c = customViewCallback;
    }
}
