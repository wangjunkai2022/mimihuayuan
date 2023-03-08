package com.tencent.smtt.sdk.b.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import com.tencent.smtt.sdk.TbsConfig;
import java.io.BufferedInputStream;
import java.util.Map;

/* compiled from: BrowsingActivityInfo.java */
/* loaded from: classes.dex */
public class b {
    public Context a;
    public ResolveInfo b;

    /* renamed from: c  reason: collision with root package name */
    public Drawable f2615c;

    /* renamed from: d  reason: collision with root package name */
    public String f2616d;

    /* renamed from: e  reason: collision with root package name */
    public String f2617e;

    /* renamed from: f  reason: collision with root package name */
    public int f2618f;

    public b(Context context, ResolveInfo resolveInfo) {
        this.f2618f = 0;
        this.a = context.getApplicationContext();
        this.b = resolveInfo;
        this.f2615c = null;
        this.f2616d = null;
        this.f2617e = null;
    }

    public Drawable a(Map<String, Drawable> map) {
        Drawable a = a(this.a, c());
        if (a == null) {
            ResolveInfo resolveInfo = this.b;
            if (resolveInfo != null) {
                return resolveInfo.loadIcon(this.a.getPackageManager());
            }
            return this.f2615c;
        }
        return a;
    }

    public ResolveInfo b() {
        return this.b;
    }

    public String c() {
        ResolveInfo resolveInfo = this.b;
        if (resolveInfo != null) {
            return resolveInfo.activityInfo.packageName;
        }
        String str = this.f2617e;
        return str == null ? "" : str;
    }

    public String a() {
        ResolveInfo resolveInfo = this.b;
        if (resolveInfo != null) {
            return resolveInfo.loadLabel(this.a.getPackageManager()).toString();
        }
        return this.f2616d;
    }

    public b(Context context, Drawable drawable, String str, String str2) {
        this.f2618f = 0;
        this.a = context.getApplicationContext();
        this.b = null;
        this.f2615c = drawable;
        this.f2616d = str;
        this.f2617e = str2;
    }

    public void a(ResolveInfo resolveInfo) {
        this.b = resolveInfo;
    }

    public static Drawable a(Context context, String str) {
        if (TbsConfig.APP_QB.equals(str)) {
            try {
                return d.a("application_icon");
            } catch (Throwable th) {
                Log.getStackTraceString(th);
                return null;
            }
        }
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo == null) {
                return null;
            }
            Resources resourcesForApplication = packageManager.getResourcesForApplication(applicationInfo);
            TypedValue typedValue = new TypedValue();
            resourcesForApplication.getValue(applicationInfo.icon, typedValue, true);
            try {
                return Drawable.createFromResourceStream(resourcesForApplication, typedValue, new BufferedInputStream(resourcesForApplication.getAssets().openNonAssetFd(typedValue.assetCookie, typedValue.string.toString()).createInputStream()), null);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception e2) {
            f.b.a.a.a.y("e = ", e2);
            return null;
        }
    }
}
