package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.sdk.TbsLogReport;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.k;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class CookieManager {
    public static String LOGTAG = "CookieManager";

    /* renamed from: d  reason: collision with root package name */
    public static CookieManager f2394d;
    public CopyOnWriteArrayList<b> a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public a f2395c = a.MODE_NONE;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2396e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2397f = false;

    /* loaded from: classes.dex */
    public enum a {
        MODE_NONE,
        MODE_KEYS,
        MODE_ALL
    }

    /* loaded from: classes.dex */
    public class b {
        public int a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f2400c;

        /* renamed from: d  reason: collision with root package name */
        public ValueCallback<Boolean> f2401d;

        public b() {
        }
    }

    public static CookieManager getInstance() {
        if (f2394d == null) {
            synchronized (CookieManager.class) {
                if (f2394d == null) {
                    f2394d = new CookieManager();
                }
            }
        }
        return f2394d;
    }

    public static int getROMCookieDBVersion(Context context) {
        return context.getSharedPreferences("cookiedb_info", 4).getInt("db_version", -1);
    }

    public static void setROMCookieDBVersion(Context context, int i2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("cookiedb_info", 4).edit();
        edit.putInt("db_version", i2);
        edit.commit();
    }

    public synchronized void a() {
        this.f2397f = true;
        if (!(this.a == null || this.a.size() == 0)) {
            t a2 = t.a();
            if (a2 == null || !a2.b()) {
                Iterator<b> it = this.a.iterator();
                while (it.hasNext()) {
                    b next = it.next();
                    int i2 = next.a;
                    if (i2 == 1) {
                        k.a(android.webkit.CookieManager.getInstance(), "setCookie", new Class[]{String.class, String.class, ValueCallback.class}, next.b, next.f2400c, next.f2401d);
                    } else if (i2 == 2) {
                        android.webkit.CookieManager.getInstance().setCookie(next.b, next.f2400c);
                    }
                }
            } else {
                Iterator<b> it2 = this.a.iterator();
                while (it2.hasNext()) {
                    b next2 = it2.next();
                    int i3 = next2.a;
                    if (i3 == 1) {
                        setCookie(next2.b, next2.f2400c, next2.f2401d);
                    } else if (i3 == 2) {
                        setCookie(next2.b, next2.f2400c);
                    }
                }
            }
            this.a.clear();
        }
    }

    public boolean acceptCookie() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.CookieManager.getInstance().acceptCookie();
        }
        return a2.c().d();
    }

    public synchronized boolean acceptThirdPartyCookies(WebView webView) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            Object a3 = k.a(android.webkit.CookieManager.getInstance(), "acceptThirdPartyCookies", new Class[]{WebView.class}, webView.getView());
            if (a3 == null) {
                return false;
            }
            return ((Boolean) a3).booleanValue();
        }
        Object invokeStaticMethod = a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_acceptThirdPartyCookies", new Class[]{Object.class}, webView.getView());
        if (invokeStaticMethod == null) {
            return true;
        }
        return ((Boolean) invokeStaticMethod).booleanValue();
    }

    public void flush() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            k.a(android.webkit.CookieManager.getInstance(), "flush", new Class[0], new Object[0]);
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_flush", new Class[0], new Object[0]);
        }
    }

    public String getCookie(String str) {
        t a2 = t.a();
        if (a2 != null && a2.b()) {
            return a2.c().a(str);
        }
        try {
            return android.webkit.CookieManager.getInstance().getCookie(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public boolean hasCookies() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.CookieManager.getInstance().hasCookies();
        }
        return a2.c().h();
    }

    public void removeAllCookie() {
        CopyOnWriteArrayList<b> copyOnWriteArrayList = this.a;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.CookieManager.getInstance().removeAllCookie();
        } else {
            a2.c().e();
        }
    }

    public void removeAllCookies(ValueCallback<Boolean> valueCallback) {
        CopyOnWriteArrayList<b> copyOnWriteArrayList = this.a;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            k.a(android.webkit.CookieManager.getInstance(), "removeAllCookies", new Class[]{ValueCallback.class}, valueCallback);
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_removeAllCookies", new Class[]{ValueCallback.class}, valueCallback);
        }
    }

    public void removeExpiredCookie() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.CookieManager.getInstance().removeExpiredCookie();
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_removeExpiredCookie", new Class[0], new Object[0]);
        }
    }

    public void removeSessionCookie() {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.CookieManager.getInstance().removeSessionCookie();
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_removeSessionCookie", new Class[0], new Object[0]);
        }
    }

    public void removeSessionCookies(ValueCallback<Boolean> valueCallback) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            k.a(android.webkit.CookieManager.getInstance(), "removeSessionCookies", new Class[]{ValueCallback.class}, valueCallback);
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_removeSessionCookies", new Class[]{ValueCallback.class}, valueCallback);
        }
    }

    public synchronized void setAcceptCookie(boolean z) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            android.webkit.CookieManager.getInstance().setAcceptCookie(z);
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_setAcceptCookie", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        }
    }

    public synchronized void setAcceptThirdPartyCookies(WebView webView, boolean z) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            k.a(android.webkit.CookieManager.getInstance(), "setAcceptThirdPartyCookies", new Class[]{WebView.class, Boolean.TYPE}, webView.getView(), Boolean.valueOf(z));
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_setAcceptThirdPartyCookies", new Class[]{Object.class, Boolean.TYPE}, webView.getView(), Boolean.valueOf(z));
        }
    }

    public synchronized void setCookie(String str, String str2) {
        setCookie(str, str2, false);
    }

    public boolean setCookieCompatialbeMode(Context context, a aVar, String str, boolean z) {
        System.currentTimeMillis();
        if (context == null || !TbsExtensionFunctionManager.getInstance().canUseFunction(context, TbsExtensionFunctionManager.COOKIE_SWITCH_FILE_NAME)) {
            return false;
        }
        this.f2395c = aVar;
        if (str != null) {
            this.b = str;
        }
        if (this.f2395c == a.MODE_NONE || !z || t.a().d()) {
            return true;
        }
        t.a().a(context);
        return true;
    }

    public void setCookies(Map<String, String[]> map) {
        t a2 = t.a();
        if (!((a2 == null || !a2.b()) ? false : a2.c().a(map))) {
            for (String str : map.keySet()) {
                for (String str2 : map.get(str)) {
                    setCookie(str, str2);
                }
            }
        }
    }

    public synchronized void setCookie(String str, String str2, boolean z) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            if (this.f2397f || z) {
                android.webkit.CookieManager.getInstance().setCookie(str, str2);
            }
            if (!t.a().d()) {
                b bVar = new b();
                bVar.a = 2;
                bVar.b = str;
                bVar.f2400c = str2;
                bVar.f2401d = null;
                if (this.a == null) {
                    this.a = new CopyOnWriteArrayList<>();
                }
                this.a.add(bVar);
            }
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_setCookie", new Class[]{String.class, String.class}, str, str2);
        }
    }

    public synchronized void a(Context context, boolean z, boolean z2) {
        int i2;
        int i3;
        if (this.f2395c != a.MODE_NONE && context != null && TbsExtensionFunctionManager.getInstance().canUseFunction(context, TbsExtensionFunctionManager.COOKIE_SWITCH_FILE_NAME) && !this.f2396e) {
            long currentTimeMillis = System.currentTimeMillis();
            long j2 = 0;
            String str = LOGTAG;
            TbsLog.i(str, "compatiableCookieDatabaseIfNeed,isX5Inited:" + z + ",useX5:" + z2);
            if (!z && !QbSdk.getIsSysWebViewForcedByOuter() && !QbSdk.a) {
                t.a().a(context);
                return;
            }
            int i4 = 0;
            r4 = false;
            r4 = false;
            boolean z3 = false;
            if (QbSdk.getIsSysWebViewForcedByOuter() || QbSdk.a) {
                z2 = false;
            }
            boolean canUseFunction = TbsExtensionFunctionManager.getInstance().canUseFunction(context, TbsExtensionFunctionManager.USEX5_FILE_NAME);
            String str2 = LOGTAG;
            TbsLog.i(str2, "usex5 : mUseX5LastProcess->" + canUseFunction + ",useX5:" + z2);
            TbsExtensionFunctionManager.getInstance().setFunctionEnable(context, TbsExtensionFunctionManager.USEX5_FILE_NAME, z2);
            if (canUseFunction != z2) {
                TbsLogReport.TbsLogInfo tbsLogInfo = TbsLogReport.getInstance(context).tbsLogInfo();
                if (TextUtils.isEmpty(this.b)) {
                    tbsLogInfo.setErrorCode(701);
                    i2 = 0;
                } else if (l.a().i(context) <= 0 || l.a().i(context) >= 36001) {
                    if (canUseFunction) {
                        i3 = h.d(context);
                        if (i3 > 0) {
                            i2 = getROMCookieDBVersion(context);
                            if (i2 <= 0) {
                                z3 = true;
                            }
                        }
                        i2 = 0;
                    } else {
                        i3 = h.d(context);
                        if (i3 > 0) {
                            String d2 = l.a().d(context, "cookies_database_version");
                            if (!TextUtils.isEmpty(d2)) {
                                try {
                                    i2 = Integer.parseInt(d2);
                                } catch (Exception unused) {
                                }
                            }
                        }
                        i2 = 0;
                    }
                    if (!z3 && (i3 <= 0 || i2 <= 0)) {
                        tbsLogInfo.setErrorCode(702);
                    } else if (i2 >= i3) {
                        tbsLogInfo.setErrorCode(703);
                    } else {
                        h.a(context, this.f2395c, this.b, z3, z2);
                        tbsLogInfo.setErrorCode(TbsListener.ErrorCode.INFO_COOKIE_SWITCH_TRANSFER);
                        j2 = System.currentTimeMillis() - currentTimeMillis;
                    }
                    i4 = i3;
                } else {
                    return;
                }
                tbsLogInfo.setFailDetail("x5->sys:" + canUseFunction + " from:" + i4 + " to:" + i2 + ",timeused:" + j2);
                TbsLogReport.getInstance(context).eventReport(TbsLogReport.EventType.TYPE_COOKIE_DB_SWITCH, tbsLogInfo);
            }
        }
    }

    public synchronized void setCookie(String str, String str2, ValueCallback<Boolean> valueCallback) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            if (!t.a().d()) {
                b bVar = new b();
                bVar.a = 1;
                bVar.b = str;
                bVar.f2400c = str2;
                bVar.f2401d = valueCallback;
                if (this.a == null) {
                    this.a = new CopyOnWriteArrayList<>();
                }
                this.a.add(bVar);
            }
            if (this.f2397f) {
                k.a(android.webkit.CookieManager.getInstance(), "setCookie", new Class[]{String.class, String.class, ValueCallback.class}, str, str2, valueCallback);
            }
        } else {
            a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "cookieManager_setCookie", new Class[]{String.class, String.class, ValueCallback.class}, str, str2, valueCallback);
        }
    }
}
