package com.comeback.data.ui.hg;

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
public class HGBrowseActivity_ViewBinding implements Unbinder {
    public HGBrowseActivity b;

    @UiThread
    public HGBrowseActivity_ViewBinding(HGBrowseActivity hGBrowseActivity, View view) {
        this.b = hGBrowseActivity;
        hGBrowseActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        hGBrowseActivity.progressBar = (ProgressBar) c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HGBrowseActivity hGBrowseActivity = this.b;
        if (hGBrowseActivity != null) {
            this.b = null;
            hGBrowseActivity.webView = null;
            hGBrowseActivity.progressBar = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
