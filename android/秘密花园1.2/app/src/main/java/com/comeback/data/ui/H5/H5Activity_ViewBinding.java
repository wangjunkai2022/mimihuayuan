package com.comeback.data.ui.H5;

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
public class H5Activity_ViewBinding implements Unbinder {
    public H5Activity b;

    @UiThread
    public H5Activity_ViewBinding(H5Activity h5Activity, View view) {
        this.b = h5Activity;
        h5Activity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        h5Activity.progressBar = (ProgressBar) c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        H5Activity h5Activity = this.b;
        if (h5Activity != null) {
            this.b = null;
            h5Activity.webView = null;
            h5Activity.progressBar = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
