package com.comeback.data.ui.xhl;

import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class XHLBrowseActivity_ViewBinding implements Unbinder {
    public XHLBrowseActivity b;

    @UiThread
    public XHLBrowseActivity_ViewBinding(XHLBrowseActivity xHLBrowseActivity, View view) {
        this.b = xHLBrowseActivity;
        xHLBrowseActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        xHLBrowseActivity.progressBar = (ProgressBar) c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        XHLBrowseActivity xHLBrowseActivity = this.b;
        if (xHLBrowseActivity != null) {
            this.b = null;
            xHLBrowseActivity.webView = null;
            xHLBrowseActivity.progressBar = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
