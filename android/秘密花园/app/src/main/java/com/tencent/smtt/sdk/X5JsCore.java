package com.tencent.smtt.sdk;

import android.content.Context;
import android.os.Looper;
import android.webkit.ValueCallback;
import com.tencent.smtt.export.external.jscore.interfaces.IX5JsVirtualMachine;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class X5JsCore {
    public static a a;
    public static a b;

    /* renamed from: c  reason: collision with root package name */
    public static a f2511c;

    /* renamed from: d  reason: collision with root package name */
    public final Context f2512d;

    /* renamed from: e  reason: collision with root package name */
    public Object f2513e;

    /* renamed from: f  reason: collision with root package name */
    public WebView f2514f;

    /* loaded from: classes.dex */
    public enum a {
        UNINITIALIZED,
        UNAVAILABLE,
        AVAILABLE
    }

    static {
        a aVar = a.UNINITIALIZED;
        a = aVar;
        b = aVar;
        f2511c = aVar;
    }

    @Deprecated
    public X5JsCore(Context context) {
        Object a2;
        this.f2513e = null;
        this.f2514f = null;
        this.f2512d = context;
        if (!canUseX5JsCore(context) || (a2 = a("createX5JavaBridge", new Class[]{Context.class}, context)) == null) {
            WebView webView = new WebView(context);
            this.f2514f = webView;
            webView.getSettings().setJavaScriptEnabled(true);
            return;
        }
        this.f2513e = a2;
    }

    public static Object a(String str, Class<?>[] clsArr, Object... objArr) {
        try {
            t a2 = t.a();
            if (a2 == null || !a2.b()) {
                return null;
            }
            return a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", str, clsArr, objArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean canUseX5JsCore(Context context) {
        if (a == a.UNINITIALIZED) {
            a = a.UNAVAILABLE;
            Object a2 = a("canUseX5JsCore", new Class[]{Context.class}, context);
            if (a2 == null || !(a2 instanceof Boolean) || !((Boolean) a2).booleanValue()) {
                return false;
            }
            a("setJsValueFactory", new Class[]{Object.class}, JsValue.a());
            a = a.AVAILABLE;
            return true;
        } else if (a == a.AVAILABLE) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean canUseX5JsCoreNewAPI(Context context) {
        if (f2511c == a.UNINITIALIZED) {
            f2511c = a.UNAVAILABLE;
            Object a2 = a("canUseX5JsCoreNewAPI", new Class[]{Context.class}, context);
            if (a2 == null || !(a2 instanceof Boolean) || !((Boolean) a2).booleanValue()) {
                return false;
            }
            f2511c = a.AVAILABLE;
            return true;
        } else if (f2511c == a.AVAILABLE) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean canX5JsCoreUseNativeBuffer(Context context) {
        Object a2;
        if (b == a.UNINITIALIZED) {
            b = a.UNAVAILABLE;
            if (!canUseX5JsCore(context) || (a2 = a("canX5JsCoreUseBuffer", new Class[]{Context.class}, context)) == null || !(a2 instanceof Boolean) || !((Boolean) a2).booleanValue()) {
                return false;
            }
            b = a.AVAILABLE;
            return true;
        } else if (b == a.AVAILABLE) {
            return true;
        } else {
            return false;
        }
    }

    @Deprecated
    public void addJavascriptInterface(Object obj, String str) {
        Object obj2 = this.f2513e;
        if (obj2 != null) {
            a("addJavascriptInterface", new Class[]{Object.class, String.class, Object.class}, obj, str, obj2);
            return;
        }
        WebView webView = this.f2514f;
        if (webView != null) {
            webView.addJavascriptInterface(obj, str);
            this.f2514f.loadUrl("about:blank");
        }
    }

    @Deprecated
    public void destroy() {
        Object obj = this.f2513e;
        if (obj != null) {
            a("destroyX5JsCore", new Class[]{Object.class}, obj);
            this.f2513e = null;
            return;
        }
        WebView webView = this.f2514f;
        if (webView != null) {
            webView.clearHistory();
            this.f2514f.clearCache(true);
            this.f2514f.loadUrl("about:blank");
            this.f2514f.freeMemory();
            this.f2514f.pauseTimers();
            this.f2514f.destroy();
            this.f2514f = null;
        }
    }

    @Deprecated
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        Object obj = this.f2513e;
        if (obj != null) {
            a("evaluateJavascript", new Class[]{String.class, ValueCallback.class, Object.class}, str, valueCallback, obj);
            return;
        }
        WebView webView = this.f2514f;
        if (webView != null) {
            webView.evaluateJavascript(str, valueCallback);
        }
    }

    @Deprecated
    public ByteBuffer getNativeBuffer(int i2) {
        Object a2;
        if (this.f2513e == null || !canX5JsCoreUseNativeBuffer(this.f2512d) || (a2 = a("getNativeBuffer", new Class[]{Object.class, Integer.TYPE}, this.f2513e, Integer.valueOf(i2))) == null || !(a2 instanceof ByteBuffer)) {
            return null;
        }
        return (ByteBuffer) a2;
    }

    @Deprecated
    public int getNativeBufferId() {
        Object a2;
        if (this.f2513e == null || !canX5JsCoreUseNativeBuffer(this.f2512d) || (a2 = a("getNativeBufferId", new Class[]{Object.class}, this.f2513e)) == null || !(a2 instanceof Integer)) {
            return -1;
        }
        return ((Integer) a2).intValue();
    }

    @Deprecated
    public void pause() {
        Object obj = this.f2513e;
        if (obj != null) {
            a("pause", new Class[]{Object.class}, obj);
        }
    }

    @Deprecated
    public void pauseTimers() {
        Object obj = this.f2513e;
        if (obj != null) {
            a("pauseTimers", new Class[]{Object.class}, obj);
        }
    }

    @Deprecated
    public void removeJavascriptInterface(String str) {
        Object obj = this.f2513e;
        if (obj != null) {
            a("removeJavascriptInterface", new Class[]{String.class, Object.class}, str, obj);
            return;
        }
        WebView webView = this.f2514f;
        if (webView != null) {
            webView.removeJavascriptInterface(str);
        }
    }

    @Deprecated
    public void resume() {
        Object obj = this.f2513e;
        if (obj != null) {
            a("resume", new Class[]{Object.class}, obj);
        }
    }

    @Deprecated
    public void resumeTimers() {
        Object obj = this.f2513e;
        if (obj != null) {
            a("resumeTimers", new Class[]{Object.class}, obj);
        }
    }

    @Deprecated
    public void setNativeBuffer(int i2, ByteBuffer byteBuffer) {
        if (this.f2513e != null && canX5JsCoreUseNativeBuffer(this.f2512d)) {
            a("setNativeBuffer", new Class[]{Object.class, Integer.TYPE, ByteBuffer.class}, this.f2513e, Integer.valueOf(i2), byteBuffer);
        }
    }

    public static IX5JsVirtualMachine a(Context context, Looper looper) {
        Object a2;
        if (!canUseX5JsCore(context) || (a2 = a("createX5JsVirtualMachine", new Class[]{Context.class, Looper.class}, context, looper)) == null) {
            return null;
        }
        return (IX5JsVirtualMachine) a2;
    }

    public static Object a() {
        return a("currentContextData", new Class[0], new Object[0]);
    }
}
