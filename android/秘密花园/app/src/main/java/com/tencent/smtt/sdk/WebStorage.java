package com.tencent.smtt.sdk;

import java.util.Map;

/* loaded from: classes.dex */
public class WebStorage {
    public static WebStorage a;

    @Deprecated
    /* loaded from: classes.dex */
    public interface QuotaUpdater {
        void updateQuota(long j2);
    }

    public static synchronized WebStorage a() {
        WebStorage webStorage;
        synchronized (WebStorage.class) {
            if (a == null) {
                a = new WebStorage();
            }
            webStorage = a;
        }
        return webStorage;
    }

    public static WebStorage getInstance() {
        return a();
    }

    public void deleteAllData() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().deleteAllData();
        } else {
            a2.c().n();
        }
    }

    public void deleteOrigin(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().deleteOrigin(str);
        } else {
            a2.c().e(str);
        }
    }

    public void getOrigins(ValueCallback<Map> valueCallback) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().getOrigins(valueCallback);
        } else {
            a2.c().a(valueCallback);
        }
    }

    public void getQuotaForOrigin(String str, ValueCallback<Long> valueCallback) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().getQuotaForOrigin(str, valueCallback);
        } else {
            a2.c().b(str, valueCallback);
        }
    }

    public void getUsageForOrigin(String str, ValueCallback<Long> valueCallback) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().getUsageForOrigin(str, valueCallback);
        } else {
            a2.c().a(str, valueCallback);
        }
    }

    @Deprecated
    public void setQuotaForOrigin(String str, long j2) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.WebStorage.getInstance().setQuotaForOrigin(str, j2);
        } else {
            a2.c().a(str, j2);
        }
    }
}
