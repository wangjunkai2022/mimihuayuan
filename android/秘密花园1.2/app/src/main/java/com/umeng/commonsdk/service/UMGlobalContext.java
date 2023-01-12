package com.umeng.commonsdk.service;

import android.content.Context;
import androidx.core.os.EnvironmentCompat;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.utils.UMUtils;

/* loaded from: classes.dex */
public class UMGlobalContext {
    public static final String TAG = "UMGlobalContext";
    public String mAppVersion;
    public String mAppkey;
    public Context mApplicationContext;
    public String mChannel;
    public int mDeviceType;
    public boolean mIsDebugMode;
    public boolean mIsMainProcess;
    public String mModules;
    public String mProcessName;
    public String mPushSecret;

    /* loaded from: classes.dex */
    public static class a {
        public Context a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public String f3183c;

        /* renamed from: d  reason: collision with root package name */
        public String f3184d;

        /* renamed from: e  reason: collision with root package name */
        public String f3185e;

        /* renamed from: f  reason: collision with root package name */
        public String f3186f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f3187g;

        /* renamed from: h  reason: collision with root package name */
        public String f3188h;

        /* renamed from: i  reason: collision with root package name */
        public String f3189i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f3190j;
    }

    /* loaded from: classes.dex */
    public static class b {
        public static final UMGlobalContext a = new UMGlobalContext();
    }

    public static Context getAppContext(Context context) {
        if (context != null) {
            Context context2 = b.a.mApplicationContext;
            return context2 != null ? context2 : context.getApplicationContext();
        }
        return b.a.mApplicationContext;
    }

    public static UMGlobalContext getInstance() {
        return b.a;
    }

    public static UMGlobalContext newUMGlobalContext(a aVar) {
        getInstance();
        b.a.mDeviceType = aVar.b;
        b.a.mPushSecret = aVar.f3183c;
        b.a.mAppkey = aVar.f3184d;
        b.a.mChannel = aVar.f3185e;
        b.a.mModules = aVar.f3186f;
        b.a.mIsDebugMode = aVar.f3187g;
        b.a.mProcessName = aVar.f3188h;
        b.a.mAppVersion = aVar.f3189i;
        b.a.mIsMainProcess = aVar.f3190j;
        if (aVar.a != null) {
            b.a.mApplicationContext = aVar.a.getApplicationContext();
        }
        return b.a;
    }

    public Context getAppContextDirectly() {
        return this.mApplicationContext;
    }

    public String getAppVersion() {
        return this.mAppVersion;
    }

    public String getAppkey() {
        return this.mAppkey;
    }

    public String getChannel() {
        return this.mChannel;
    }

    public int getDeviceType() {
        return this.mDeviceType;
    }

    public String getProcessName(Context context) {
        if (context != null) {
            if (b.a.mApplicationContext != null) {
                return this.mProcessName;
            }
            return UMFrUtils.getCurrentProcessName(context);
        }
        return b.a.mProcessName;
    }

    public String getPushSecret() {
        return this.mPushSecret;
    }

    public boolean hasAnalyticsSdk() {
        return this.mModules.contains("a");
    }

    public boolean hasErrorSdk() {
        return this.mModules.contains("e");
    }

    public boolean hasInternalModule() {
        return true;
    }

    public boolean hasOplusModule() {
        return this.mModules.contains("o");
    }

    public boolean hasPushSdk() {
        return this.mModules.contains(e.ao);
    }

    public boolean hasShareSdk() {
        return this.mModules.contains(e.ap);
    }

    public boolean hasVisualDebugSdk() {
        return this.mModules.contains("x");
    }

    public boolean hasVisualSdk() {
        return this.mModules.contains("v");
    }

    public boolean isDebugMode() {
        return this.mIsDebugMode;
    }

    public boolean isMainProcess(Context context) {
        if (context != null && b.a.mApplicationContext == null) {
            return UMUtils.isMainProgress(context.getApplicationContext());
        }
        return b.a.mIsMainProcess;
    }

    public String toString() {
        if (b.a.mApplicationContext != null) {
            StringBuilder sb = new StringBuilder("[");
            StringBuilder o = f.b.a.a.a.o("devType:");
            o.append(this.mDeviceType);
            o.append(",");
            sb.append(o.toString());
            sb.append("appkey:" + this.mAppkey + ",");
            sb.append("channel:" + this.mChannel + ",");
            sb.append("procName:" + this.mProcessName + "]");
            return sb.toString();
        }
        return "uninitialized.";
    }

    public UMGlobalContext() {
        this.mProcessName = EnvironmentCompat.MEDIA_UNKNOWN;
    }
}
