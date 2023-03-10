package com.umeng.commonsdk.statistics.idtracking;

import androidx.core.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* compiled from: AbstractIdTracker.java */
/* loaded from: classes.dex */
public abstract class a {
    public final int a = 10;
    public final int b = 20;

    /* renamed from: c  reason: collision with root package name */
    public final String f3277c;

    /* renamed from: d  reason: collision with root package name */
    public List<com.umeng.commonsdk.statistics.proto.a> f3278d;

    /* renamed from: e  reason: collision with root package name */
    public com.umeng.commonsdk.statistics.proto.b f3279e;

    public a(String str) {
        this.f3277c = str;
    }

    private boolean g() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f3279e;
        String b = bVar == null ? null : bVar.b();
        int h2 = bVar == null ? 0 : bVar.h();
        String a = a(f());
        if (a == null || a.equals(b)) {
            return false;
        }
        if (bVar == null) {
            bVar = new com.umeng.commonsdk.statistics.proto.b();
        }
        bVar.a(a);
        bVar.a(System.currentTimeMillis());
        bVar.a(h2 + 1);
        com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
        aVar.a(this.f3277c);
        aVar.c(a);
        aVar.b(b);
        aVar.a(bVar.e());
        if (this.f3278d == null) {
            this.f3278d = new ArrayList(2);
        }
        this.f3278d.add(aVar);
        if (this.f3278d.size() > 10) {
            this.f3278d.remove(0);
        }
        this.f3279e = bVar;
        return true;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.f3277c;
    }

    public boolean c() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f3279e;
        return bVar == null || bVar.h() <= 20;
    }

    public com.umeng.commonsdk.statistics.proto.b d() {
        return this.f3279e;
    }

    public List<com.umeng.commonsdk.statistics.proto.a> e() {
        return this.f3278d;
    }

    public abstract String f();

    public void a(com.umeng.commonsdk.statistics.proto.b bVar) {
        this.f3279e = bVar;
    }

    public void a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f3278d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || EnvironmentCompat.MEDIA_UNKNOWN.equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    public void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        this.f3279e = cVar.c().get(this.f3277c);
        List<com.umeng.commonsdk.statistics.proto.a> h2 = cVar.h();
        if (h2 == null || h2.size() <= 0) {
            return;
        }
        if (this.f3278d == null) {
            this.f3278d = new ArrayList();
        }
        for (com.umeng.commonsdk.statistics.proto.a aVar : h2) {
            if (this.f3277c.equals(aVar.a)) {
                this.f3278d.add(aVar);
            }
        }
    }
}
