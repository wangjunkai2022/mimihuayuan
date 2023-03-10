package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SessionIdManager.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: c  reason: collision with root package name */
    public static volatile u f2946c;
    public s a = new t();
    public String b;

    /* renamed from: d  reason: collision with root package name */
    public List<a> f2947d;

    /* renamed from: e  reason: collision with root package name */
    public String f2948e;

    /* compiled from: SessionIdManager.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(String str, long j2, long j3);

        void a(String str, String str2, long j2, long j3);
    }

    public static u a() {
        if (f2946c == null) {
            synchronized (u.class) {
                if (f2946c == null) {
                    f2946c = new u();
                }
            }
        }
        return f2946c;
    }

    private String f(Context context) {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(context).edit();
            edit.putString(q.f2937d, d(context));
            edit.commit();
        } catch (Exception unused) {
        }
        long h2 = h(context);
        long i2 = i(context);
        String str = this.b;
        a(i2, h2, str, false);
        this.b = this.a.a(context);
        a(i2, h2, str, true);
        this.a.a(context, this.b);
        return this.b;
    }

    private boolean g(Context context) {
        return !TextUtils.isEmpty(this.b) && g.a(context).a(this.b) > 0;
    }

    private long h(Context context) {
        return a(context, q.f2939f);
    }

    private long i(Context context) {
        return a(context, q.a);
    }

    private boolean j(Context context) {
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(UMGlobalContext.getAppContext(context));
            long j2 = sharedPreferences.getLong(q.f2938e, 0L);
            long j3 = sharedPreferences.getLong(q.f2939f, 0L);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j3 - j2));
            return this.a.a(j2, j3);
        } catch (Exception unused) {
            return false;
        }
    }

    public long b() {
        return this.a.a();
    }

    public String c(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.b = f(appContext);
        } catch (Exception unused) {
        }
        return this.b;
    }

    public String d(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            try {
                this.b = PreferenceWrapper.getDefault(context).getString(q.f2936c, null);
            } catch (Exception unused) {
            }
        }
        return this.b;
    }

    public boolean e(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            this.b = d(context);
        }
        return TextUtils.isEmpty(this.b) || j(context) || g(context);
    }

    public synchronized String b(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.b = d(appContext);
        if (e(appContext)) {
            try {
                this.b = f(appContext);
            } catch (Exception unused) {
            }
        }
        return this.b;
    }

    public void a(long j2) {
        this.a.a(j2);
    }

    public String a(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        String str = "";
        try {
            synchronized (u.class) {
                str = PreferenceWrapper.getDefault(appContext).getString(q.f2937d, "");
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public void b(a aVar) {
        List<a> list;
        if (aVar == null || (list = this.f2947d) == null || list.size() == 0) {
            return;
        }
        this.f2947d.remove(aVar);
    }

    public String a(Context context, long j2) {
        if (TextUtils.isEmpty(this.f2948e)) {
            String c2 = f.b.a.a.a.c("SUB", j2);
            StringBuilder o = f.b.a.a.a.o(c2);
            StringBuilder o2 = f.b.a.a.a.o("%0");
            o2.append(32 - c2.length());
            o2.append(com.umeng.commonsdk.proguard.e.am);
            o.append(String.format(o2.toString(), 0));
            this.f2948e = o.toString();
        }
        return this.f2948e;
    }

    private long a(Context context, String str) {
        long j2;
        try {
            j2 = PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (Exception unused) {
            j2 = 0;
        }
        return j2 <= 0 ? System.currentTimeMillis() : j2;
    }

    private void a(long j2, long j3, String str, boolean z) {
        List<a> list = this.f2947d;
        if (list != null) {
            for (a aVar : list) {
                if (z) {
                    try {
                        aVar.a(str, this.b, j2, j3);
                    } catch (Exception unused) {
                    }
                } else {
                    aVar.a(this.b, j2, j3);
                }
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f2947d == null) {
            this.f2947d = new ArrayList();
        }
        if (this.f2947d.contains(aVar)) {
            return;
        }
        this.f2947d.add(aVar);
    }
}
