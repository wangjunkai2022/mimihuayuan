package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SystemLayerUtil.java */
/* loaded from: classes.dex */
public class j {
    public static final String a = "info";
    public static final String b = "stat";

    /* renamed from: c  reason: collision with root package name */
    public static boolean f3047c = false;

    /* renamed from: d  reason: collision with root package name */
    public static HandlerThread f3048d = null;

    /* renamed from: e  reason: collision with root package name */
    public static Context f3049e = null;

    /* renamed from: f  reason: collision with root package name */
    public static int f3050f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static int f3051g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static int f3052h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static int f3053i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static long f3054j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static long f3055k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f3056l = 40;

    /* renamed from: m  reason: collision with root package name */
    public static final int f3057m = 50000;
    public static SensorManager n;
    public static ArrayList<float[]> o = new ArrayList<>();
    public static SensorEventListener p = new SensorEventListener() { // from class: com.umeng.commonsdk.internal.utils.j.1
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (j.f3051g >= 15) {
                if (j.f3050f < 20) {
                    j.e();
                    j.o.add(sensorEvent.values.clone());
                }
                if (j.f3050f == 20) {
                    j.e();
                    if (j.f3053i == 1) {
                        long unused = j.f3054j = System.currentTimeMillis();
                    }
                    if (j.f3053i == 2) {
                        long unused2 = j.f3055k = System.currentTimeMillis();
                    }
                    j.h();
                    j.l();
                    return;
                }
                return;
            }
            j.c();
        }
    };

    /* compiled from: SystemLayerUtil.java */
    /* loaded from: classes.dex */
    public static class a {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public long f3058c;
    }

    public static /* synthetic */ int c() {
        int i2 = f3051g;
        f3051g = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int e() {
        int i2 = f3050f;
        f3050f = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int h() {
        int i2 = f3053i;
        f3053i = i2 + 1;
        return i2;
    }

    public static void l() {
        SensorManager sensorManager = n;
        if (sensorManager != null) {
            sensorManager.unregisterListener(p);
        }
        if (o.size() == 40) {
            f(f3049e);
            ArrayList<float[]> arrayList = o;
            if (arrayList != null) {
                arrayList.clear();
            }
            HandlerThread handlerThread = f3048d;
            if (handlerThread != null) {
                handlerThread.quit();
                f3048d = null;
            }
            f3049e = null;
            f3047c = false;
        }
    }

    public static JSONArray c(Context context) {
        String string;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("info", 0);
        if (sharedPreferences == null || (string = sharedPreferences.getString("stat", null)) == null) {
            return null;
        }
        try {
            return new JSONArray(string);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void d(Context context) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().getSharedPreferences("info", 0).edit().remove("stat").commit();
    }

    public static List<a> e(Context context) {
        if (context != null && DeviceConfig.checkPermission(context, "android.permission.CAMERA")) {
            ArrayList arrayList = new ArrayList();
            try {
                CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                if (cameraManager != null) {
                    for (String str : cameraManager.getCameraIdList()) {
                        Size size = (Size) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
                        if (size != null) {
                            a aVar = new a();
                            aVar.a = size.getWidth();
                            aVar.b = size.getHeight();
                            aVar.f3058c = System.currentTimeMillis();
                            arrayList.add(aVar);
                        }
                    }
                }
            } catch (Exception unused) {
                ULog.i("camera access exception");
            }
            return arrayList;
        }
        return null;
    }

    public static void f(Context context) {
        int i2;
        if (context == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < 2; i3++) {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray2 = new JSONArray();
                int i4 = 20;
                if (i3 == 1) {
                    i2 = 40;
                } else {
                    i4 = 0;
                    i2 = 20;
                }
                while (i4 < i2) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", o.get(i4)[0]);
                    jSONObject2.put("y", o.get(i4)[1]);
                    jSONObject2.put("z", o.get(i4)[2]);
                    jSONArray2.put(jSONObject2);
                    i4++;
                }
                if (f3052h == 4) {
                    jSONObject.put("g", jSONArray2);
                } else if (f3052h == 1) {
                    jSONObject.put("a", jSONArray2);
                }
                if (i3 == 0) {
                    jSONObject.put("ts", f3054j);
                } else {
                    jSONObject.put("ts", f3055k);
                }
                jSONArray.put(jSONObject);
                UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f3001l, com.umeng.commonsdk.internal.b.a(context).a(), jSONArray.toString());
            }
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
        }
    }

    public static List<Sensor> a(Context context) {
        SensorManager sensorManager;
        if (context == null || (sensorManager = (SensorManager) context.getSystemService(com.umeng.commonsdk.proguard.e.aa)) == null) {
            return null;
        }
        return sensorManager.getSensorList(-1);
    }

    public static void b(Context context) {
        if (context == null || a()) {
            return;
        }
        f3047c = true;
        f3049e = context.getApplicationContext();
        String currentProcessName = UMFrUtils.getCurrentProcessName(context);
        String packageName = context.getPackageName();
        if (currentProcessName == null || !currentProcessName.equals(packageName)) {
            return;
        }
        SensorManager sensorManager = (SensorManager) context.getSystemService(com.umeng.commonsdk.proguard.e.aa);
        n = sensorManager;
        if (sensorManager != null) {
            final Sensor defaultSensor = sensorManager.getDefaultSensor(4);
            final Sensor defaultSensor2 = n.getDefaultSensor(1);
            if (defaultSensor != null) {
                f3052h = 4;
                n.registerListener(p, defaultSensor, f3057m);
            } else if (defaultSensor2 != null) {
                f3052h = 1;
                n.registerListener(p, defaultSensor2, f3057m);
            }
            HandlerThread handlerThread = new HandlerThread("sensor_thread");
            f3048d = handlerThread;
            handlerThread.start();
            new Handler(f3048d.getLooper()).postDelayed(new Runnable() { // from class: com.umeng.commonsdk.internal.utils.j.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        int unused = j.f3050f = 0;
                        if (defaultSensor != null) {
                            j.n.registerListener(j.p, defaultSensor, j.f3057m);
                        } else if (defaultSensor2 != null) {
                            j.n.registerListener(j.p, defaultSensor2, j.f3057m);
                        }
                    } catch (Exception unused2) {
                        ULog.i("sensor exception");
                    }
                }
            }, (new Random().nextInt(3) * 1000) + 4000);
        }
    }

    public static synchronized boolean a() {
        boolean z;
        synchronized (j.class) {
            z = f3047c;
        }
        return z;
    }
}
