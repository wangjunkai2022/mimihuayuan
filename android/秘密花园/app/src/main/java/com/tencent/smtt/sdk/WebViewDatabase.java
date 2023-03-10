package com.tencent.smtt.sdk;

import android.content.Context;

/* loaded from: classes.dex */
public class WebViewDatabase {
    public static WebViewDatabase a;
    public Context b;

    public WebViewDatabase(Context context) {
        this.b = context;
    }

    public static synchronized WebViewDatabase a(Context context) {
        WebViewDatabase webViewDatabase;
        synchronized (WebViewDatabase.class) {
            if (a == null) {
                a = new WebViewDatabase(context);
            }
            webViewDatabase = a;
        }
        return webViewDatabase;
    }

    public static WebViewDatabase getInstance(Context context) {
        return a(context);
    }

    public void clearFormData() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebViewDatabase.getInstance(this.b).clearFormData();
        } else {
            a2.c().g(this.b);
        }
    }

    public void clearHttpAuthUsernamePassword() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebViewDatabase.getInstance(this.b).clearHttpAuthUsernamePassword();
        } else {
            a2.c().e(this.b);
        }
    }

    @Deprecated
    public void clearUsernamePassword() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebViewDatabase.getInstance(this.b).clearUsernamePassword();
        } else {
            a2.c().c(this.b);
        }
    }

    public boolean hasFormData() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.WebViewDatabase.getInstance(this.b).hasFormData();
        }
        return a2.c().f(this.b);
    }

    public boolean hasHttpAuthUsernamePassword() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.WebViewDatabase.getInstance(this.b).hasHttpAuthUsernamePassword();
        }
        return a2.c().d(this.b);
    }

    @Deprecated
    public boolean hasUsernamePassword() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.WebViewDatabase.getInstance(this.b).hasUsernamePassword();
        }
        return a2.c().b(this.b);
    }
}
