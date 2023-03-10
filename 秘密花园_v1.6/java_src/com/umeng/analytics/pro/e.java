package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMDBManager.java */
/* loaded from: classes.dex */
public class e {
    public static SQLiteOpenHelper b;

    /* renamed from: d  reason: collision with root package name */
    public static Context f2865d;
    public AtomicInteger a;

    /* renamed from: c  reason: collision with root package name */
    public SQLiteDatabase f2866c;

    /* compiled from: UMDBManager.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final e a = new e();
    }

    public static e a(Context context) {
        if (f2865d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            f2865d = applicationContext;
            b = d.a(applicationContext);
        }
        return a.a;
    }

    public synchronized void b() {
        try {
            if (this.a.decrementAndGet() == 0) {
                this.f2866c.close();
            }
        } catch (Throwable unused) {
        }
    }

    public e() {
        this.a = new AtomicInteger();
    }

    public synchronized SQLiteDatabase a() {
        if (this.a.incrementAndGet() == 1) {
            this.f2866c = b.getWritableDatabase();
        }
        return this.f2866c;
    }
}
