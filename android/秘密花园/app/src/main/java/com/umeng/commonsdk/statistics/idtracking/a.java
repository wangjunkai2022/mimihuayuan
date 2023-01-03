package com.umeng.commonsdk.statistics.idtracking;

import androidx.core.os.EnvironmentCompat;
import com.umeng.commonsdk.statistics.proto.b;
import com.umeng.commonsdk.statistics.proto.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: AbstractIdTracker.java */
/* loaded from: classes.dex */
public abstract class a {
    public final int a = 10;
    public final int b = 20;

    /* renamed from: c  reason: collision with root package name */
    public final String f3198c;

    /* renamed from: d  reason: collision with root package name */
    public List<com.umeng.commonsdk.statistics.proto.a> f3199d;

    /* renamed from: e  reason: collision with root package name */
    public b f3200e;

    public a(String str) {
        this.f3198c = str;
    }

    private boolean g() {
        String str;
        int i2;
        b bVar = this.f3200e;
        if (bVar == null) {
            str = null;
        } else {
            str = bVar.b();
        }
        if (bVar == null) {
            i2 = 0;
        } else {
            i2 = bVar.h();
        }
        String a = a(f());
        if (a == null || a.equals(str)) {
            return false;
        }
        if (bVar == null) {
            bVar = new b();
        }
        bVar.a(a);
        bVar.a(System.currentTimeMillis());
        bVar.a(i2 + 1);
        com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
        aVar.a(this.f3198c);
        aVar.c(a);
        aVar.b(str);
        aVar.a(bVar.e());
        if (this.f3199d == null) {
            this.f3199d = new ArrayList(2);
        }
        this.f3199d.add(aVar);
        if (this.f3199d.size() > 10) {
            this.f3199d.remove(0);
        }
        this.f3200e = bVar;
        return true;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.f3198c;
    }

    public boolean c() {
        b bVar = this.f3200e;
        return bVar == null || bVar.h() <= 20;
    }

    public b d() {
        return this.f3200e;
    }

    public List<com.umeng.commonsdk.statistics.proto.a> e() {
        return this.f3199d;
    }

    public abstract String f();

    public void a(b bVar) {
        this.f3200e = bVar;
    }

    public void a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f3199d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() != 0 && !"0".equals(trim) && !EnvironmentCompat.MEDIA_UNKNOWN.equals(trim.toLowerCase(Locale.US))) {
            return trim;
        }
        return null;
    }

    public void a(c cVar) {
        this.f3200e = cVar.c().get(this.f3198c);
        List<com.umeng.commonsdk.statistics.proto.a> h2 = cVar.h();
        if (h2 != null && h2.size() > 0) {
            if (this.f3199d == null) {
                this.f3199d = new ArrayList();
            }
            for (com.umeng.commonsdk.statistics.proto.a aVar : h2) {
                if (this.f3198c.equals(aVar.a)) {
                    this.f3199d.add(aVar);
                }
            }
        }
    }
}
