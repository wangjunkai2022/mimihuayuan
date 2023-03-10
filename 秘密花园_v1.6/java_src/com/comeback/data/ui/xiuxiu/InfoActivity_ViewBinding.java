package com.comeback.data.ui.xiuxiu;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class InfoActivity_ViewBinding implements Unbinder {
    public InfoActivity b;

    @UiThread
    public InfoActivity_ViewBinding(InfoActivity infoActivity, View view) {
        this.b = infoActivity;
        infoActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        infoActivity.flLoad = (FrameLayout) c.c(view, R.id.fl_load, e.a("UQsGCA9THlUfKlsGHE0="), FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        InfoActivity infoActivity = this.b;
        if (infoActivity != null) {
            this.b = null;
            infoActivity.webView = null;
            infoActivity.flLoad = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
