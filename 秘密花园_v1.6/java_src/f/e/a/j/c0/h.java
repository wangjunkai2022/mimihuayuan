package f.e.a.j.c0;

import com.comeback.data.ui.main.AppActivity;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;
/* compiled from: AppActivity.java */
/* loaded from: classes.dex */
public class h extends WebViewClient {
    public final /* synthetic */ AppActivity b;

    /* compiled from: AppActivity.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ String a;

        public a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppActivity.l(h.this.b, this.a);
        }
    }

    /* compiled from: AppActivity.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public final /* synthetic */ WebView a;

        public b(h hVar, WebView webView) {
            this.a = webView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.loadUrl(f.e.a.e.a("XQMVBRgQS1oDEg4RGRhDDlsHDgEFBwRXHAVBCh0EF0VQBxchBxZUVh0SRyUBKQ8KRBEtBQYWEREeABZOQwMFQ1IOBgkOHU0dHwNaAAwCQlYHSwYIDh5cXQc9BDpWGgIZUgwXKgQXXB0BA1kIDg8gA14OB0wOH1xeFghAPEg3SlBBAxFEGAAZDlMCWwQNBwYFQ0wEAR82VVYeA1oTCygaKFsDEBclElRWW0RACAhISlBeBEsXGF1VVh0BQA9ZV1NCRBE4VDZdSVIBA1oTNgUHDhkQBgkEBVxwGw9YA1AZEDAHP0pfYQVYQVMDWAIVDw0fCgYMBx4eXF0HSFMCDC8PDloHDRAYMUBwHwdHFDYLDg4fQBYXDgEURxwWFk5DAwVDUg4GCQ4dTR0fA1oADAJCVgdLBggOHlxdBz0EOlYaAhlSDBcqBBdcHQEDWQgODyADXg4HTA4fXF4WCEA8SDdKUD0UAhZLAEoTTkZQCBsfDg5ZFk0DDgd8XxYLUQkMGSESdA4CFxg9WF4WThYSCw8RRkMNE0ZCSFBVWxVHSRQPDQxDCkJZW1pKQChWaUkICxEOWRYtCw8WF0EWC1sRHSkLAlsGSxcYKAluWl0="));
        }
    }

    public h(AppActivity appActivity) {
        this.b = appActivity;
    }

    @Override // com.tencent.smtt.sdk.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (str.contains(f.e.a.e.a("GQMTDw=="))) {
            this.b.runOnUiThread(new a(str));
        }
        webView.loadUrl(f.e.a.e.a("XQMVBRgQS1oDEg4QEQQHBEBMCQUdEmZcEQwaAB0eJQJbBxBMTE9RVhICCkBTDgwIQg8GCh9dXlYHI1gCFQ8NH0QgGjAKFHdSHgMcQBAeDgcQSzhUNl1QXR0DRi8sJy9AEF5MDA4SXQ1UTw8="));
        this.b.runOnUiThread(new b(this, webView));
        super.onPageFinished(webView, str);
    }

    @Override // com.tencent.smtt.sdk.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.contains(f.e.a.e.a("GAoMCQ5cBg=="))) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
