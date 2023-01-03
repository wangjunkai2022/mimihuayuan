package com.umeng.analytics.process;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: UMProcessDBManager.java */
/* loaded from: classes.dex */
public class c {
    public static c a;
    public ConcurrentHashMap<String, a> b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public Context f2895c;

    public static c a(Context context) {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c();
                }
            }
        }
        c cVar = a;
        cVar.f2895c = context;
        return cVar;
    }

    private a c(String str) {
        if (this.b.get(str) != null) {
            return this.b.get(str);
        }
        a a2 = a.a(this.f2895c, str);
        this.b.put(str, a2);
        return a2;
    }

    public synchronized void b(String str) {
        c(str).b();
    }

    /* compiled from: UMProcessDBManager.java */
    /* loaded from: classes.dex */
    public static class a {
        public AtomicInteger a = new AtomicInteger();
        public SQLiteOpenHelper b;

        /* renamed from: c  reason: collision with root package name */
        public SQLiteDatabase f2896c;

        public static a a(Context context, String str) {
            Context appContext = UMGlobalContext.getAppContext(context);
            a aVar = new a();
            aVar.b = b.a(appContext, str);
            return aVar;
        }

        public synchronized void b() {
            try {
                if (this.a.decrementAndGet() == 0) {
                    this.f2896c.close();
                }
            } catch (Throwable unused) {
            }
        }

        public synchronized SQLiteDatabase a() {
            if (this.a.incrementAndGet() == 1) {
                this.f2896c = this.b.getWritableDatabase();
            }
            return this.f2896c;
        }
    }

    public synchronized SQLiteDatabase a(String str) {
        return c(str).a();
    }
}
