package com.umeng.commonsdk.stateless;

import android.content.Context;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.s;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
/* compiled from: UMSLEnvelopeManager.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    public String f3225e;

    /* renamed from: j  reason: collision with root package name */
    public int f3230j;

    /* renamed from: k  reason: collision with root package name */
    public int f3231k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f3232l;

    /* renamed from: m  reason: collision with root package name */
    public byte[] f3233m;
    public final byte[] a = {0, 0, 0, 0, 0, 0, 0, 0};
    public final int b = 1;

    /* renamed from: c  reason: collision with root package name */
    public final int f3223c = 0;

    /* renamed from: d  reason: collision with root package name */
    public String f3224d = "1.0";

    /* renamed from: f  reason: collision with root package name */
    public byte[] f3226f = null;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f3227g = null;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f3228h = null;

    /* renamed from: i  reason: collision with root package name */
    public int f3229i = 0;
    public boolean n = false;

    public c(byte[] bArr, String str, byte[] bArr2) throws Exception {
        this.f3225e = null;
        this.f3230j = 0;
        this.f3231k = 0;
        this.f3232l = null;
        this.f3233m = null;
        if (bArr != null && bArr.length != 0) {
            this.f3225e = str;
            this.f3231k = bArr.length;
            this.f3232l = f.a(bArr);
            this.f3230j = (int) (System.currentTimeMillis() / 1000);
            this.f3233m = bArr2;
            return;
        }
        throw new Exception("entity is null or empty");
    }

    public static c a(Context context, String str, byte[] bArr) {
        try {
            String mac = DeviceConfig.getMac(context);
            String deviceId = DeviceConfig.getDeviceId(context);
            Object[] objArr = new Object[1];
            StringBuilder sb = new StringBuilder();
            sb.append("[stateless] build envelope, raw is  ");
            sb.append(bArr == null);
            sb.append("m app key is ");
            sb.append(str);
            sb.append("device id is ");
            sb.append(deviceId);
            sb.append(", mac is ");
            sb.append(mac);
            objArr[0] = sb.toString();
            ULog.i("walle", objArr);
            c cVar = new c(bArr, str, (deviceId + mac).getBytes());
            cVar.a();
            return cVar;
        } catch (Exception e2) {
            StringBuilder o = f.b.a.a.a.o("[stateless] build envelope, e is ");
            o.append(e2.getMessage());
            ULog.i("walle", o.toString());
            UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static c b(Context context, String str, byte[] bArr) {
        try {
            String mac = DeviceConfig.getMac(context);
            String deviceId = DeviceConfig.getDeviceId(context);
            c cVar = new c(bArr, str, (deviceId + mac).getBytes());
            cVar.a(true);
            cVar.a();
            return cVar;
        } catch (Exception e2) {
            UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    private byte[] c() {
        return a(this.a, (int) (System.currentTimeMillis() / 1000));
    }

    private byte[] d() {
        return f.b((f.c(this.f3226f) + this.f3229i + this.f3230j + this.f3231k + f.c(this.f3227g)).getBytes());
    }

    public byte[] b() {
        b bVar = new b();
        bVar.a(this.f3224d);
        bVar.b(this.f3225e);
        bVar.c(f.c(this.f3226f));
        bVar.a(this.f3229i);
        bVar.b(this.f3230j);
        bVar.c(this.f3231k);
        bVar.a(this.f3232l);
        bVar.d(this.n ? 1 : 0);
        bVar.d(f.c(this.f3227g));
        bVar.e(f.c(this.f3228h));
        try {
            return new s().a(bVar);
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(boolean z) {
        this.n = z;
    }

    public void a() {
        if (this.f3226f == null) {
            this.f3226f = c();
        }
        if (this.n) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.f3226f, 1, bArr, 0, 16);
                this.f3232l = f.a(this.f3232l, bArr);
            } catch (Exception unused) {
            }
        }
        this.f3227g = a(this.f3226f, this.f3230j);
        this.f3228h = d();
    }

    private byte[] a(byte[] bArr, int i2) {
        byte[] b = f.b(this.f3233m);
        byte[] b2 = f.b(this.f3232l);
        int length = b.length;
        int i3 = length * 2;
        byte[] bArr2 = new byte[i3];
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i4 * 2;
            bArr2[i5] = b2[i4];
            bArr2[i5 + 1] = b[i4];
        }
        for (int i6 = 0; i6 < 2; i6++) {
            bArr2[i6] = bArr[i6];
            bArr2[(i3 - i6) - 1] = bArr[(bArr.length - i6) - 1];
        }
        byte[] bArr3 = {(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) (i2 >>> 24)};
        for (int i7 = 0; i7 < i3; i7++) {
            bArr2[i7] = (byte) (bArr2[i7] ^ bArr3[i7 % 4]);
        }
        return bArr2;
    }
}
