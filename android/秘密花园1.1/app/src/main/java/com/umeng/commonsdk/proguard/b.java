package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.utils.UMUtils;

/* compiled from: UMSysLocation.java */
/* loaded from: classes.dex */
public class b {
    public static final String a = "UMSysLocation";

    /* renamed from: c  reason: collision with root package name */
    public static final int f3048c = 10000;
    public LocationManager b;

    /* renamed from: d  reason: collision with root package name */
    public Context f3049d;

    /* renamed from: e  reason: collision with root package name */
    public d f3050e;

    public b() {
    }

    public synchronized void a(d dVar) {
        Location lastKnownLocation;
        ULog.i(a, "getSystemLocation");
        if (dVar != null && this.f3049d != null) {
            this.f3050e = dVar;
            boolean checkPermission = UMUtils.checkPermission(this.f3049d, "android.permission.ACCESS_COARSE_LOCATION");
            boolean checkPermission2 = UMUtils.checkPermission(this.f3049d, "android.permission.ACCESS_FINE_LOCATION");
            if (!checkPermission && !checkPermission2) {
                if (this.f3050e != null) {
                    this.f3050e.a(null);
                }
                return;
            }
            if (this.b != null) {
                boolean isProviderEnabled = this.b.isProviderEnabled("gps");
                boolean isProviderEnabled2 = this.b.isProviderEnabled("network");
                if (isProviderEnabled || isProviderEnabled2) {
                    ULog.i(a, "getLastKnownLocation(LocationManager.PASSIVE_PROVIDER)");
                    if (checkPermission2) {
                        lastKnownLocation = this.b.getLastKnownLocation("passive");
                    } else if (checkPermission) {
                        lastKnownLocation = this.b.getLastKnownLocation("network");
                    }
                    this.f3050e.a(lastKnownLocation);
                }
                lastKnownLocation = null;
                this.f3050e.a(lastKnownLocation);
            }
        }
    }

    public b(Context context) {
        if (context == null) {
            MLog.e("Context参数不能为null");
            return;
        }
        this.f3049d = context.getApplicationContext();
        this.b = (LocationManager) context.getApplicationContext().getSystemService("location");
    }

    public synchronized void a() {
        ULog.i(a, "destroy");
        if (this.b != null) {
            this.b = null;
        }
    }
}
