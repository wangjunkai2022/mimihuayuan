package com.comeback.data.ui.main;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class AppActivity_ViewBinding implements Unbinder {
    public AppActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1538c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ AppActivity f1539c;

        public a(AppActivity_ViewBinding appActivity_ViewBinding, AppActivity appActivity) {
            this.f1539c = appActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            AppActivity appActivity = this.f1539c;
            if (appActivity != null) {
                try {
                    appActivity.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(appActivity.b)));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            throw null;
        }
    }

    @UiThread
    public AppActivity_ViewBinding(AppActivity appActivity, View view) {
        this.b = appActivity;
        appActivity.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        View b = c.b(view, R.id.tv_jump, e.a("UQsGCA9THkcFLEEKCE1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
        appActivity.tvJump = (TextView) c.a(b, R.id.tv_jump, e.a("UQsGCA9THkcFLEEKCE0="), TextView.class);
        this.f1538c = b;
        b.setOnClickListener(new a(this, appActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AppActivity appActivity = this.b;
        if (appActivity != null) {
            this.b = null;
            appActivity.webView = null;
            appActivity.tvJump = null;
            this.f1538c.setOnClickListener(null);
            this.f1538c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
