package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.f;
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
                FileLock e2 = f.e(context);
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

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0096 A[Catch: all -> 0x01c7, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0001, B:6:0x0023, B:8:0x0027, B:13:0x0041, B:14:0x005c, B:16:0x005f, B:18:0x0063, B:19:0x0072, B:21:0x007a, B:23:0x0096, B:36:0x0109, B:38:0x0115, B:39:0x013a, B:40:0x015e, B:42:0x0164, B:43:0x0184, B:44:0x01a4, B:46:0x01c0, B:47:0x01c3, B:27:0x00a7, B:29:0x00ad, B:30:0x00b9, B:32:0x00bd, B:33:0x00ec, B:35:0x00f0, B:9:0x0032, B:11:0x003a), top: B:52:0x0001, inners: #4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x01a4 A[Catch: all -> 0x01c7, TryCatch #3 {, blocks: (B:3:0x0001, B:6:0x0023, B:8:0x0027, B:13:0x0041, B:14:0x005c, B:16:0x005f, B:18:0x0063, B:19:0x0072, B:21:0x007a, B:23:0x0096, B:36:0x0109, B:38:0x0115, B:39:0x013a, B:40:0x015e, B:42:0x0164, B:43:0x0184, B:44:0x01a4, B:46:0x01c0, B:47:0x01c3, B:27:0x00a7, B:29:0x00ad, B:30:0x00b9, B:32:0x00bd, B:33:0x00ec, B:35:0x00f0, B:9:0x0032, B:11:0x003a), top: B:52:0x0001, inners: #4 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(android.content.Context r11) {
        /*
        // Method dump skipped, instructions count: 458
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.t.a(android.content.Context):void");
    }
}
