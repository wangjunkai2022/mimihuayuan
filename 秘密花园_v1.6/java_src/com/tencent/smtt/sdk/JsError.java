package com.tencent.smtt.sdk;

import com.tencent.smtt.export.external.jscore.interfaces.IX5JsError;
/* loaded from: classes.dex */
public class JsError {
    public final IX5JsError a;

    public JsError(IX5JsError iX5JsError) {
        this.a = iX5JsError;
    }

    public String getMessage() {
        return this.a.getMessage();
    }

    public String getStack() {
        return this.a.getStack();
    }
}
