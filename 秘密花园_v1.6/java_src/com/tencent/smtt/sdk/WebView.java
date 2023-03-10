package com.tencent.smtt.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.net.http.SslCertificate;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.tencent.smtt.export.external.TbsCoreSettings;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebChromeClientExtension;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebSettingsExtension;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebViewClientExtension;
import com.tencent.smtt.export.external.extension.interfaces.IX5WebViewExtension;
import com.tencent.smtt.export.external.extension.proxy.X5ProxyWebViewClientExtension;
import com.tencent.smtt.export.external.interfaces.IX5WebViewBase;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.utils.TbsLog;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileLock;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class WebView extends FrameLayout implements View.OnLongClickListener {
    public static final int GETPVERROR = -1;
    public static final int NIGHT_MODE_COLOR = -16777216;
    public static final int NORMAL_MODE_ALPHA = 255;
    public static final String SCHEME_GEO = "geo:0,0?q=";
    public static final String SCHEME_MAILTO = "mailto:";
    public static final String SCHEME_TEL = "tel:";
    public int a;
    public final String b;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2584e;

    /* renamed from: f  reason: collision with root package name */
    public IX5WebViewBase f2585f;

    /* renamed from: g  reason: collision with root package name */
    public a f2586g;

    /* renamed from: h  reason: collision with root package name */
    public WebSettings f2587h;

    /* renamed from: i  reason: collision with root package name */
    public Context f2588i;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2589k;
    public WebViewCallbackClient mWebViewCallbackClient;
    public WebViewClient n;
    public WebChromeClient o;
    public final int q;
    public final int r;
    public final int s;
    public final String t;
    public final String u;
    public Object x;
    public View.OnLongClickListener y;

    /* renamed from: c  reason: collision with root package name */
    public static final Lock f2579c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    public static OutputStream f2580d = null;

    /* renamed from: j  reason: collision with root package name */
    public static Context f2581j = null;
    public static boolean mWebViewCreated = false;

    /* renamed from: l  reason: collision with root package name */
    public static com.tencent.smtt.utils.o f2582l = null;

    /* renamed from: m  reason: collision with root package name */
    public static Method f2583m = null;
    public static String p = null;
    public static boolean mSysWebviewCreated = false;
    public static Paint v = null;
    public static boolean w = true;
    public static int NIGHT_MODE_ALPHA = 153;

    /* loaded from: classes.dex */
    public interface PictureListener {
        void onNewPicture(WebView webView, Picture picture);
    }

    /* loaded from: classes.dex */
    public class WebViewTransport {
        public WebView b;

        public WebViewTransport() {
        }

        public synchronized WebView getWebView() {
            return this.b;
        }

        public synchronized void setWebView(WebView webView) {
            this.b = webView;
        }
    }

    /* loaded from: classes.dex */
    public class a extends android.webkit.WebView {
        public a(WebView webView, Context context) {
            this(context, null);
        }

        public void a(int i2, int i3, int i4, int i5) {
            super.onScrollChanged(i2, i3, i4, i5);
        }

        public boolean b(MotionEvent motionEvent) {
            return super.dispatchTouchEvent(motionEvent);
        }

        public boolean c(MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.webkit.WebView, android.view.View
        public void computeScroll() {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                webViewCallbackClient.computeScroll(this);
            } else {
                super.computeScroll();
            }
        }

        @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            try {
                super.dispatchDraw(canvas);
                if (WebView.w || WebView.v == null) {
                    return;
                }
                canvas.save();
                canvas.drawPaint(WebView.v);
                canvas.restore();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                return webViewCallbackClient.dispatchTouchEvent(motionEvent, this);
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.webkit.WebView
        public android.webkit.WebSettings getSettings() {
            try {
                return super.getSettings();
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                webViewCallbackClient.invalidate();
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                return webViewCallbackClient.onInterceptTouchEvent(motionEvent, this);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.webkit.WebView, android.view.View
        @TargetApi(9)
        public void onOverScrolled(int i2, int i3, boolean z, boolean z2) {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                webViewCallbackClient.onOverScrolled(i2, i3, z, z2, this);
            } else {
                super.onOverScrolled(i2, i3, z, z2);
            }
        }

        @Override // android.webkit.WebView, android.view.View
        public void onScrollChanged(int i2, int i3, int i4, int i5) {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                webViewCallbackClient.onScrollChanged(i2, i3, i4, i5, this);
                return;
            }
            super.onScrollChanged(i2, i3, i4, i5);
            WebView.this.onScrollChanged(i2, i3, i4, i5);
        }

        @Override // android.webkit.WebView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!hasFocus()) {
                requestFocus();
            }
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                return webViewCallbackClient.onTouchEvent(motionEvent, this);
            }
            try {
                return super.onTouchEvent(motionEvent);
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @Override // android.view.View
        @TargetApi(9)
        public boolean overScrollBy(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z) {
            WebViewCallbackClient webViewCallbackClient = WebView.this.mWebViewCallbackClient;
            if (webViewCallbackClient != null) {
                return webViewCallbackClient.overScrollBy(i2, i3, i4, i5, i6, i7, i8, i9, z, this);
            }
            return super.overScrollBy(i2, i3, i4, i5, i6, i7, i8, i9, z);
        }

        @Override // android.webkit.WebView, android.view.View
        public void setOverScrollMode(int i2) {
            try {
                super.setOverScrollMode(i2);
            } catch (Exception unused) {
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            if (QbSdk.getIsSysWebViewForcedByOuter() && TbsShareManager.isThirdPartyApp(context)) {
                return;
            }
            CookieSyncManager.createInstance(WebView.this.f2588i).startSync();
            try {
                Method declaredMethod = Class.forName("android.webkit.WebViewWorker").getDeclaredMethod("getHandler", new Class[0]);
                declaredMethod.setAccessible(true);
                ((Handler) declaredMethod.invoke(null, new Object[0])).getLooper().getThread().setUncaughtExceptionHandler(new e());
                WebView.mSysWebviewCreated = true;
            } catch (Exception unused) {
            }
        }

        public void a() {
            super.computeScroll();
        }

        public boolean a(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        @TargetApi(9)
        public boolean a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z) {
            return super.overScrollBy(i2, i3, i4, i5, i6, i7, i8, i9, z);
        }

        @TargetApi(9)
        public void a(int i2, int i3, boolean z, boolean z2) {
            super.onOverScrolled(i2, i3, z, z2);
        }
    }

    public WebView(Context context, boolean z) {
        super(context);
        this.b = "WebView";
        this.f2584e = false;
        this.f2587h = null;
        this.f2588i = null;
        this.a = 0;
        this.f2589k = false;
        this.n = null;
        this.o = null;
        this.q = 1;
        this.r = 2;
        this.s = 3;
        this.t = "javascript:document.getElementsByTagName('HEAD').item(0).removeChild(document.getElementById('QQBrowserSDKNightMode'));";
        this.u = "javascript:var style = document.createElement('style');style.type='text/css';style.id='QQBrowserSDKNightMode';style.innerHTML='html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}';document.getElementsByTagName('HEAD').item(0).appendChild(style);";
        this.x = null;
        this.y = null;
    }

    private void c(Context context) {
        if (QbSdk.f2492i && TbsShareManager.isThirdPartyApp(context)) {
            TbsExtensionFunctionManager.getInstance().initTbsBuglyIfNeed(context);
        }
        t a2 = t.a();
        a2.a(context);
        this.f2584e = a2.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.String] */
    private int d(Context context) {
        FileLock a2;
        FileInputStream fileInputStream;
        StringBuilder sb;
        FileOutputStream b = com.tencent.smtt.utils.f.b(context, true, "tbslock.txt");
        if (b == null || (a2 = com.tencent.smtt.utils.f.a(context, b)) == null) {
            return -1;
        }
        if (f2579c.tryLock()) {
            FileInputStream fileInputStream2 = null;
            fileInputStream2 = null;
            FileInputStream fileInputStream3 = null;
            try {
                try {
                    File dir = context.getDir("tbs", 0);
                    File file = new File(dir + File.separator + "core_private", "pv.db");
                    if (file.exists()) {
                        Properties properties = new Properties();
                        fileInputStream = new FileInputStream(file);
                        try {
                            properties.load(fileInputStream);
                            fileInputStream.close();
                            ?? r5 = "PV";
                            String property = properties.getProperty("PV");
                            if (property == null) {
                                try {
                                    fileInputStream.close();
                                    fileInputStream2 = r5;
                                } catch (IOException e2) {
                                    e = e2;
                                    sb = new StringBuilder();
                                    sb.append("TbsInstaller--getTbsCorePV IOException=");
                                    sb.append(e.toString());
                                    TbsLog.e("getTbsCorePV", sb.toString());
                                    f2579c.unlock();
                                    com.tencent.smtt.utils.f.a(a2, b);
                                    return -1;
                                }
                            } else {
                                int parseInt = Integer.parseInt(property);
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    StringBuilder o = f.b.a.a.a.o("TbsInstaller--getTbsCorePV IOException=");
                                    o.append(e3.toString());
                                    TbsLog.e("getTbsCorePV", o.toString());
                                }
                                f2579c.unlock();
                                com.tencent.smtt.utils.f.a(a2, b);
                                return parseInt;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            fileInputStream3 = fileInputStream;
                            TbsLog.e("getTbsCorePV", "TbsInstaller--getTbsCorePV Exception=" + e.toString());
                            fileInputStream2 = fileInputStream3;
                            if (fileInputStream3 != null) {
                                try {
                                    fileInputStream3.close();
                                    fileInputStream2 = fileInputStream3;
                                } catch (IOException e5) {
                                    e = e5;
                                    sb = new StringBuilder();
                                    sb.append("TbsInstaller--getTbsCorePV IOException=");
                                    sb.append(e.toString());
                                    TbsLog.e("getTbsCorePV", sb.toString());
                                    f2579c.unlock();
                                    com.tencent.smtt.utils.f.a(a2, b);
                                    return -1;
                                }
                            }
                            f2579c.unlock();
                            com.tencent.smtt.utils.f.a(a2, b);
                            return -1;
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e6) {
                                    StringBuilder o2 = f.b.a.a.a.o("TbsInstaller--getTbsCorePV IOException=");
                                    o2.append(e6.toString());
                                    TbsLog.e("getTbsCorePV", o2.toString());
                                }
                            }
                            f2579c.unlock();
                            com.tencent.smtt.utils.f.a(a2, b);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception e7) {
                e = e7;
            }
            f2579c.unlock();
            com.tencent.smtt.utils.f.a(a2, b);
            return -1;
        }
        com.tencent.smtt.utils.f.a(a2, b);
        return -1;
    }

    @Deprecated
    public static void disablePlatformNotifications() {
        if (t.a().b()) {
            return;
        }
        com.tencent.smtt.utils.k.a("android.webkit.WebView", "disablePlatformNotifications");
    }

    @Deprecated
    public static void enablePlatformNotifications() {
        if (t.a().b()) {
            return;
        }
        com.tencent.smtt.utils.k.a("android.webkit.WebView", "enablePlatformNotifications");
    }

    public static String findAddress(String str) {
        if (t.a().b()) {
            return null;
        }
        return android.webkit.WebView.findAddress(str);
    }

    public static String getCrashExtraMessage(Context context) {
        Map<String, Object> map;
        if (context == null) {
            return "";
        }
        StringBuilder o = f.b.a.a.a.o("tbs_core_version:");
        o.append(QbSdk.getTbsVersionForCrash(context));
        o.append(";");
        o.append("tbs_sdk_version:");
        o.append(43697);
        o.append(";");
        String sb = o.toString();
        boolean z = false;
        if (TbsConfig.APP_WX.equals(context.getApplicationInfo().packageName)) {
            try {
                Class.forName("de.robv.android.xposed.XposedBridge");
                z = true;
            } catch (ClassNotFoundException unused) {
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (z) {
            return f.b.a.a.a.f(sb, "isXposed=true;");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(d.a(true).e());
        sb2.append(com.umeng.commonsdk.internal.utils.g.a);
        sb2.append(sb);
        if (!TbsShareManager.isThirdPartyApp(context) && (map = QbSdk.n) != null && map.containsKey(TbsCoreSettings.TBS_SETTINGS_WEAPP_ID_KEY) && QbSdk.n.containsKey(TbsCoreSettings.TBS_SETTINGS_WEAPP_NAME_KEY)) {
            StringBuilder o2 = f.b.a.a.a.o("weapp_id:");
            o2.append(QbSdk.n.get(TbsCoreSettings.TBS_SETTINGS_WEAPP_ID_KEY));
            o2.append(";");
            o2.append(TbsCoreSettings.TBS_SETTINGS_WEAPP_NAME_KEY);
            o2.append(":");
            o2.append(QbSdk.n.get(TbsCoreSettings.TBS_SETTINGS_WEAPP_NAME_KEY));
            o2.append(";");
            String sb3 = o2.toString();
            sb2.append(com.umeng.commonsdk.internal.utils.g.a);
            sb2.append(sb3);
        }
        if (sb2.length() > 8192) {
            return sb2.substring(sb2.length() - 8192);
        }
        return sb2.toString();
    }

    public static PackageInfo getCurrentWebViewPackage() {
        if (t.a().b() || Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            return (PackageInfo) com.tencent.smtt.utils.k.a("android.webkit.WebView", "getCurrentWebViewPackage");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Deprecated
    public static synchronized Object getPluginList() {
        synchronized (WebView.class) {
            if (t.a().b()) {
                return null;
            }
            return com.tencent.smtt.utils.k.a("android.webkit.WebView", "getPluginList");
        }
    }

    public static int getTbsCoreVersion(Context context) {
        return QbSdk.getTbsVersion(context);
    }

    public static boolean getTbsNeedReboot() {
        d();
        return d.a(true).f();
    }

    public static int getTbsSDKVersion(Context context) {
        return 43697;
    }

    private long h() {
        long j2;
        synchronized (QbSdk.f2491h) {
            if (QbSdk.f2488e) {
                QbSdk.f2490g = (System.currentTimeMillis() - QbSdk.f2489f) + QbSdk.f2490g;
                TbsLog.d("sdkreport", "pv report, WebView.getWifiConnectedTime QbSdk.sWifiConnectedTime=" + QbSdk.f2490g);
            }
            j2 = QbSdk.f2490g / 1000;
            QbSdk.f2490g = 0L;
            QbSdk.f2489f = System.currentTimeMillis();
        }
        return j2;
    }

    public static synchronized void setSysDayOrNight(boolean z) {
        synchronized (WebView.class) {
            if (z == w) {
                return;
            }
            w = z;
            if (v == null) {
                Paint paint = new Paint();
                v = paint;
                paint.setColor(-16777216);
            }
            if (!z) {
                if (v.getAlpha() != NIGHT_MODE_ALPHA) {
                    v.setAlpha(NIGHT_MODE_ALPHA);
                }
            } else if (v.getAlpha() != 255) {
                v.setAlpha(255);
            }
        }
    }

    public static void setWebContentsDebuggingEnabled(boolean z) {
        t a2 = t.a();
        if (a2 != null && a2.b()) {
            a2.c().a(z);
            return;
        }
        try {
            Method declaredMethod = Class.forName("android.webkit.WebView").getDeclaredMethod("setWebContentsDebuggingEnabled", Boolean.TYPE);
            f2583m = declaredMethod;
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                f2583m.invoke(null, Boolean.valueOf(z));
            }
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("Exception:");
            o.append(e2.getStackTrace());
            TbsLog.e("QbSdk", o.toString());
            e2.printStackTrace();
        }
    }

    public void a(android.webkit.WebView webView) {
    }

    public void addJavascriptInterface(Object obj, String str) {
        if (!this.f2584e) {
            this.f2586g.addJavascriptInterface(obj, str);
        } else {
            this.f2585f.addJavascriptInterface(obj, str);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (!this.f2584e) {
            this.f2586g.addView(view);
            return;
        }
        View view2 = this.f2585f.getView();
        try {
            Method a2 = com.tencent.smtt.utils.k.a(view2, "addView", View.class);
            a2.setAccessible(true);
            a2.invoke(view2, view);
        } catch (Throwable unused) {
        }
    }

    public boolean canGoBack() {
        if (!this.f2584e) {
            return this.f2586g.canGoBack();
        }
        return this.f2585f.canGoBack();
    }

    public boolean canGoBackOrForward(int i2) {
        if (!this.f2584e) {
            return this.f2586g.canGoBackOrForward(i2);
        }
        return this.f2585f.canGoBackOrForward(i2);
    }

    public boolean canGoForward() {
        if (!this.f2584e) {
            return this.f2586g.canGoForward();
        }
        return this.f2585f.canGoForward();
    }

    @Deprecated
    public boolean canZoomIn() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "canZoomIn");
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        }
        return this.f2585f.canZoomIn();
    }

    @Deprecated
    public boolean canZoomOut() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "canZoomOut");
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        }
        return this.f2585f.canZoomOut();
    }

    @Deprecated
    public Picture capturePicture() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "capturePicture");
            if (a2 == null) {
                return null;
            }
            return (Picture) a2;
        }
        return this.f2585f.capturePicture();
    }

    public void clearCache(boolean z) {
        if (!this.f2584e) {
            this.f2586g.clearCache(z);
        } else {
            this.f2585f.clearCache(z);
        }
    }

    public void clearFormData() {
        if (!this.f2584e) {
            this.f2586g.clearFormData();
        } else {
            this.f2585f.clearFormData();
        }
    }

    public void clearHistory() {
        if (!this.f2584e) {
            this.f2586g.clearHistory();
        } else {
            this.f2585f.clearHistory();
        }
    }

    @TargetApi(3)
    public void clearMatches() {
        if (!this.f2584e) {
            this.f2586g.clearMatches();
        } else {
            this.f2585f.clearMatches();
        }
    }

    public void clearSslPreferences() {
        if (!this.f2584e) {
            this.f2586g.clearSslPreferences();
        } else {
            this.f2585f.clearSslPreferences();
        }
    }

    @Deprecated
    public void clearView() {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "clearView");
        } else {
            this.f2585f.clearView();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        try {
            if (this.f2584e) {
                Method a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeHorizontalScrollExtent", new Class[0]);
                a2.setAccessible(true);
                return ((Integer) a2.invoke(this.f2585f.getView(), new Object[0])).intValue();
            }
            Method a3 = com.tencent.smtt.utils.k.a(this.f2586g, "computeHorizontalScrollExtent", new Class[0]);
            a3.setAccessible(true);
            return ((Integer) a3.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        try {
            if (this.f2584e) {
                Method a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeHorizontalScrollOffset", new Class[0]);
                a2.setAccessible(true);
                return ((Integer) a2.invoke(this.f2585f.getView(), new Object[0])).intValue();
            }
            Method a3 = com.tencent.smtt.utils.k.a(this.f2586g, "computeHorizontalScrollOffset", new Class[0]);
            a3.setAccessible(true);
            return ((Integer) a3.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        try {
            if (this.f2584e) {
                return ((Integer) com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeHorizontalScrollRange", new Class[0], new Object[0])).intValue();
            }
            Method a2 = com.tencent.smtt.utils.k.a(this.f2586g, "computeHorizontalScrollRange", new Class[0]);
            a2.setAccessible(true);
            return ((Integer) a2.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f2584e) {
            this.f2586g.computeScroll();
        } else {
            this.f2585f.computeScroll();
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        try {
            if (this.f2584e) {
                Method a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeVerticalScrollExtent", new Class[0]);
                a2.setAccessible(true);
                return ((Integer) a2.invoke(this.f2585f.getView(), new Object[0])).intValue();
            }
            Method a3 = com.tencent.smtt.utils.k.a(this.f2586g, "computeVerticalScrollExtent", new Class[0]);
            a3.setAccessible(true);
            return ((Integer) a3.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        try {
            if (this.f2584e) {
                Method a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeVerticalScrollOffset", new Class[0]);
                a2.setAccessible(true);
                return ((Integer) a2.invoke(this.f2585f.getView(), new Object[0])).intValue();
            }
            Method a3 = com.tencent.smtt.utils.k.a(this.f2586g, "computeVerticalScrollOffset", new Class[0]);
            a3.setAccessible(true);
            return ((Integer) a3.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        try {
            if (this.f2584e) {
                return ((Integer) com.tencent.smtt.utils.k.a(this.f2585f.getView(), "computeVerticalScrollRange", new Class[0], new Object[0])).intValue();
            }
            Method a2 = com.tencent.smtt.utils.k.a(this.f2586g, "computeVerticalScrollRange", new Class[0]);
            a2.setAccessible(true);
            return ((Integer) a2.invoke(this.f2586g, new Object[0])).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public WebBackForwardList copyBackForwardList() {
        if (this.f2584e) {
            return WebBackForwardList.a(this.f2585f.copyBackForwardList());
        }
        return WebBackForwardList.a(this.f2586g.copyBackForwardList());
    }

    public Object createPrintDocumentAdapter(String str) {
        if (this.f2584e) {
            try {
                return this.f2585f.createPrintDocumentAdapter(str);
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
        return com.tencent.smtt.utils.k.a(this.f2586g, "createPrintDocumentAdapter", new Class[]{String.class}, str);
    }

    public void customDiskCachePathEnabled(boolean z, String str) {
        if (!this.f2584e || getX5WebViewExtension() == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("enabled", z);
        bundle.putString("path", str);
        getX5WebViewExtension().invokeMiscMethod("customDiskCachePathEnabled", bundle);
    }

    public void destroy() {
        try {
            if ("com.xunmeng.pinduoduo".equals(this.f2588i.getApplicationInfo().packageName)) {
                new Thread("WebviewDestroy") { // from class: com.tencent.smtt.sdk.WebView.2
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        WebView.this.tbsWebviewDestroy(false);
                    }
                }.start();
                if (this.f2584e) {
                    this.f2585f.destroy();
                } else {
                    this.f2586g.destroy();
                }
            } else {
                tbsWebviewDestroy(true);
            }
        } catch (Throwable unused) {
            tbsWebviewDestroy(true);
        }
    }

    public void documentHasImages(Message message) {
        if (!this.f2584e) {
            this.f2586g.documentHasImages(message);
        } else {
            this.f2585f.documentHasImages(message);
        }
    }

    public void dumpViewHierarchyWithProperties(BufferedWriter bufferedWriter, int i2) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "dumpViewHierarchyWithProperties", new Class[]{BufferedWriter.class, Integer.TYPE}, bufferedWriter, Integer.valueOf(i2));
        } else {
            this.f2585f.dumpViewHierarchyWithProperties(bufferedWriter, i2);
        }
    }

    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (this.f2584e) {
            try {
                Method a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "evaluateJavascript", String.class, android.webkit.ValueCallback.class);
                a2.setAccessible(true);
                a2.invoke(this.f2585f.getView(), str, valueCallback);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                loadUrl(str);
                return;
            }
        }
        try {
            Method declaredMethod = Class.forName("android.webkit.WebView").getDeclaredMethod("evaluateJavascript", String.class, android.webkit.ValueCallback.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f2586g, str, valueCallback);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Deprecated
    public int findAll(String str) {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "findAll", new Class[]{String.class}, str);
            if (a2 == null) {
                return 0;
            }
            return ((Integer) a2).intValue();
        }
        return this.f2585f.findAll(str);
    }

    @TargetApi(16)
    public void findAllAsync(String str) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "findAllAsync", new Class[]{String.class}, str);
        } else {
            this.f2585f.findAllAsync(str);
        }
    }

    public View findHierarchyView(String str, int i2) {
        return !this.f2584e ? (View) com.tencent.smtt.utils.k.a(this.f2586g, "findHierarchyView", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i2)) : this.f2585f.findHierarchyView(str, i2);
    }

    @TargetApi(3)
    public void findNext(boolean z) {
        if (!this.f2584e) {
            this.f2586g.findNext(z);
        } else {
            this.f2585f.findNext(z);
        }
    }

    public void flingScroll(int i2, int i3) {
        if (!this.f2584e) {
            this.f2586g.flingScroll(i2, i3);
        } else {
            this.f2585f.flingScroll(i2, i3);
        }
    }

    @Deprecated
    public void freeMemory() {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "freeMemory");
        } else {
            this.f2585f.freeMemory();
        }
    }

    public SslCertificate getCertificate() {
        if (!this.f2584e) {
            return this.f2586g.getCertificate();
        }
        return this.f2585f.getCertificate();
    }

    public int getContentHeight() {
        if (!this.f2584e) {
            return this.f2586g.getContentHeight();
        }
        return this.f2585f.getContentHeight();
    }

    public int getContentWidth() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "getContentWidth");
            if (a2 == null) {
                return 0;
            }
            return ((Integer) a2).intValue();
        }
        return this.f2585f.getContentWidth();
    }

    public Bitmap getFavicon() {
        if (!this.f2584e) {
            return this.f2586g.getFavicon();
        }
        return this.f2585f.getFavicon();
    }

    public HitTestResult getHitTestResult() {
        if (!this.f2584e) {
            return new HitTestResult(this.f2586g.getHitTestResult());
        }
        return new HitTestResult(this.f2585f.getHitTestResult());
    }

    public String[] getHttpAuthUsernamePassword(String str, String str2) {
        if (!this.f2584e) {
            return this.f2586g.getHttpAuthUsernamePassword(str, str2);
        }
        return this.f2585f.getHttpAuthUsernamePassword(str, str2);
    }

    @TargetApi(3)
    public String getOriginalUrl() {
        if (!this.f2584e) {
            return this.f2586g.getOriginalUrl();
        }
        return this.f2585f.getOriginalUrl();
    }

    public int getProgress() {
        if (!this.f2584e) {
            return this.f2586g.getProgress();
        }
        return this.f2585f.getProgress();
    }

    public boolean getRendererPriorityWaivedWhenNotVisible() {
        Object a2;
        try {
            if (!this.f2584e && Build.VERSION.SDK_INT >= 26 && (a2 = com.tencent.smtt.utils.k.a(this.f2586g, "getRendererPriorityWaivedWhenNotVisible")) != null) {
                return ((Boolean) a2).booleanValue();
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public int getRendererRequestedPriority() {
        Object a2;
        try {
            if (!this.f2584e && Build.VERSION.SDK_INT >= 26 && (a2 = com.tencent.smtt.utils.k.a(this.f2586g, "getRendererRequestedPriority")) != null) {
                return ((Integer) a2).intValue();
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Deprecated
    public float getScale() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "getScale");
            if (a2 == null) {
                return 0.0f;
            }
            return ((Float) a2).floatValue();
        }
        return this.f2585f.getScale();
    }

    @Override // android.view.View
    public int getScrollBarDefaultDelayBeforeFade() {
        if (getView() == null) {
            return 0;
        }
        return getView().getScrollBarDefaultDelayBeforeFade();
    }

    @Override // android.view.View
    public int getScrollBarFadeDuration() {
        if (getView() == null) {
            return 0;
        }
        return getView().getScrollBarFadeDuration();
    }

    @Override // android.view.View
    public int getScrollBarSize() {
        if (getView() == null) {
            return 0;
        }
        return getView().getScrollBarSize();
    }

    @Override // android.view.View
    public int getScrollBarStyle() {
        if (getView() == null) {
            return 0;
        }
        return getView().getScrollBarStyle();
    }

    public WebSettings getSettings() {
        WebSettings webSettings = this.f2587h;
        if (webSettings != null) {
            return webSettings;
        }
        if (this.f2584e) {
            WebSettings webSettings2 = new WebSettings(this.f2585f.getSettings());
            this.f2587h = webSettings2;
            return webSettings2;
        }
        WebSettings webSettings3 = new WebSettings(this.f2586g.getSettings());
        this.f2587h = webSettings3;
        return webSettings3;
    }

    public IX5WebSettingsExtension getSettingsExtension() {
        if (this.f2584e) {
            return this.f2585f.getX5WebViewExtension().getSettingsExtension();
        }
        return null;
    }

    public int getSysNightModeAlpha() {
        return NIGHT_MODE_ALPHA;
    }

    public String getTitle() {
        if (!this.f2584e) {
            return this.f2586g.getTitle();
        }
        return this.f2585f.getTitle();
    }

    public String getUrl() {
        if (!this.f2584e) {
            return this.f2586g.getUrl();
        }
        return this.f2585f.getUrl();
    }

    public View getView() {
        if (!this.f2584e) {
            return this.f2586g;
        }
        return this.f2585f.getView();
    }

    public int getVisibleTitleHeight() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "getVisibleTitleHeight");
            if (a2 == null) {
                return 0;
            }
            return ((Integer) a2).intValue();
        }
        return this.f2585f.getVisibleTitleHeight();
    }

    public WebChromeClient getWebChromeClient() {
        return this.o;
    }

    public IX5WebChromeClientExtension getWebChromeClientExtension() {
        if (this.f2584e) {
            return this.f2585f.getX5WebViewExtension().getWebChromeClientExtension();
        }
        return null;
    }

    public int getWebScrollX() {
        if (this.f2584e) {
            return this.f2585f.getView().getScrollX();
        }
        return this.f2586g.getScrollX();
    }

    public int getWebScrollY() {
        if (this.f2584e) {
            return this.f2585f.getView().getScrollY();
        }
        return this.f2586g.getScrollY();
    }

    public WebViewClient getWebViewClient() {
        return this.n;
    }

    public IX5WebViewClientExtension getWebViewClientExtension() {
        if (this.f2584e) {
            return this.f2585f.getX5WebViewExtension().getWebViewClientExtension();
        }
        return null;
    }

    public IX5WebViewBase.HitTestResult getX5HitTestResult() {
        if (this.f2584e) {
            return this.f2585f.getHitTestResult();
        }
        return null;
    }

    public IX5WebViewExtension getX5WebViewExtension() {
        if (this.f2584e) {
            return this.f2585f.getX5WebViewExtension();
        }
        return null;
    }

    @Deprecated
    public View getZoomControls() {
        if (!this.f2584e) {
            return (View) com.tencent.smtt.utils.k.a(this.f2586g, "getZoomControls");
        }
        return this.f2585f.getZoomControls();
    }

    public void goBack() {
        if (!this.f2584e) {
            this.f2586g.goBack();
        } else {
            this.f2585f.goBack();
        }
    }

    public void goBackOrForward(int i2) {
        if (!this.f2584e) {
            this.f2586g.goBackOrForward(i2);
        } else {
            this.f2585f.goBackOrForward(i2);
        }
    }

    public void goForward() {
        if (!this.f2584e) {
            this.f2586g.goForward();
        } else {
            this.f2585f.goForward();
        }
    }

    public void invokeZoomPicker() {
        if (!this.f2584e) {
            this.f2586g.invokeZoomPicker();
        } else {
            this.f2585f.invokeZoomPicker();
        }
    }

    public boolean isDayMode() {
        return w;
    }

    public boolean isPrivateBrowsingEnabled() {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "isPrivateBrowsingEnabled");
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        }
        return this.f2585f.isPrivateBrowsingEnable();
    }

    public void loadData(String str, String str2, String str3) {
        if (!this.f2584e) {
            this.f2586g.loadData(str, str2, str3);
        } else {
            this.f2585f.loadData(str, str2, str3);
        }
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!this.f2584e) {
            this.f2586g.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            this.f2585f.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @TargetApi(8)
    public void loadUrl(String str, Map<String, String> map) {
        if (str == null || showDebugView(str)) {
            return;
        }
        if (!this.f2584e) {
            this.f2586g.loadUrl(str, map);
        } else {
            this.f2585f.loadUrl(str, map);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        try {
            if ("com.xunmeng.pinduoduo".equals(this.f2588i.getApplicationInfo().packageName)) {
                new Thread("onDetachedFromWindow") { // from class: com.tencent.smtt.sdk.WebView.7
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            WebView.this.a();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }.start();
            } else {
                a();
            }
        } catch (Throwable unused) {
            a();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        View.OnLongClickListener onLongClickListener = this.y;
        if (onLongClickListener != null) {
            if (onLongClickListener.onLongClick(view)) {
                return true;
            }
            return a(view);
        }
        return a(view);
    }

    public void onPause() {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "onPause");
        } else {
            this.f2585f.onPause();
        }
    }

    public void onResume() {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "onResume");
        } else {
            this.f2585f.onResume();
        }
    }

    @Override // android.view.View
    @TargetApi(11)
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (!b(this.f2588i) || !isHardwareAccelerated() || i2 <= 0 || i3 <= 0) {
            return;
        }
        getLayerType();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        String str;
        String str2;
        String str3;
        boolean z;
        Bundle sdkQBStatisticsInfo;
        Context context = this.f2588i;
        if (context == null) {
            super.onVisibilityChanged(view, i2);
            return;
        }
        if (p == null) {
            p = context.getApplicationInfo().packageName;
        }
        String str4 = p;
        if (str4 != null && (str4.equals(TbsConfig.APP_WX) || p.equals(TbsConfig.APP_QQ))) {
            super.onVisibilityChanged(view, i2);
            return;
        }
        if (i2 != 0 && !this.f2589k && this.a != 0) {
            this.f2589k = true;
            if (!this.f2584e || (sdkQBStatisticsInfo = this.f2585f.getX5WebViewExtension().getSdkQBStatisticsInfo()) == null) {
                str = "";
                str2 = str;
                str3 = str2;
            } else {
                String string = sdkQBStatisticsInfo.getString("guid");
                String string2 = sdkQBStatisticsInfo.getString("qua2");
                str3 = sdkQBStatisticsInfo.getString("lc");
                str = string;
                str2 = string2;
            }
            if (TbsConfig.APP_QZONE.equals(this.f2588i.getApplicationInfo().packageName)) {
                int d2 = d(this.f2588i);
                if (d2 == -1) {
                    d2 = this.a;
                }
                this.a = d2;
                e(this.f2588i);
            }
            try {
                z = this.f2585f.getX5WebViewExtension().isX5CoreSandboxMode();
            } catch (Throwable th) {
                TbsLog.w("onVisibilityChanged", "exception: " + th);
                z = false;
            }
            com.tencent.smtt.sdk.a.b.a(this.f2588i, str, str2, str3, this.a, this.f2584e, h(), z);
            this.a = 0;
            this.f2589k = false;
        }
        super.onVisibilityChanged(view, i2);
    }

    public boolean overlayHorizontalScrollbar() {
        if (!this.f2584e) {
            return this.f2586g.overlayHorizontalScrollbar();
        }
        return this.f2585f.overlayHorizontalScrollbar();
    }

    public boolean overlayVerticalScrollbar() {
        if (this.f2584e) {
            return this.f2585f.overlayVerticalScrollbar();
        }
        return this.f2586g.overlayVerticalScrollbar();
    }

    public boolean pageDown(boolean z) {
        if (!this.f2584e) {
            return this.f2586g.pageDown(z);
        }
        return this.f2585f.pageDown(z, -1);
    }

    public boolean pageUp(boolean z) {
        if (!this.f2584e) {
            return this.f2586g.pageUp(z);
        }
        return this.f2585f.pageUp(z, -1);
    }

    public void pauseTimers() {
        if (!this.f2584e) {
            this.f2586g.pauseTimers();
        } else {
            this.f2585f.pauseTimers();
        }
    }

    @TargetApi(5)
    public void postUrl(String str, byte[] bArr) {
        if (!this.f2584e) {
            this.f2586g.postUrl(str, bArr);
        } else {
            this.f2585f.postUrl(str, bArr);
        }
    }

    @Deprecated
    public void refreshPlugins(boolean z) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "refreshPlugins", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        } else {
            this.f2585f.refreshPlugins(z);
        }
    }

    public void reload() {
        if (!this.f2584e) {
            this.f2586g.reload();
        } else {
            this.f2585f.reload();
        }
    }

    @TargetApi(11)
    public void removeJavascriptInterface(String str) {
        if (this.f2584e) {
            return;
        }
        com.tencent.smtt.utils.k.a(this.f2586g, "removeJavascriptInterface", new Class[]{String.class}, str);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (!this.f2584e) {
            this.f2586g.removeView(view);
            return;
        }
        View view2 = this.f2585f.getView();
        try {
            Method a2 = com.tencent.smtt.utils.k.a(view2, "removeView", View.class);
            a2.setAccessible(true);
            a2.invoke(view2, view);
        } catch (Throwable unused) {
        }
    }

    public JSONObject reportInitPerformance(long j2, int i2, long j3, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("IS_X5", this.f2584e);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        if (this.f2584e) {
            View view2 = this.f2585f.getView();
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                if (view == this) {
                    view = view2;
                }
                return viewGroup.requestChildRectangleOnScreen(view, rect, z);
            }
            return false;
        }
        a aVar = this.f2586g;
        if (view == this) {
            view = aVar;
        }
        return aVar.requestChildRectangleOnScreen(view, rect, z);
    }

    public void requestFocusNodeHref(Message message) {
        if (!this.f2584e) {
            this.f2586g.requestFocusNodeHref(message);
        } else {
            this.f2585f.requestFocusNodeHref(message);
        }
    }

    public void requestImageRef(Message message) {
        if (!this.f2584e) {
            this.f2586g.requestImageRef(message);
        } else {
            this.f2585f.requestImageRef(message);
        }
    }

    @Deprecated
    public boolean restorePicture(Bundle bundle, File file) {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "restorePicture", new Class[]{Bundle.class, File.class}, bundle, file);
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        }
        return this.f2585f.restorePicture(bundle, file);
    }

    public WebBackForwardList restoreState(Bundle bundle) {
        if (!this.f2584e) {
            return WebBackForwardList.a(this.f2586g.restoreState(bundle));
        }
        return WebBackForwardList.a(this.f2585f.restoreState(bundle));
    }

    public void resumeTimers() {
        if (!this.f2584e) {
            this.f2586g.resumeTimers();
        } else {
            this.f2585f.resumeTimers();
        }
    }

    @Deprecated
    public void savePassword(String str, String str2, String str3) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "savePassword", new Class[]{String.class, String.class, String.class}, str, str2, str3);
        } else {
            this.f2585f.savePassword(str, str2, str3);
        }
    }

    @Deprecated
    public boolean savePicture(Bundle bundle, File file) {
        if (!this.f2584e) {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2586g, "savePicture", new Class[]{Bundle.class, File.class}, bundle, file);
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        }
        return this.f2585f.savePicture(bundle, file);
    }

    public WebBackForwardList saveState(Bundle bundle) {
        if (!this.f2584e) {
            return WebBackForwardList.a(this.f2586g.saveState(bundle));
        }
        return WebBackForwardList.a(this.f2585f.saveState(bundle));
    }

    @TargetApi(11)
    public void saveWebArchive(String str) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "saveWebArchive", new Class[]{String.class}, str);
        } else {
            this.f2585f.saveWebArchive(str);
        }
    }

    public void setARModeEnable(boolean z) {
        try {
            if (this.f2584e) {
                getSettingsExtension().setARModeEnable(z);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (!this.f2584e) {
            this.f2586g.setBackgroundColor(i2);
        } else {
            this.f2585f.setBackgroundColor(i2);
        }
        super.setBackgroundColor(i2);
    }

    @Deprecated
    public void setCertificate(SslCertificate sslCertificate) {
        if (!this.f2584e) {
            this.f2586g.setCertificate(sslCertificate);
        } else {
            this.f2585f.setCertificate(sslCertificate);
        }
    }

    public void setDayOrNight(boolean z) {
        try {
            if (this.f2584e) {
                getSettingsExtension().setDayOrNight(z);
            }
            setSysDayOrNight(z);
            getView().postInvalidate();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setDownloadListener(final DownloadListener downloadListener) {
        boolean z = this.f2584e;
        if (!z) {
            this.f2586g.setDownloadListener(new android.webkit.DownloadListener() { // from class: com.tencent.smtt.sdk.WebView.4
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                    DownloadListener downloadListener2 = downloadListener;
                    if (downloadListener2 == null) {
                        ApplicationInfo applicationInfo = WebView.this.f2588i == null ? null : WebView.this.f2588i.getApplicationInfo();
                        if (applicationInfo == null || !TbsConfig.APP_WX.equals(applicationInfo.packageName)) {
                            com.tencent.smtt.sdk.a.c.a(WebView.this.f2588i, str, null, null);
                            return;
                        }
                        return;
                    }
                    downloadListener2.onDownloadStart(str, str2, str3, str4, j2);
                }
            });
        } else {
            this.f2585f.setDownloadListener(new b(this, downloadListener, z));
        }
    }

    @TargetApi(16)
    public void setFindListener(final IX5WebViewBase.FindListener findListener) {
        if (!this.f2584e) {
            this.f2586g.setFindListener(new WebView.FindListener() { // from class: com.tencent.smtt.sdk.WebView.3
                @Override // android.webkit.WebView.FindListener
                public void onFindResultReceived(int i2, int i3, boolean z) {
                    findListener.onFindResultReceived(i2, i3, z);
                }
            });
        } else {
            this.f2585f.setFindListener(findListener);
        }
    }

    public void setHorizontalScrollbarOverlay(boolean z) {
        if (!this.f2584e) {
            this.f2586g.setHorizontalScrollbarOverlay(z);
        } else {
            this.f2585f.setHorizontalScrollbarOverlay(z);
        }
    }

    public void setHttpAuthUsernamePassword(String str, String str2, String str3, String str4) {
        if (!this.f2584e) {
            this.f2586g.setHttpAuthUsernamePassword(str, str2, str3, str4);
        } else {
            this.f2585f.setHttpAuthUsernamePassword(str, str2, str3, str4);
        }
    }

    public void setInitialScale(int i2) {
        if (!this.f2584e) {
            this.f2586g.setInitialScale(i2);
        } else {
            this.f2585f.setInitialScale(i2);
        }
    }

    @Deprecated
    public void setMapTrackballToArrowKeys(boolean z) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "setMapTrackballToArrowKeys", new Class[]{Boolean.TYPE}, Boolean.valueOf(z));
        } else {
            this.f2585f.setMapTrackballToArrowKeys(z);
        }
    }

    public void setNetworkAvailable(boolean z) {
        if (!this.f2584e) {
            this.f2586g.setNetworkAvailable(z);
        } else {
            this.f2585f.setNetworkAvailable(z);
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        if (!this.f2584e) {
            this.f2586g.setOnLongClickListener(onLongClickListener);
            return;
        }
        View view = this.f2585f.getView();
        try {
            if (this.x == null) {
                Method a2 = com.tencent.smtt.utils.k.a(view, "getListenerInfo", new Class[0]);
                a2.setAccessible(true);
                Object invoke = a2.invoke(view, null);
                Field declaredField = invoke.getClass().getDeclaredField("mOnLongClickListener");
                declaredField.setAccessible(true);
                this.x = declaredField.get(invoke);
            }
            this.y = onLongClickListener;
            getView().setOnLongClickListener(this);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        getView().setOnTouchListener(onTouchListener);
    }

    public void setPictureListener(final PictureListener pictureListener) {
        if (this.f2584e) {
            if (pictureListener == null) {
                this.f2585f.setPictureListener(null);
            } else {
                this.f2585f.setPictureListener(new IX5WebViewBase.PictureListener() { // from class: com.tencent.smtt.sdk.WebView.6
                    @Override // com.tencent.smtt.export.external.interfaces.IX5WebViewBase.PictureListener
                    public void onNewPicture(IX5WebViewBase iX5WebViewBase, Picture picture, boolean z) {
                        WebView.this.a(iX5WebViewBase);
                        pictureListener.onNewPicture(WebView.this, picture);
                    }

                    @Override // com.tencent.smtt.export.external.interfaces.IX5WebViewBase.PictureListener
                    public void onNewPictureIfHaveContent(IX5WebViewBase iX5WebViewBase, Picture picture) {
                    }
                });
            }
        } else if (pictureListener == null) {
            this.f2586g.setPictureListener(null);
        } else {
            this.f2586g.setPictureListener(new WebView.PictureListener() { // from class: com.tencent.smtt.sdk.WebView.5
                @Override // android.webkit.WebView.PictureListener
                public void onNewPicture(android.webkit.WebView webView, Picture picture) {
                    WebView.this.a(webView);
                    pictureListener.onNewPicture(WebView.this, picture);
                }
            });
        }
    }

    public void setRendererPriorityPolicy(int i2, boolean z) {
        try {
            if (this.f2584e || Build.VERSION.SDK_INT < 26) {
                return;
            }
            com.tencent.smtt.utils.k.a(this.f2586g, "setRendererPriorityPolicy", new Class[]{Integer.TYPE, Boolean.TYPE}, Integer.valueOf(i2), Boolean.valueOf(z));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    public void setScrollBarStyle(int i2) {
        if (this.f2584e) {
            this.f2585f.getView().setScrollBarStyle(i2);
        } else {
            this.f2586g.setScrollBarStyle(i2);
        }
    }

    public void setSysNightModeAlpha(int i2) {
        NIGHT_MODE_ALPHA = i2;
    }

    public void setVerticalScrollbarOverlay(boolean z) {
        if (!this.f2584e) {
            this.f2586g.setVerticalScrollbarOverlay(z);
        } else {
            this.f2585f.setVerticalScrollbarOverlay(z);
        }
    }

    public boolean setVideoFullScreen(Context context, boolean z) {
        if (!context.getApplicationInfo().processName.contains("com.tencent.android.qqdownloader") || this.f2585f == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putInt("DefaultVideoScreen", 2);
        } else {
            bundle.putInt("DefaultVideoScreen", 1);
        }
        this.f2585f.getX5WebViewExtension().invokeMiscMethod("setVideoParams", bundle);
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (getView() == null) {
            return;
        }
        getView().setVisibility(i2);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        if (this.f2584e) {
            this.f2585f.setWebChromeClient(webChromeClient != null ? new f(t.a().a(true).i(), this, webChromeClient) : null);
        } else {
            this.f2586g.setWebChromeClient(webChromeClient != null ? new SystemWebChromeClient(this, webChromeClient) : null);
        }
        this.o = webChromeClient;
    }

    public void setWebChromeClientExtension(IX5WebChromeClientExtension iX5WebChromeClientExtension) {
        if (this.f2584e) {
            this.f2585f.getX5WebViewExtension().setWebChromeClientExtension(iX5WebChromeClientExtension);
        }
    }

    public void setWebViewCallbackClient(WebViewCallbackClient webViewCallbackClient) {
        this.mWebViewCallbackClient = webViewCallbackClient;
        if (!this.f2584e || getX5WebViewExtension() == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("flag", true);
        getX5WebViewExtension().invokeMiscMethod("setWebViewCallbackClientFlag", bundle);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        if (this.f2584e) {
            this.f2585f.setWebViewClient(webViewClient != null ? new g(t.a().a(true).j(), this, webViewClient) : null);
        } else {
            this.f2586g.setWebViewClient(webViewClient != null ? new SystemWebViewClient(this, webViewClient) : null);
        }
        this.n = webViewClient;
    }

    public void setWebViewClientExtension(IX5WebViewClientExtension iX5WebViewClientExtension) {
        if (this.f2584e) {
            this.f2585f.getX5WebViewExtension().setWebViewClientExtension(iX5WebViewClientExtension);
        }
    }

    @SuppressLint({"NewApi"})
    public boolean showDebugView(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.startsWith("http://debugtbs.qq.com")) {
            getView().setVisibility(4);
            com.tencent.smtt.utils.d.a(this.f2588i).a(lowerCase, this, this.f2588i, k.a().getLooper());
            return true;
        } else if (!lowerCase.startsWith("http://debugx5.qq.com") || this.f2584e) {
            return false;
        } else {
            loadDataWithBaseURL(null, "<!DOCTYPE html><html><body><head><title>无法打开debugx5</title><meta name=\"viewport\" content=\"width=device-width, user-scalable=no\" /></head><br/><br /><h2>debugx5页面仅在使用了X5内核时有效，由于当前没有使用X5内核，无法打开debugx5！</h2><br />尝试<a href=\"http://debugtbs.qq.com?10000\">进入DebugTbs安装或打开X5内核</a></body></html>", "text/html", "utf-8", null);
            return true;
        }
    }

    public boolean showFindDialog(String str, boolean z) {
        return false;
    }

    public void stopLoading() {
        if (!this.f2584e) {
            this.f2586g.stopLoading();
        } else {
            this.f2585f.stopLoading();
        }
    }

    public void super_computeScroll() {
        if (!this.f2584e) {
            this.f2586g.a();
            return;
        }
        try {
            com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_computeScroll");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean super_dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f2584e) {
            return this.f2586g.b(motionEvent);
        }
        try {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_dispatchTouchEvent", new Class[]{MotionEvent.class}, motionEvent);
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean super_onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f2584e) {
            return this.f2586g.c(motionEvent);
        }
        try {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_onInterceptTouchEvent", new Class[]{MotionEvent.class}, motionEvent);
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void super_onOverScrolled(int i2, int i3, boolean z, boolean z2) {
        if (!this.f2584e) {
            this.f2586g.a(i2, i3, z, z2);
            return;
        }
        try {
            com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_onOverScrolled", new Class[]{Integer.TYPE, Integer.TYPE, Boolean.TYPE, Boolean.TYPE}, Integer.valueOf(i2), Integer.valueOf(i3), Boolean.valueOf(z), Boolean.valueOf(z2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void super_onScrollChanged(int i2, int i3, int i4, int i5) {
        if (!this.f2584e) {
            this.f2586g.a(i2, i3, i4, i5);
            return;
        }
        try {
            com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_onScrollChanged", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE}, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean super_onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2584e) {
            return this.f2586g.a(motionEvent);
        }
        try {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_onTouchEvent", new Class[]{MotionEvent.class}, motionEvent);
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean super_overScrollBy(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z) {
        if (!this.f2584e) {
            return this.f2586g.a(i2, i3, i4, i5, i6, i7, i8, i9, z);
        }
        try {
            Object a2 = com.tencent.smtt.utils.k.a(this.f2585f.getView(), "super_overScrollBy", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, Boolean.TYPE}, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), Boolean.valueOf(z));
            if (a2 == null) {
                return false;
            }
            return ((Boolean) a2).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void switchNightMode(boolean z) {
        if (z == w) {
            return;
        }
        w = z;
        if (z) {
            TbsLog.e("QB_SDK", "deleteNightMode");
            loadUrl("javascript:document.getElementsByTagName('HEAD').item(0).removeChild(document.getElementById('QQBrowserSDKNightMode'));");
            return;
        }
        TbsLog.e("QB_SDK", "nightMode");
        loadUrl("javascript:var style = document.createElement('style');style.type='text/css';style.id='QQBrowserSDKNightMode';style.innerHTML='html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}';document.getElementsByTagName('HEAD').item(0).appendChild(style);");
    }

    public void switchToNightMode() {
        TbsLog.e("QB_SDK", "switchToNightMode 01");
        if (w) {
            return;
        }
        TbsLog.e("QB_SDK", "switchToNightMode");
        loadUrl("javascript:var style = document.createElement('style');style.type='text/css';style.id='QQBrowserSDKNightMode';style.innerHTML='html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}';document.getElementsByTagName('HEAD').item(0).appendChild(style);");
    }

    public void tbsWebviewDestroy(boolean z) {
        boolean z2;
        Bundle sdkQBStatisticsInfo;
        if (!this.f2589k && this.a != 0) {
            this.f2589k = true;
            String str = "";
            String str2 = "";
            String str3 = "";
            if (this.f2584e && (sdkQBStatisticsInfo = this.f2585f.getX5WebViewExtension().getSdkQBStatisticsInfo()) != null) {
                str = sdkQBStatisticsInfo.getString("guid");
                str2 = sdkQBStatisticsInfo.getString("qua2");
                str3 = sdkQBStatisticsInfo.getString("lc");
            }
            String str4 = str;
            String str5 = str2;
            String str6 = str3;
            if (TbsConfig.APP_QZONE.equals(this.f2588i.getApplicationInfo().packageName)) {
                int d2 = d(this.f2588i);
                if (d2 == -1) {
                    d2 = this.a;
                }
                this.a = d2;
                e(this.f2588i);
            }
            try {
                z2 = this.f2585f.getX5WebViewExtension().isX5CoreSandboxMode();
            } catch (Throwable th) {
                TbsLog.w("tbsWebviewDestroy", "exception: " + th);
                z2 = false;
            }
            com.tencent.smtt.sdk.a.b.a(this.f2588i, str4, str5, str6, this.a, this.f2584e, h(), z2);
            this.a = 0;
            this.f2589k = false;
        }
        if (!this.f2584e) {
            try {
                Class<?> cls = Class.forName("android.webkit.WebViewClassic");
                Method method = cls.getMethod("fromWebView", android.webkit.WebView.class);
                method.setAccessible(true);
                Object invoke = method.invoke(null, this.f2586g);
                if (invoke != null) {
                    Field declaredField = cls.getDeclaredField("mListBoxDialog");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(invoke);
                    if (obj != null) {
                        Dialog dialog = (Dialog) obj;
                        dialog.setOnCancelListener(null);
                        Class<?> cls2 = Class.forName("android.app.Dialog");
                        Field declaredField2 = cls2.getDeclaredField("CANCEL");
                        declaredField2.setAccessible(true);
                        int intValue = ((Integer) declaredField2.get(dialog)).intValue();
                        Field declaredField3 = cls2.getDeclaredField("mListenersHandler");
                        declaredField3.setAccessible(true);
                        ((Handler) declaredField3.get(dialog)).removeMessages(intValue);
                    }
                }
            } catch (Exception unused) {
            }
            if (z) {
                this.f2586g.destroy();
            }
            try {
                Field declaredField4 = Class.forName("android.webkit.BrowserFrame").getDeclaredField("sConfigCallback");
                declaredField4.setAccessible(true);
                ComponentCallbacks componentCallbacks = (ComponentCallbacks) declaredField4.get(null);
                if (componentCallbacks != null) {
                    declaredField4.set(null, null);
                    Field declaredField5 = Class.forName("android.view.ViewRoot").getDeclaredField("sConfigCallbacks");
                    declaredField5.setAccessible(true);
                    Object obj2 = declaredField5.get(null);
                    if (obj2 != null) {
                        List list = (List) obj2;
                        synchronized (list) {
                            list.remove(componentCallbacks);
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        } else if (z) {
            this.f2585f.destroy();
        }
        StringBuilder o = f.b.a.a.a.o("X5 GUID = ");
        o.append(QbSdk.b());
        TbsLog.i("WebView", o.toString());
    }

    public boolean zoomIn() {
        if (!this.f2584e) {
            return this.f2586g.zoomIn();
        }
        return this.f2585f.zoomIn();
    }

    public boolean zoomOut() {
        if (!this.f2584e) {
            return this.f2586g.zoomOut();
        }
        return this.f2585f.zoomOut();
    }

    private boolean b(Context context) {
        try {
            return context.getPackageName().indexOf(TbsConfig.APP_QQ) >= 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private void e(Context context) {
        try {
            File dir = context.getDir("tbs", 0);
            File file = new File(dir + File.separator + "core_private", "pv.db");
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("TbsInstaller--getTbsCorePV Exception=");
            o.append(e2.toString());
            TbsLog.i("getTbsCorePV", o.toString());
        }
    }

    public void a() {
        String str;
        String str2;
        String str3;
        boolean z;
        Bundle sdkQBStatisticsInfo;
        if (!this.f2589k && this.a != 0) {
            this.f2589k = true;
            if (!this.f2584e || (sdkQBStatisticsInfo = this.f2585f.getX5WebViewExtension().getSdkQBStatisticsInfo()) == null) {
                str = "";
                str2 = str;
                str3 = str2;
            } else {
                String string = sdkQBStatisticsInfo.getString("guid");
                String string2 = sdkQBStatisticsInfo.getString("qua2");
                str3 = sdkQBStatisticsInfo.getString("lc");
                str = string;
                str2 = string2;
            }
            if (TbsConfig.APP_QZONE.equals(this.f2588i.getApplicationInfo().packageName)) {
                int d2 = d(this.f2588i);
                if (d2 == -1) {
                    d2 = this.a;
                }
                this.a = d2;
                e(this.f2588i);
            }
            try {
                z = this.f2585f.getX5WebViewExtension().isX5CoreSandboxMode();
            } catch (Throwable th) {
                TbsLog.w("tbsOnDetachedFromWindow", "exception: " + th);
                z = false;
            }
            com.tencent.smtt.sdk.a.b.a(this.f2588i, str, str2, str3, this.a, this.f2584e, h(), z);
            this.a = 0;
            this.f2589k = false;
        }
        super.onDetachedFromWindow();
    }

    /* loaded from: classes.dex */
    public static class HitTestResult {
        @Deprecated
        public static final int ANCHOR_TYPE = 1;
        public static final int EDIT_TEXT_TYPE = 9;
        public static final int EMAIL_TYPE = 4;
        public static final int GEO_TYPE = 3;
        @Deprecated
        public static final int IMAGE_ANCHOR_TYPE = 6;
        public static final int IMAGE_TYPE = 5;
        public static final int PHONE_TYPE = 2;
        public static final int SRC_ANCHOR_TYPE = 7;
        public static final int SRC_IMAGE_ANCHOR_TYPE = 8;
        public static final int UNKNOWN_TYPE = 0;
        public IX5WebViewBase.HitTestResult a;
        public WebView.HitTestResult b;

        public HitTestResult() {
            this.b = null;
            this.a = null;
            this.b = null;
        }

        public String getExtra() {
            IX5WebViewBase.HitTestResult hitTestResult = this.a;
            if (hitTestResult != null) {
                return hitTestResult.getExtra();
            }
            WebView.HitTestResult hitTestResult2 = this.b;
            return hitTestResult2 != null ? hitTestResult2.getExtra() : "";
        }

        public int getType() {
            IX5WebViewBase.HitTestResult hitTestResult = this.a;
            if (hitTestResult != null) {
                return hitTestResult.getType();
            }
            WebView.HitTestResult hitTestResult2 = this.b;
            if (hitTestResult2 != null) {
                return hitTestResult2.getType();
            }
            return 0;
        }

        public HitTestResult(IX5WebViewBase.HitTestResult hitTestResult) {
            this.b = null;
            this.a = hitTestResult;
            this.b = null;
        }

        public HitTestResult(WebView.HitTestResult hitTestResult) {
            this.b = null;
            this.a = null;
            this.b = hitTestResult;
        }
    }

    @TargetApi(11)
    public void saveWebArchive(String str, boolean z, ValueCallback<String> valueCallback) {
        if (!this.f2584e) {
            com.tencent.smtt.utils.k.a(this.f2586g, "saveWebArchive", new Class[]{String.class, Boolean.TYPE, android.webkit.ValueCallback.class}, str, Boolean.valueOf(z), valueCallback);
        } else {
            this.f2585f.saveWebArchive(str, z, valueCallback);
        }
    }

    public android.webkit.WebView b() {
        if (this.f2584e) {
            return null;
        }
        return this.f2586g;
    }

    public void loadUrl(String str) {
        if (str == null || showDebugView(str)) {
            return;
        }
        if (!this.f2584e) {
            this.f2586g.loadUrl(str);
        } else {
            this.f2585f.loadUrl(str);
        }
    }

    public IX5WebViewBase c() {
        return this.f2585f;
    }

    public WebView(Context context) {
        this(context, (AttributeSet) null);
    }

    public WebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WebView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, false);
    }

    public WebView(Context context, AttributeSet attributeSet, int i2, boolean z) {
        this(context, attributeSet, i2, null, z);
    }

    public void a(IX5WebViewBase iX5WebViewBase) {
        this.f2585f = iX5WebViewBase;
    }

    @TargetApi(11)
    public WebView(Context context, AttributeSet attributeSet, int i2, Map<String, Object> map, boolean z) {
        super(context, attributeSet, i2);
        this.b = "WebView";
        this.f2584e = false;
        this.f2587h = null;
        this.f2588i = null;
        this.a = 0;
        this.f2589k = false;
        this.n = null;
        this.o = null;
        this.q = 1;
        this.r = 2;
        this.s = 3;
        this.t = "javascript:document.getElementsByTagName('HEAD').item(0).removeChild(document.getElementById('QQBrowserSDKNightMode'));";
        this.u = "javascript:var style = document.createElement('style');style.type='text/css';style.id='QQBrowserSDKNightMode';style.innerHTML='html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}';document.getElementsByTagName('HEAD').item(0).appendChild(style);";
        this.x = null;
        this.y = null;
        mWebViewCreated = true;
        if (QbSdk.getIsSysWebViewForcedByOuter() && TbsShareManager.isThirdPartyApp(context)) {
            this.f2588i = context;
            this.f2585f = null;
            this.f2584e = false;
            QbSdk.a(context, "failed to createTBSWebview!");
            this.f2586g = new a(context, attributeSet);
            CookieManager.getInstance().a(context, true, false);
            CookieSyncManager.createInstance(this.f2588i).startSync();
            try {
                Method declaredMethod = Class.forName("android.webkit.WebViewWorker").getDeclaredMethod("getHandler", new Class[0]);
                declaredMethod.setAccessible(true);
                ((Handler) declaredMethod.invoke(null, new Object[0])).getLooper().getThread().setUncaughtExceptionHandler(new e());
                mSysWebviewCreated = true;
            } catch (Exception unused) {
            }
            CookieManager.getInstance().a();
            this.f2586g.setFocusableInTouchMode(true);
            addView(this.f2586g, new FrameLayout.LayoutParams(-1, -1));
            TbsLog.i("WebView", "SystemWebView Created Success! #3");
            TbsLog.e("WebView", "sys WebView: IsSysWebViewForcedByOuter = true", true);
            TbsCoreLoadStat.getInstance().a(context, TbsListener.ErrorCode.INFO_FORCE_SYSTEM_WEBVIEW_OUTER, new Throwable());
            return;
        }
        if (TbsShareManager.isThirdPartyApp(context)) {
            TbsLog.setWriteLogJIT(true);
        } else {
            TbsLog.setWriteLogJIT(false);
        }
        TbsLog.initIfNeed(context);
        if (context != null) {
            if (f2582l == null) {
                f2582l = com.tencent.smtt.utils.o.a(context);
            }
            if (f2582l.a) {
                TbsLog.e("WebView", "sys WebView: debug.conf force syswebview", true);
                QbSdk.a(context, "debug.conf force syswebview!");
            }
            c(context);
            this.f2588i = context;
            f2581j = context.getApplicationContext();
            if (this.f2584e && !QbSdk.a) {
                IX5WebViewBase a2 = t.a().a(true).a(context);
                this.f2585f = a2;
                if (a2 != null && a2.getView() != null) {
                    TbsLog.i("WebView", "X5 WebView Created Success!!");
                    this.f2585f.getView().setFocusableInTouchMode(true);
                    a(attributeSet);
                    addView(this.f2585f.getView(), new FrameLayout.LayoutParams(-1, -1));
                    this.f2585f.setDownloadListener(new b(this, null, this.f2584e));
                    this.f2585f.getX5WebViewExtension().setWebViewClientExtension(new X5ProxyWebViewClientExtension(t.a().a(true).k()) { // from class: com.tencent.smtt.sdk.WebView.1
                        @Override // com.tencent.smtt.export.external.extension.proxy.ProxyWebViewClientExtension, com.tencent.smtt.export.external.extension.interfaces.IX5WebViewClientExtension
                        public void invalidate() {
                        }

                        @Override // com.tencent.smtt.export.external.extension.proxy.ProxyWebViewClientExtension, com.tencent.smtt.export.external.extension.interfaces.IX5WebViewClientExtension
                        public void onScrollChanged(int i3, int i4, int i5, int i6) {
                            super.onScrollChanged(i3, i4, i5, i6);
                            WebView.this.onScrollChanged(i5, i6, i3, i4);
                        }
                    });
                } else {
                    TbsLog.e("WebView", "sys WebView: failed to createTBSWebview", true);
                    this.f2585f = null;
                    this.f2584e = false;
                    QbSdk.a(context, "failed to createTBSWebview!");
                    c(context);
                    if (TbsShareManager.isThirdPartyApp(this.f2588i)) {
                        this.f2586g = new a(context, attributeSet);
                    } else {
                        this.f2586g = new a(this, context);
                    }
                    TbsLog.i("WebView", "SystemWebView Created Success! #1");
                    CookieManager.getInstance().a(context, true, false);
                    CookieManager.getInstance().a();
                    this.f2586g.setFocusableInTouchMode(true);
                    addView(this.f2586g, new FrameLayout.LayoutParams(-1, -1));
                    try {
                        removeJavascriptInterface("searchBoxJavaBridge_");
                        removeJavascriptInterface("accessibility");
                        removeJavascriptInterface("accessibilityTraversal");
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    TbsLog.writeLogToDisk();
                    l.a(context);
                    return;
                }
            } else {
                this.f2585f = null;
                if (TbsShareManager.isThirdPartyApp(this.f2588i)) {
                    this.f2586g = new a(context, attributeSet);
                } else {
                    this.f2586g = new a(this, context);
                }
                TbsLog.i("WebView", "SystemWebView Created Success! #2");
                CookieManager.getInstance().a(context, true, false);
                CookieManager.getInstance().a();
                this.f2586g.setFocusableInTouchMode(true);
                addView(this.f2586g, new FrameLayout.LayoutParams(-1, -1));
                setDownloadListener(null);
                TbsLog.writeLogToDisk();
                l.a(context);
            }
            try {
                removeJavascriptInterface("searchBoxJavaBridge_");
                removeJavascriptInterface("accessibility");
                removeJavascriptInterface("accessibilityTraversal");
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            if ((TbsConfig.APP_QQ.equals(this.f2588i.getApplicationInfo().packageName) || TbsConfig.APP_WX.equals(this.f2588i.getApplicationInfo().packageName)) && d.a(true).h()) {
                setLayerType(1, null);
            }
            if (this.f2585f != null) {
                TbsLog.writeLogToDisk();
                if (!TbsShareManager.isThirdPartyApp(context)) {
                    int i3 = TbsDownloadConfig.getInstance(context).mPreferences.getInt(TbsDownloadConfig.TbsConfigKey.KEY_DECOUPLECOREVERSION, 0);
                    if (i3 > 0 && i3 != l.a().h(context) && i3 == l.a().i(context)) {
                        l.a().n(context);
                    } else {
                        StringBuilder p2 = f.b.a.a.a.p("webview construction #1 deCoupleCoreVersion is ", i3, " getTbsCoreShareDecoupleCoreVersion is ");
                        p2.append(l.a().h(context));
                        p2.append(" getTbsCoreInstalledVerInNolock is ");
                        p2.append(l.a().i(context));
                        TbsLog.i("WebView", p2.toString());
                    }
                }
            }
            QbSdk.continueLoadSo(context);
            return;
        }
        throw new IllegalArgumentException("Invalid context argument");
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            try {
                int attributeCount = attributeSet.getAttributeCount();
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    if (attributeSet.getAttributeName(i2).equalsIgnoreCase("scrollbars")) {
                        int[] intArray = getResources().getIntArray(16842974);
                        int attributeIntValue = attributeSet.getAttributeIntValue(i2, -1);
                        if (attributeIntValue == intArray[1]) {
                            this.f2585f.getView().setVerticalScrollBarEnabled(false);
                            this.f2585f.getView().setHorizontalScrollBarEnabled(false);
                        } else if (attributeIntValue == intArray[2]) {
                            this.f2585f.getView().setVerticalScrollBarEnabled(false);
                        } else if (attributeIntValue == intArray[3]) {
                            this.f2585f.getView().setHorizontalScrollBarEnabled(false);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void d() {
        try {
            new Thread(new Runnable() { // from class: com.tencent.smtt.sdk.WebView.8
                @Override // java.lang.Runnable
                public void run() {
                    if (WebView.f2581j == null) {
                        TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--mAppContext == null");
                        return;
                    }
                    d a2 = d.a(true);
                    if (!d.b) {
                        j a3 = j.a(WebView.f2581j);
                        int c2 = a3.c();
                        TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--installStatus = " + c2);
                        if (c2 == 2) {
                            TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--install setTbsNeedReboot true");
                            a2.a(String.valueOf(a3.b()));
                            a2.b(true);
                            return;
                        }
                        int b = a3.b("copy_status");
                        TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--copyStatus = " + b);
                        if (b == 1) {
                            TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--copy setTbsNeedReboot true");
                            a2.a(String.valueOf(a3.c("copy_core_ver")));
                            a2.b(true);
                            return;
                        } else if (t.a().b()) {
                            return;
                        } else {
                            if (c2 == 3 || b == 3) {
                                TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--setTbsNeedReboot true");
                                a2.a(String.valueOf(d.d()));
                                a2.b(true);
                                return;
                            }
                            return;
                        }
                    }
                    TbsLog.d("TbsNeedReboot", "WebView.updateNeeeRebootStatus--needReboot = true");
                }
            }).start();
        } catch (Throwable th) {
            TbsLog.e("webview", "updateRebootStatus excpetion: " + th);
        }
    }

    public void a(Context context) {
        String str;
        int d2 = d(context);
        if (d2 != -1) {
            StringBuilder o = f.b.a.a.a.o("PV=");
            o.append(String.valueOf(d2 + 1));
            str = o.toString();
        } else {
            str = "PV=1";
        }
        File dir = context.getDir("tbs", 0);
        StringBuilder sb = new StringBuilder();
        sb.append(dir);
        File file = new File(f.b.a.a.a.l(sb, File.separator, "core_private"), "pv.db");
        try {
            file.getParentFile().mkdirs();
            if (!file.isFile() || !file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, false);
            f2580d = fileOutputStream;
            fileOutputStream.write(str.getBytes());
            if (f2580d != null) {
                f2580d.flush();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean a(View view) {
        Object a2;
        Context context = this.f2588i;
        if ((context == null || getTbsCoreVersion(context) <= 36200) && (a2 = com.tencent.smtt.utils.k.a(this.x, "onLongClick", new Class[]{View.class}, view)) != null) {
            return ((Boolean) a2).booleanValue();
        }
        return false;
    }
}
