package com.umeng.commonsdk.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.c;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import java.io.File;
import java.util.ArrayList;

/* compiled from: UMNetWorkSender.java */
/* loaded from: classes.dex */
public class b implements UMImprintChangeCallback {
    public static HandlerThread a = null;
    public static Handler b = null;

    /* renamed from: c  reason: collision with root package name */
    public static Handler f2897c = null;

    /* renamed from: d  reason: collision with root package name */
    public static final int f2898d = 200;

    /* renamed from: e  reason: collision with root package name */
    public static final int f2899e = 273;

    /* renamed from: f  reason: collision with root package name */
    public static final int f2900f = 274;

    /* renamed from: g  reason: collision with root package name */
    public static final int f2901g = 512;

    /* renamed from: h  reason: collision with root package name */
    public static final int f2902h = 769;

    /* renamed from: i  reason: collision with root package name */
    public static a f2903i = null;

    /* renamed from: j  reason: collision with root package name */
    public static ConnectivityManager f2904j = null;

    /* renamed from: k  reason: collision with root package name */
    public static NetworkInfo f2905k = null;

    /* renamed from: l  reason: collision with root package name */
    public static IntentFilter f2906l = null;

    /* renamed from: m  reason: collision with root package name */
    public static boolean f2907m = false;
    public static ArrayList<UMSenderStateNotify> n = null;
    public static final String p = "report_policy";
    public static final String q = "report_interval";
    public static boolean r = false;
    public static final int s = 15000;
    public static int t = 15000;
    public static Object o = new Object();
    public static Object u = new Object();
    public static BroadcastReceiver v = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.b.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int size;
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                Context appContext = UMModuleRegister.getAppContext();
                ConnectivityManager unused = b.f2904j = (ConnectivityManager) appContext.getSystemService("connectivity");
                try {
                    if (b.f2904j != null) {
                        NetworkInfo unused2 = b.f2905k = b.f2904j.getActiveNetworkInfo();
                        if (b.f2905k == null || !b.f2905k.isAvailable()) {
                            ULog.i("--->>> network disconnected.");
                            boolean unused3 = b.f2907m = false;
                            return;
                        }
                        ULog.i("--->>> network isAvailable, check if there are any files to send.");
                        boolean unused4 = b.f2907m = true;
                        synchronized (b.o) {
                            if (b.n != null && (size = b.n.size()) > 0) {
                                for (int i2 = 0; i2 < size; i2++) {
                                    ((UMSenderStateNotify) b.n.get(i2)).onConnectionAvailable();
                                }
                            }
                        }
                        b.c(273);
                        if (b.f2905k.getType() == 1 && context != null) {
                            try {
                                if (!UMWorkDispatch.eventHasExist(com.umeng.commonsdk.internal.a.f2924j)) {
                                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f2924j, com.umeng.commonsdk.internal.b.a(context).a(), null);
                                }
                            } catch (Throwable unused5) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(appContext, th);
                }
            }
        }
    };

    /* compiled from: UMNetWorkSender.java */
    /* loaded from: classes.dex */
    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if ((i2 & 8) == 8) {
                ULog.d("--->>> envelope file created >>> " + str);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
                b.c(273);
            }
        }
    }

    public b(Context context, Handler handler) {
        f2897c = handler;
        try {
            if (a == null) {
                HandlerThread handlerThread = new HandlerThread("NetWorkSender");
                a = handlerThread;
                handlerThread.start();
                if (f2903i == null) {
                    a aVar = new a(UMFrUtils.getEnvelopeDirPath(context));
                    f2903i = aVar;
                    aVar.startWatching();
                    ULog.d("--->>> FileMonitor has already started!");
                }
                Context appContext = UMModuleRegister.getAppContext();
                if (DeviceConfig.checkPermission(appContext, "android.permission.ACCESS_NETWORK_STATE") && f2906l == null) {
                    IntentFilter intentFilter = new IntentFilter();
                    f2906l = intentFilter;
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    if (v != null) {
                        appContext.registerReceiver(v, f2906l);
                    }
                }
                m();
                if (b == null) {
                    b = new Handler(a.getLooper()) { // from class: com.umeng.commonsdk.framework.b.2
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            int i2 = message.what;
                            if (i2 == 273) {
                                ULog.d("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                                b.q();
                            } else if (i2 == 274) {
                                b.o();
                            } else if (i2 == 512) {
                                b.p();
                            }
                        }
                    };
                }
                ImprintHandler.getImprintService(context).registImprintCallback(p, this);
                ImprintHandler.getImprintService(context).registImprintCallback(q, this);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static int b() {
        int i2;
        synchronized (u) {
            i2 = t;
        }
        return i2;
    }

    public static void c() {
        c(512);
    }

    public static void d() {
        b(273);
    }

    public static void e() {
        a((int) f2900f, (int) PathInterpolatorCompat.MAX_NUM_POINTS);
    }

    private void m() {
        synchronized (u) {
            if ("11".equals(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), p, ""))) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                r = true;
                t = s;
                int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), q, "15")).intValue();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + intValue);
                if (intValue >= 15 && intValue <= 90) {
                    t = intValue * 1000;
                }
                t = s;
            } else {
                r = false;
            }
        }
    }

    public static void n() {
        if (a != null) {
            a = null;
        }
        if (b != null) {
            b = null;
        }
        if (f2897c != null) {
            f2897c = null;
        }
    }

    public static void o() {
        int size;
        synchronized (o) {
            if (n != null && (size = n.size()) > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    n.get(i2).onSenderIdle();
                }
            }
        }
    }

    public static void p() {
        a aVar = f2903i;
        if (aVar != null) {
            aVar.stopWatching();
            f2903i = null;
        }
        if (f2906l != null) {
            if (v != null) {
                UMModuleRegister.getAppContext().unregisterReceiver(v);
                v = null;
            }
            f2906l = null;
        }
        ULog.d("--->>> handleQuit: Quit sender thread.");
        HandlerThread handlerThread = a;
        if (handlerThread != null) {
            handlerThread.quit();
            n();
        }
    }

    public static void q() {
        ULog.d("--->>> handleProcessNext: Enter...");
        if (f2907m) {
            Context appContext = UMModuleRegister.getAppContext();
            try {
                if (UMFrUtils.envelopeFileNumber(appContext) > 0) {
                    ULog.d("--->>> The envelope file exists.");
                    if (UMFrUtils.envelopeFileNumber(appContext) > 200) {
                        ULog.d("--->>> Number of envelope files is greater than 200, remove old files first.");
                        UMFrUtils.removeRedundantEnvelopeFiles(appContext, 200);
                    }
                    File envelopeFile = UMFrUtils.getEnvelopeFile(appContext);
                    if (envelopeFile != null) {
                        String path = envelopeFile.getPath();
                        ULog.d("--->>> Ready to send envelope file [" + path + "].");
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send envelope file [ " + path + "].");
                        if (new c(appContext).a(envelopeFile)) {
                            ULog.d("--->>> Send envelope file success, delete it.");
                            if (!UMFrUtils.removeEnvelopeFile(envelopeFile)) {
                                ULog.d("--->>> Failed to delete already processed file. We try again after delete failed.");
                                UMFrUtils.removeEnvelopeFile(envelopeFile);
                            }
                            c(273);
                            return;
                        }
                        ULog.d("--->>> Send envelope file failed, abandon and wait next trigger!");
                        return;
                    }
                }
                e();
            } catch (Throwable th) {
                UMCrashManager.reportCrash(appContext, th);
            }
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
    public void onImprintValueChanged(String str, String str2) {
        synchronized (u) {
            if (p.equals(str)) {
                if ("11".equals(str2)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                    r = true;
                    t = s;
                } else {
                    r = false;
                }
            }
            if (q.equals(str)) {
                int intValue = Integer.valueOf(str2).intValue();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + intValue);
                if (intValue >= 15 && intValue <= 90) {
                    t = intValue * 1000;
                }
                t = s;
            }
        }
    }

    public static void c(int i2) {
        Handler handler;
        if (f2907m && (handler = b) != null) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.what = i2;
            b.sendMessage(obtainMessage);
        }
    }

    public static void b(int i2) {
        Handler handler;
        if (f2907m && (handler = b) != null && !handler.hasMessages(i2)) {
            Message obtainMessage = b.obtainMessage();
            obtainMessage.what = i2;
            b.sendMessage(obtainMessage);
        }
    }

    public static void a(UMSenderStateNotify uMSenderStateNotify) {
        synchronized (o) {
            if (n == null) {
                n = new ArrayList<>();
            }
            if (uMSenderStateNotify != null) {
                for (int i2 = 0; i2 < n.size(); i2++) {
                    if (uMSenderStateNotify == n.get(i2)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> addConnStateObserver: input item has exist.");
                        return;
                    }
                }
                n.add(uMSenderStateNotify);
            }
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (u) {
            z = r;
        }
        return z;
    }

    public static void a(int i2, long j2) {
        Handler handler;
        if (f2907m && (handler = b) != null) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.what = i2;
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> sendMsgDelayed: " + j2);
            b.sendMessageDelayed(obtainMessage, j2);
        }
    }

    public static void a(int i2, int i3) {
        Handler handler;
        if (f2907m && (handler = b) != null) {
            handler.removeMessages(i2);
            Message obtainMessage = b.obtainMessage();
            obtainMessage.what = i2;
            b.sendMessageDelayed(obtainMessage, (long) i3);
        }
    }
}
