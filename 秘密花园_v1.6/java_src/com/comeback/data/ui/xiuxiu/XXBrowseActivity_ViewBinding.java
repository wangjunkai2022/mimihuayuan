package com.comeback.data.ui.xiuxiu;

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
public class XXBrowseActivity_ViewBinding implements Unbinder {
    public XXBrowseActivity b;

    @UiThread
    public XXBrowseActivity_ViewBinding(XXBrowseActivity xXBrowseActivity, View view) {
        this.b = xXBrowseActivity;
        xXBrowseActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        xXBrowseActivity.progressBar = (ProgressBar) c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        XXBrowseActivity xXBrowseActivity = this.b;
        if (xXBrowseActivity != null) {
            this.b = null;
            xXBrowseActivity.webView = null;
            xXBrowseActivity.progressBar = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
