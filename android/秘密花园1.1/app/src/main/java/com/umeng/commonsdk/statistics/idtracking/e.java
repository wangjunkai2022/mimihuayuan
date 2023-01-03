package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: IdTracker.java */
/* loaded from: classes.dex */
public class e {
    public static final long a = 86400000;
    public static e b;

    /* renamed from: j  reason: collision with root package name */
    public static Object f3201j = new Object();

    /* renamed from: d  reason: collision with root package name */
    public File f3203d;

    /* renamed from: f  reason: collision with root package name */
    public long f3205f;

    /* renamed from: i  reason: collision with root package name */
    public a f3208i;

    /* renamed from: c  reason: collision with root package name */
    public final String f3202c = "umeng_it.cache";

    /* renamed from: e  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.proto.c f3204e = null;

    /* renamed from: h  reason: collision with root package name */
    public Set<com.umeng.commonsdk.statistics.idtracking.a> f3207h = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    public long f3206g = 86400000;

    /* compiled from: IdTracker.java */
    /* loaded from: classes.dex */
    public static class a {
        public Context a;
        public Set<String> b = new HashSet();

        public a(Context context) {
            this.a = context;
        }

        public synchronized boolean a(String str) {
            return !this.b.contains(str);
        }

        public synchronized void b(String str) {
            this.b.add(str);
        }

        public void c(String str) {
            this.b.remove(str);
        }

        public synchronized void a() {
            if (!this.b.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (String str : this.b) {
                    sb.append(str);
                    sb.append(',');
                }
                sb.deleteCharAt(sb.length() - 1);
                PreferenceWrapper.getDefault(this.a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        public synchronized void b() {
            String[] split;
            String string = PreferenceWrapper.getDefault(this.a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (split = string.split(",")) != null) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.b.add(str);
                    }
                }
            }
        }
    }

    public e(Context context) {
        this.f3208i = null;
        this.f3203d = new File(context.getFilesDir(), "umeng_it.cache");
        a aVar = new a(context);
        this.f3208i = aVar;
        aVar.b();
    }

    public static synchronized e a(Context context) {
        e eVar;
        synchronized (e.class) {
            if (b == null) {
                e eVar2 = new e(context);
                b = eVar2;
                eVar2.a(new f(context));
                b.a(new b(context));
                b.a(new r(context));
                b.a(new d(context));
                b.a(new c(context));
                b.a(new g(context));
                b.a(new j());
                b.a(new s(context));
                q qVar = new q(context);
                if (!TextUtils.isEmpty(qVar.f())) {
                    b.a(qVar);
                }
                i iVar = new i(context);
                if (iVar.g()) {
                    b.a(iVar);
                    b.a(new h(context));
                    iVar.i();
                }
                if (SdkVersion.SDK_TYPE != 1) {
                    b.a(new p(context));
                    b.a(new m(context));
                    b.a(new o(context));
                    b.a(new n(context));
                    b.a(new l(context));
                    b.a(new k(context));
                }
                b.e();
            }
            eVar = b;
        }
        return eVar;
    }

    private synchronized void g() {
        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f3207h) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    hashMap.put(aVar.b(), aVar.d());
                }
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        cVar.a(arrayList);
        cVar.a(hashMap);
        synchronized (this) {
            this.f3204e = cVar;
        }
    }

    private com.umeng.commonsdk.statistics.proto.c h() {
        Throwable th;
        FileInputStream fileInputStream;
        synchronized (f3201j) {
            if (this.f3203d.exists()) {
                try {
                    fileInputStream = new FileInputStream(this.f3203d);
                } catch (Exception e2) {
                    e = e2;
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = null;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
                try {
                    try {
                        byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
                        new com.umeng.commonsdk.proguard.m().a(cVar, readStreamToByteArray);
                        HelperUtils.safeClose(fileInputStream);
                        return cVar;
                    } catch (Throwable th3) {
                        th = th3;
                        HelperUtils.safeClose(fileInputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    HelperUtils.safeClose(fileInputStream);
                    return null;
                }
            }
            return null;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.c b() {
        return this.f3204e;
    }

    public String c() {
        return null;
    }

    public synchronized void d() {
        boolean z = false;
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f3207h) {
            if (aVar.c() && aVar.e() != null && !aVar.e().isEmpty()) {
                aVar.a((List<com.umeng.commonsdk.statistics.proto.a>) null);
                z = true;
            }
        }
        if (z) {
            this.f3204e.b(false);
            f();
        }
    }

    public synchronized void e() {
        com.umeng.commonsdk.statistics.proto.c h2 = h();
        if (h2 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f3207h.size());
        synchronized (this) {
            this.f3204e = h2;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f3207h) {
                aVar.a(this.f3204e);
                if (!aVar.c()) {
                    arrayList.add(aVar);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f3207h.remove((com.umeng.commonsdk.statistics.idtracking.a) it.next());
            }
            g();
        }
    }

    public synchronized void f() {
        if (this.f3204e != null) {
            a(this.f3204e);
        }
    }

    private boolean a(com.umeng.commonsdk.statistics.idtracking.a aVar) {
        if (this.f3208i.a(aVar.b())) {
            return this.f3207h.add(aVar);
        }
        if (AnalyticsConstants.UM_DEBUG) {
            StringBuilder o = f.b.a.a.a.o("invalid domain: ");
            o.append(aVar.b());
            MLog.w(o.toString());
            return false;
        }
        return false;
    }

    public void a(long j2) {
        this.f3206g = j2;
    }

    public synchronized void a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f3205f >= this.f3206g) {
            boolean z = false;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f3207h) {
                if (aVar.c() && aVar.a()) {
                    z = true;
                    if (!aVar.c()) {
                        this.f3208i.b(aVar.b());
                    }
                }
            }
            if (z) {
                g();
                this.f3208i.a();
                f();
            }
            this.f3205f = currentTimeMillis;
        }
    }

    private void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        byte[] a2;
        synchronized (f3201j) {
            if (cVar != null) {
                try {
                    synchronized (this) {
                        a2 = new com.umeng.commonsdk.proguard.s().a(cVar);
                    }
                    if (a2 != null) {
                        HelperUtils.writeFile(this.f3203d, a2);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
