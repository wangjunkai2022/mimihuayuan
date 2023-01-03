package com.comeback.data.ui.ins;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class InsLaunchActivity_ViewBinding implements Unbinder {
    public InsLaunchActivity b;

    @UiThread
    public InsLaunchActivity_ViewBinding(InsLaunchActivity insLaunchActivity, View view) {
        this.b = insLaunchActivity;
        insLaunchActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        InsLaunchActivity insLaunchActivity = this.b;
        if (insLaunchActivity != null) {
            this.b = null;
            insLaunchActivity.webView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
