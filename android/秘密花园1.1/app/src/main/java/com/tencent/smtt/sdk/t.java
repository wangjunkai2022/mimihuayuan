package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.utils.TbsLog;
import java.nio.channels.FileLock;

/* compiled from: X5CoreEngine.java */
/* loaded from: classes.dex */
public class t {
    public static t a;

    /* renamed from: e  reason: collision with root package name */
    public static FileLock f2603e;
    public u b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2604c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2605d;

    public static t a() {
        if (a == null) {
            synchronized (t.class) {
                if (a == null) {
                    a = new t();
                }
            }
        }
        return a;
    }

    public boolean b() {
        if (QbSdk.a) {
            return false;
        }
        return this.f2604c;
    }

    public u c() {
        if (QbSdk.a) {
            return null;
        }
        return this.b;
    }

    public boolean d() {
        return this.f2605d;
    }

    public FileLock b(Context context) {
        TbsLog.i("X5CoreEngine", "tryTbsCoreLoadFileLock ##");
        FileLock fileLock = f2603e;
        if (fileLock != null) {
            return fileLock;
        }
        synchronized (t.class) {
            if (f2603e == null) {
                FileLock e2 = com.tencent.smtt.utils.f.e(context);
                f2603e = e2;
                if (e2 == null) {
                    TbsLog.i("X5CoreEngine", "init -- sTbsCoreLoadFileLock failed!");
                } else {
                    TbsLog.i("X5CoreEngine", "init -- sTbsCoreLoadFileLock succeeded: " + f2603e);
                }
            }
        }
        return f2603e;
    }

    public u a(boolean z) {
        if (z) {
            return this.b;
        }
        return c();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0096 A[Catch: all -> 0x01c7, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0001, B:6:0x0023, B:8:0x0027, B:17:0x005f, B:19:0x0063, B:22:0x007a, B:24:0x0096, B:40:0x0109, B:42:0x0115, B:51:0x01c3, B:43:0x013a, B:44:0x015e, B:46:0x0164, B:47:0x0184, B:48:0x01a4, B:50:0x01c0, B:14:0x0041, B:15:0x005c, B:20:0x0072, B:28:0x00a7, B:30:0x00ad, B:31:0x00b9, B:33:0x00bd, B:34:0x00ec, B:36:0x00f0, B:9:0x0032, B:11:0x003a), top: B:57:0x0001, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01a4 A[Catch: all -> 0x01c7, TryCatch #3 {, blocks: (B:3:0x0001, B:6:0x0023, B:8:0x0027, B:17:0x005f, B:19:0x0063, B:22:0x007a, B:24:0x0096, B:40:0x0109, B:42:0x0115, B:51:0x01c3, B:43:0x013a, B:44:0x015e, B:46:0x0164, B:47:0x0184, B:48:0x01a4, B:50:0x01c0, B:14:0x0041, B:15:0x005c, B:20:0x0072, B:28:0x00a7, B:30:0x00ad, B:31:0x00b9, B:33:0x00bd, B:34:0x00ec, B:36:0x00f0, B:9:0x0032, B:11:0x003a), top: B:57:0x0001, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.t.a(android.content.Context):void");
    }
}
