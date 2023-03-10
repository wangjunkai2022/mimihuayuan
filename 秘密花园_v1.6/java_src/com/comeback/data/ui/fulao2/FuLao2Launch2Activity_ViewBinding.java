package com.comeback.data.ui.fulao2;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class FuLao2Launch2Activity_ViewBinding implements Unbinder {
    public FuLao2Launch2Activity b;

    @UiThread
    public FuLao2Launch2Activity_ViewBinding(FuLao2Launch2Activity fuLao2Launch2Activity, View view) {
        this.b = fuLao2Launch2Activity;
        fuLao2Launch2Activity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        FuLao2Launch2Activity fuLao2Launch2Activity = this.b;
        if (fuLao2Launch2Activity != null) {
            this.b = null;
            fuLao2Launch2Activity.webView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
