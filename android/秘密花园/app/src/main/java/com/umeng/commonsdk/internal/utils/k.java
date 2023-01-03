package com.umeng.commonsdk.internal.utils;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: UMInternalUtils.java */
/* loaded from: classes.dex */
public class k {
    public static final String a = "um_pri";
    public static final String b = "um_common_strength";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2984c = "um_common_battery";

    public static String a(Context context) {
        if (context != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                return Settings.Secure.getString(context.getContentResolver(), "bluetooth_address");
            }
            if (UMUtils.checkPermission(context, "android.permission.BLUETOOTH")) {
                return BluetoothAdapter.getDefaultAdapter().getAddress();
            }
        }
        return null;
    }

    public static String b(Context context) {
        TelephonyManager telephonyManager;
        if (context == null || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        return telephonyManager.getSimSerialNumber();
    }

    public static String c(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 23 || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            Class<?> cls = telephonyManager.getClass();
            if (((Integer) cls.getMethod("getPhoneCount", new Class[0]).invoke(telephonyManager, new Object[0])).intValue() == 2) {
                return (String) cls.getMethod("getDeviceId", Integer.TYPE).invoke(telephonyManager, 2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:29:0x007a */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:30:0x002d */
    /* JADX DEBUG: Multi-variable search result rejected for r1v4, resolved type: org.json.JSONObject */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.telephony.CellLocation] */
    /* JADX WARN: Type inference failed for: r1v5, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r1v9, types: [org.json.JSONObject] */
    public static JSONObject d(Context context) {
        TelephonyManager telephonyManager;
        if (context == null) {
            return null;
        }
        if ((!UMUtils.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION") && !UMUtils.checkPermission(context, "android.permission.ACCESS_FINE_LOCATION")) || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        JSONObject cellLocation = telephonyManager.getCellLocation();
        int phoneType = telephonyManager.getPhoneType();
        try {
            if (phoneType == 1 && (cellLocation instanceof GsmCellLocation)) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                int cid = gsmCellLocation.getCid();
                if (cid <= 0 || cid == 65535) {
                    return null;
                }
                int lac = gsmCellLocation.getLac();
                cellLocation = new JSONObject();
                cellLocation.put("cid", cid);
                cellLocation.put("lacid", lac);
                cellLocation.put("ts", System.currentTimeMillis());
            } else if (phoneType != 2 || !(cellLocation instanceof CdmaCellLocation)) {
                return null;
            } else {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                int baseStationId = cdmaCellLocation.getBaseStationId();
                int networkId = cdmaCellLocation.getNetworkId();
                cellLocation = new JSONObject();
                cellLocation.put("cid", baseStationId);
                cellLocation.put("lacid", networkId);
                cellLocation.put("ts", System.currentTimeMillis());
            }
        } catch (Exception unused) {
        }
        return cellLocation;
    }

    public static String e(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(b, null);
    }

    public static String f(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f2984c, null);
    }

    public static JSONArray g(Context context) {
        JSONArray jSONArray = new JSONArray();
        if (context != null) {
            SensorManager sensorManager = (SensorManager) context.getSystemService(e.aa);
            if (sensorManager == null) {
                return jSONArray;
            }
            for (Sensor sensor : sensorManager.getSensorList(-1)) {
                if (sensor != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("a_type", sensor.getType());
                        jSONObject.put("a_ven", sensor.getVendor());
                        if (Build.VERSION.SDK_INT >= 24) {
                            jSONObject.put("a_id", sensor.getId());
                        }
                        jSONObject.put(f.b, sensor.getName());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_mar", (double) sensor.getMaximumRange());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_res", (double) sensor.getResolution());
                        jSONObject.put("a_po", (double) sensor.getPower());
                        jSONObject.put("a_mid", sensor.getMinDelay());
                        jSONObject.put("a_mad", sensor.getMaxDelay());
                        jSONObject.put("ts", System.currentTimeMillis());
                    } catch (Exception unused) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }

    public static void b(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context != null && !TextUtils.isEmpty(str) && (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) != null) {
            sharedPreferences.edit().putString(f2984c, str).commit();
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context != null && !TextUtils.isEmpty(str) && (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) != null) {
            sharedPreferences.edit().putString(b, str).commit();
        }
    }
}
