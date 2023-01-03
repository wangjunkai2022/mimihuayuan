package i.m0.g;

import h.o.c.g;
import j.c0.a;
import j.k;

/* compiled from: Header.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final k f6621d = k.f6979e.b(":");

    /* renamed from: e  reason: collision with root package name */
    public static final k f6622e = k.f6979e.b(":status");

    /* renamed from: f  reason: collision with root package name */
    public static final k f6623f = k.f6979e.b(":method");

    /* renamed from: g  reason: collision with root package name */
    public static final k f6624g = k.f6979e.b(":path");

    /* renamed from: h  reason: collision with root package name */
    public static final k f6625h = k.f6979e.b(":scheme");

    /* renamed from: i  reason: collision with root package name */
    public static final k f6626i = k.f6979e.b(":authority");
    public final int a;
    public final k b;

    /* renamed from: c  reason: collision with root package name */
    public final k f6627c;

    public c(k kVar, k kVar2) {
        if (kVar == null) {
            g.f("name");
            throw null;
        } else if (kVar2 != null) {
            this.b = kVar;
            this.f6627c = kVar2;
            this.a = kVar.b() + 32 + this.f6627c.b();
        } else {
            g.f("value");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return g.a(this.b, cVar.b) && g.a(this.f6627c, cVar.f6627c);
    }

    public int hashCode() {
        k kVar = this.b;
        int i2 = 0;
        int hashCode = (kVar != null ? kVar.hashCode() : 0) * 31;
        k kVar2 = this.f6627c;
        if (kVar2 != null) {
            i2 = kVar2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        k kVar = this.b;
        if (kVar != null) {
            sb.append(a.r(kVar));
            sb.append(": ");
            k kVar2 = this.f6627c;
            if (kVar2 != null) {
                sb.append(a.r(kVar2));
                return sb.toString();
            }
            throw null;
        }
        throw null;
    }

    /* JADX INFO: 'this' call moved to the top of the method (can break code semantics) */
    public c(String str, String str2) {
        this(k.f6979e.b(str), k.f6979e.b(str2));
        if (str == null) {
            g.f("name");
            throw null;
        } else if (str2 != null) {
        } else {
            g.f("value");
            throw null;
        }
    }

    /* JADX INFO: 'this' call moved to the top of the method (can break code semantics) */
    public c(k kVar, String str) {
        this(kVar, k.f6979e.b(str));
        if (kVar == null) {
            g.f("name");
            throw null;
        } else if (str != null) {
        } else {
            g.f("value");
            throw null;
        }
    }
}
