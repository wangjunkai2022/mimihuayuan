package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;

/* compiled from: UMSLNetWorkSender.java */
/* loaded from: classes.dex */
public class d {
    public static final int a = 273;
    public static Context b = null;

    /* renamed from: c  reason: collision with root package name */
    public static HandlerThread f3155c = null;

    /* renamed from: d  reason: collision with root package name */
    public static Handler f3156d = null;

    /* renamed from: f  reason: collision with root package name */
    public static final int f3158f = 512;

    /* renamed from: g  reason: collision with root package name */
    public static IntentFilter f3159g = null;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f3160h = false;

    /* renamed from: e  reason: collision with root package name */
    public static Object f3157e = new Object();

    /* renamed from: i  reason: collision with root package name */
    public static BroadcastReceiver f3161i = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context == null || intent == null) {
                return;
            }
            try {
                if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    Context unused = d.b = context.getApplicationContext();
                    if (d.b != null && (connectivityManager = (ConnectivityManager) d.b.getSystemService("connectivity")) != null) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                            boolean unused2 = d.f3160h = true;
                            ULog.i("walle", "[stateless] net reveiver ok --->>>");
                            d.b(273);
                        } else {
                            ULog.i("walle", "[stateless] net reveiver disconnected --->>>");
                            boolean unused3 = d.f3160h = false;
                        }
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
            }
        }
    };

    public d(Context context) {
        synchronized (f3157e) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    b = applicationContext;
                    if (applicationContext != null && f3155c == null) {
                        HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                        f3155c = handlerThread;
                        handlerThread.start();
                        if (f3156d == null) {
                            f3156d = new Handler(f3155c.getLooper()) { // from class: com.umeng.commonsdk.stateless.d.2
                                @Override // android.os.Handler
                                public void handleMessage(Message message) {
                                    int i2 = message.what;
                                    if (i2 == 273) {
                                        d.e();
                                    } else if (i2 != 512) {
                                    } else {
                                        d.f();
                                    }
                                }
                            };
                        }
                        if (DeviceConfig.checkPermission(b, "android.permission.ACCESS_NETWORK_STATE")) {
                            ULog.i("walle", "[stateless] begin register receiver");
                            if (f3159g == null) {
                                IntentFilter intentFilter = new IntentFilter();
                                f3159g = intentFilter;
                                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                                if (f3161i != null) {
                                    ULog.i("walle", "[stateless] register receiver ok");
                                    b.registerReceiver(f3161i, f3159g);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void e() {
        Context context;
        if (!f3160h || (context = b) == null) {
            return;
        }
        try {
            File a2 = f.a(context);
            if (a2 == null || a2.getParentFile() == null || TextUtils.isEmpty(a2.getParentFile().getName())) {
                return;
            }
            e eVar = new e(b);
            String str = new String(Base64.decode(a2.getParentFile().getName(), 0));
            ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
            byte[] bArr = null;
            try {
                bArr = f.a(a2.getAbsolutePath());
            } catch (Exception unused) {
            }
            if (eVar.a(bArr, str)) {
                ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                File file = new File(a2.getAbsolutePath());
                if (!file.delete()) {
                    ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                    file.delete();
                }
                b(273);
                return;
            }
            ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
        } catch (Throwable th) {
            UMCrashManager.reportCrash(b, th);
        }
    }

    public static void f() {
        if (f3159g != null) {
            BroadcastReceiver broadcastReceiver = f3161i;
            if (broadcastReceiver != null) {
                Context context = b;
                if (context != null) {
                    context.unregisterReceiver(broadcastReceiver);
                }
                f3161i = null;
            }
            f3159g = null;
        }
        HandlerThread handlerThread = f3155c;
        if (handlerThread != null) {
            handlerThread.quit();
            if (f3155c != null) {
                f3155c = null;
            }
            if (f3156d != null) {
                f3156d = null;
            }
        }
    }

    public static void b(int i2) {
        try {
            if (!f3160h || f3156d == null || f3156d.hasMessages(i2)) {
                return;
            }
            ULog.i("walle", "[stateless] sendMsgOnce !!!!");
            Message obtainMessage = f3156d.obtainMessage();
            obtainMessage.what = i2;
            f3156d.sendMessage(obtainMessage);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(b, th);
        }
    }

    public static void a(int i2) {
        Handler handler;
        if (!f3160h || (handler = f3156d) == null) {
            return;
        }
        Message obtainMessage = handler.obtainMessage();
        obtainMessage.what = i2;
        f3156d.sendMessage(obtainMessage);
    }

    public static void a() {
        b(512);
    }
}
