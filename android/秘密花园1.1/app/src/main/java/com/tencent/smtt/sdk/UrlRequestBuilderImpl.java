package com.tencent.smtt.sdk;

import android.util.Pair;
import com.tencent.smtt.export.external.interfaces.UrlRequest;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class UrlRequestBuilderImpl extends UrlRequest.Builder {
    public static final String a = "UrlRequestBuilderImpl";
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final UrlRequest.Callback f2493c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f2494d;

    /* renamed from: e  reason: collision with root package name */
    public String f2495e;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2497g;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList<Pair<String, String>> f2496f = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    public int f2498h = 3;

    public UrlRequestBuilderImpl(String str, UrlRequest.Callback callback, Executor executor) {
        if (str == null) {
            throw new NullPointerException("URL is required.");
        }
        if (callback == null) {
            throw new NullPointerException("Callback is required.");
        }
        if (executor != null) {
            this.b = str;
            this.f2493c = callback;
            this.f2494d = executor;
            return;
        }
        throw new NullPointerException("Executor is required.");
    }

    @Override // com.tencent.smtt.export.external.interfaces.UrlRequest.Builder
    public UrlRequest build() throws NullPointerException {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return null;
        }
        UrlRequest urlRequest = (UrlRequest) a2.c().b().invokeStaticMethod("com.tencent.tbs.tbsshell.WebCoreProxy", "UrlRequest_getX5UrlRequestProvider", new Class[]{String.class, Integer.TYPE, UrlRequest.Callback.class, Executor.class, Boolean.TYPE, String.class, ArrayList.class}, this.b, Integer.valueOf(this.f2498h), this.f2493c, this.f2494d, Boolean.valueOf(this.f2497g), this.f2495e, this.f2496f);
        if (urlRequest != null) {
            return urlRequest;
        }
        throw new NullPointerException("UrlRequest build fail");
    }

    @Override // com.tencent.smtt.export.external.interfaces.UrlRequest.Builder
    public UrlRequest.Builder setHttpMethod(String str) {
        if (str != null) {
            this.f2495e = str;
            return this;
        }
        throw new NullPointerException("Method is required.");
    }

    @Override // com.tencent.smtt.export.external.interfaces.UrlRequest.Builder
    public UrlRequestBuilderImpl addHeader(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                if ("Accept-Encoding".equalsIgnoreCase(str)) {
                    return this;
                }
                this.f2496f.add(Pair.create(str, str2));
                return this;
            }
            throw new NullPointerException("Invalid header value.");
        }
        throw new NullPointerException("Invalid header name.");
    }

    @Override // com.tencent.smtt.export.external.interfaces.UrlRequest.Builder
    public UrlRequestBuilderImpl disableCache() {
        this.f2497g = true;
        return this;
    }

    @Override // com.tencent.smtt.export.external.interfaces.UrlRequest.Builder
    public UrlRequestBuilderImpl setPriority(int i2) {
        this.f2498h = i2;
        return this;
    }
}
