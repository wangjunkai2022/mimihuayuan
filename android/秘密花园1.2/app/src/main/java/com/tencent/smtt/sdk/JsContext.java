package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.export.external.jscore.interfaces.IX5JsContext;
import com.tencent.smtt.export.external.jscore.interfaces.IX5JsError;
import com.tencent.smtt.export.external.jscore.interfaces.IX5JsValue;
import java.net.URL;

/* loaded from: classes.dex */
public final class JsContext {
    public final JsVirtualMachine a;
    public final IX5JsContext b;

    /* renamed from: c  reason: collision with root package name */
    public ExceptionHandler f2479c;

    /* renamed from: d  reason: collision with root package name */
    public String f2480d;

    /* loaded from: classes.dex */
    public interface ExceptionHandler {
        void handleException(JsContext jsContext, JsError jsError);
    }

    public JsContext(Context context) {
        this(new JsVirtualMachine(context));
    }

    public static JsContext current() {
        return (JsContext) X5JsCore.a();
    }

    public void addJavascriptInterface(Object obj, String str) {
        this.b.addJavascriptInterface(obj, str);
    }

    public void destroy() {
        this.b.destroy();
    }

    public void evaluateJavascript(String str, android.webkit.ValueCallback<String> valueCallback) {
        evaluateJavascript(str, valueCallback, null);
    }

    public JsValue evaluateScript(String str) {
        return evaluateScript(str, null);
    }

    public void evaluateScriptAsync(String str, final android.webkit.ValueCallback<JsValue> valueCallback, URL url) {
        this.b.evaluateScriptAsync(str, valueCallback == null ? null : new android.webkit.ValueCallback<IX5JsValue>() { // from class: com.tencent.smtt.sdk.JsContext.1
            @Override // android.webkit.ValueCallback
            /* renamed from: a */
            public void onReceiveValue(IX5JsValue iX5JsValue) {
                valueCallback.onReceiveValue(iX5JsValue == null ? null : new JsValue(JsContext.this, iX5JsValue));
            }
        }, url);
    }

    public ExceptionHandler exceptionHandler() {
        return this.f2479c;
    }

    public byte[] getNativeBuffer(int i2) {
        return this.b.getNativeBuffer(i2);
    }

    public int getNativeBufferId() {
        return this.b.getNativeBufferId();
    }

    public String name() {
        return this.f2480d;
    }

    public void removeJavascriptInterface(String str) {
        this.b.removeJavascriptInterface(str);
    }

    public void setExceptionHandler(ExceptionHandler exceptionHandler) {
        this.f2479c = exceptionHandler;
        if (exceptionHandler == null) {
            this.b.setExceptionHandler(null);
        } else {
            this.b.setExceptionHandler(new android.webkit.ValueCallback<IX5JsError>() { // from class: com.tencent.smtt.sdk.JsContext.2
                @Override // android.webkit.ValueCallback
                /* renamed from: a */
                public void onReceiveValue(IX5JsError iX5JsError) {
                    JsContext.this.f2479c.handleException(JsContext.this, new JsError(iX5JsError));
                }
            });
        }
    }

    public void setName(String str) {
        this.f2480d = str;
        this.b.setName(str);
    }

    public int setNativeBuffer(int i2, byte[] bArr) {
        return this.b.setNativeBuffer(i2, bArr);
    }

    public void stealValueFromOtherCtx(String str, JsContext jsContext, String str2) {
        this.b.stealValueFromOtherCtx(str, jsContext.b, str2);
    }

    public JsVirtualMachine virtualMachine() {
        return this.a;
    }

    public JsContext(JsVirtualMachine jsVirtualMachine) {
        if (jsVirtualMachine != null) {
            this.a = jsVirtualMachine;
            IX5JsContext a = jsVirtualMachine.a();
            this.b = a;
            try {
                a.setPerContextData(this);
                return;
            } catch (AbstractMethodError unused) {
                return;
            }
        }
        throw new IllegalArgumentException("The virtualMachine value can not be null");
    }

    public void evaluateJavascript(String str, android.webkit.ValueCallback<String> valueCallback, URL url) {
        this.b.evaluateJavascript(str, valueCallback, url);
    }

    public JsValue evaluateScript(String str, URL url) {
        IX5JsValue evaluateScript = this.b.evaluateScript(str, url);
        if (evaluateScript == null) {
            return null;
        }
        return new JsValue(this, evaluateScript);
    }
}
