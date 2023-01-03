package f.e.a.j.o0;

import com.comeback.data.ui.xhl.InfoActivity;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;

/* compiled from: InfoActivity.java */
/* loaded from: classes.dex */
public class a extends WebViewClient {
    public a(InfoActivity infoActivity) {
    }

    @Override // com.tencent.smtt.sdk.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return true;
    }
}
