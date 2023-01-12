package com.umeng.commonsdk.framework;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONObject;

/* compiled from: UMWorkDispatchImpl.java */
/* loaded from: classes.dex */
public class c {
    public static final String a = "content";
    public static final String b = "header";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2983c = "exception";

    /* renamed from: d  reason: collision with root package name */
    public static HandlerThread f2984d = null;

    /* renamed from: e  reason: collision with root package name */
    public static Handler f2985e = null;

    /* renamed from: f  reason: collision with root package name */
    public static b f2986f = null;

    /* renamed from: g  reason: collision with root package name */
    public static Object f2987g = new Object();

    /* renamed from: h  reason: collision with root package name */
    public static final int f2988h = 768;

    /* renamed from: i  reason: collision with root package name */
    public static final int f2989i = 769;

    /* renamed from: j  reason: collision with root package name */
    public static final int f2990j = 770;

    /* renamed from: k  reason: collision with root package name */
    public static final int f2991k = 784;

    public static void d() {
        JSONObject buildEnvelopeWithExtHeader;
        ULog.d("--->>> delayProcess Enter...");
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> delayProcess Enter...");
        Context appContext = UMModuleRegister.getAppContext();
        if (appContext == null || !UMFrUtils.isOnline(appContext)) {
            return;
        }
        long maxDataSpace = UMEnvelopeBuild.maxDataSpace(appContext);
        UMLogDataProtocol callbackFromModuleName = UMModuleRegister.getCallbackFromModuleName("analytics");
        JSONObject jSONObject = null;
        if (callbackFromModuleName != null) {
            try {
                jSONObject = callbackFromModuleName.setupReportData(maxDataSpace);
                if (jSONObject == null) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> analyticsCB.setupReportData() return null");
                    return;
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(appContext, th);
                return;
            }
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        JSONObject jSONObject2 = (JSONObject) jSONObject.opt("header");
        JSONObject jSONObject3 = (JSONObject) jSONObject.opt("content");
        if (jSONObject2 == null || jSONObject3 == null || (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(appContext, jSONObject2, jSONObject3)) == null) {
            return;
        }
        try {
            if (buildEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> autoProcess: Build envelope error code: " + buildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (Throwable unused) {
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> autoProcess: removeCacheData ... ");
        callbackFromModuleName.removeCacheData(buildEnvelopeWithExtHeader);
    }

    public static synchronized void e() {
        synchronized (c.class) {
            ULog.d("--->>> Dispatch: init Enter...");
            if (f2984d == null) {
                HandlerThread handlerThread = new HandlerThread("work_thread");
                f2984d = handlerThread;
                handlerThread.start();
                if (f2985e == null) {
                    f2985e = new Handler(f2984d.getLooper()) { // from class: com.umeng.commonsdk.framework.c.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            int i2 = message.what;
                            if (i2 == 768) {
                                c.b(message);
                            } else if (i2 == 770) {
                                c.d();
                            } else if (i2 != 784) {
                            } else {
                                c.g();
                            }
                        }
                    };
                }
            }
            ULog.d("--->>> Dispatch: init Exit...");
        }
    }

    public static void f() {
        if (f2984d != null) {
            f2984d = null;
        }
        if (f2985e != null) {
            f2985e = null;
        }
        if (f2986f != null) {
            f2986f = null;
        }
    }

    public static void g() {
        if (f2986f == null || f2984d == null) {
            return;
        }
        b.c();
        ULog.d("--->>> handleQuit: Quit dispatch thread.");
        f2984d.quit();
        f();
    }

    public static void a(UMSenderStateNotify uMSenderStateNotify) {
        if (f2986f != null) {
            b.a(uMSenderStateNotify);
        }
    }

    public static void b(Message message) {
        int i2 = message.arg1;
        Object obj = message.obj;
        UMLogDataProtocol callbackFromModuleName = UMModuleRegister.getCallbackFromModuleName(UMModuleRegister.eventType2ModuleName(i2));
        if (callbackFromModuleName != null) {
            StringBuilder o = f.b.a.a.a.o("--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x");
            o.append(Integer.toHexString(i2));
            o.append("]");
            ULog.d(o.toString());
            callbackFromModuleName.workEvent(obj, i2);
        }
    }

    public static void a(Context context, int i2, UMLogDataProtocol uMLogDataProtocol, Object obj) {
        if (context != null && uMLogDataProtocol != null) {
            UMModuleRegister.registerAppContext(context.getApplicationContext());
            if (UMModuleRegister.registerCallback(i2, uMLogDataProtocol)) {
                if (f2984d == null || f2985e == null) {
                    e();
                }
                try {
                    if (f2985e != null) {
                        if (UMGlobalContext.getInstance().isMainProcess(context) && f2986f == null) {
                            synchronized (f2987g) {
                                UMFrUtils.syncLegacyEnvelopeIfNeeded(context);
                                f2986f = new b(context, f2985e);
                            }
                        }
                        Message obtainMessage = f2985e.obtainMessage();
                        obtainMessage.what = f2988h;
                        obtainMessage.arg1 = i2;
                        obtainMessage.obj = obj;
                        f2985e.sendMessage(obtainMessage);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(UMModuleRegister.getAppContext(), th);
                    return;
                }
            }
            return;
        }
        ULog.d("--->>> Context or UMLogDataProtocol parameter cannot be null!");
    }

    public static void a(long j2) {
        Handler handler = f2985e;
        if (handler != null) {
            if (handler.hasMessages(f2990j)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> MSG_DELAY_PROCESS has exist. do nothing.");
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> MSG_DELAY_PROCESS not exist. send it.");
            Message obtainMessage = f2985e.obtainMessage();
            obtainMessage.what = f2990j;
            f2985e.sendMessageDelayed(obtainMessage, j2);
        }
    }

    public static synchronized boolean a(int i2) {
        synchronized (c.class) {
            if (f2985e == null) {
                return false;
            }
            return f2985e.hasMessages(i2);
        }
    }

    public static void a() {
        Handler handler = f2985e;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.what = f2991k;
            f2985e.sendMessage(obtainMessage);
        }
    }
}
