package i.m0.g;

/* compiled from: Header.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final j.k f6621d = j.k.f6979e.b(":");

    /* renamed from: e  reason: collision with root package name */
    public static final j.k f6622e = j.k.f6979e.b(":status");

    /* renamed from: f  reason: collision with root package name */
    public static final j.k f6623f = j.k.f6979e.b(":method");

    /* renamed from: g  reason: collision with root package name */
    public static final j.k f6624g = j.k.f6979e.b(":path");

    /* renamed from: h  reason: collision with root package name */
    public static final j.k f6625h = j.k.f6979e.b(":scheme");

    /* renamed from: i  reason: collision with root package name */
    public static final j.k f6626i = j.k.f6979e.b(":authority");
    public final int a;
    public final j.k b;

    /* renamed from: c  reason: collision with root package name */
    public final j.k f6627c;

    public c(j.k kVar, j.k kVar2) {
        if (kVar == null) {
            h.o.c.g.f("name");
            throw null;
        } else if (kVar2 != null) {
            this.b = kVar;
            this.f6627c = kVar2;
            this.a = kVar.b() + 32 + this.f6627c.b();
        } else {
            h.o.c.g.f("value");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return h.o.c.g.a(this.b, cVar.b) && h.o.c.g.a(this.f6627c, cVar.f6627c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        j.k kVar = this.b;
        int hashCode = (kVar != null ? kVar.hashCode() : 0) * 31;
        j.k kVar2 = this.f6627c;
        return hashCode + (kVar2 != null ? kVar2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        j.k kVar = this.b;
        if (kVar != null) {
            sb.append(j.c0.a.r(kVar));
            sb.append(": ");
            j.k kVar2 = this.f6627c;
            if (kVar2 != null) {
                sb.append(j.c0.a.r(kVar2));
                return sb.toString();
            }
            throw null;
        }
        throw null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(String str, String str2) {
        this(j.k.f6979e.b(str), j.k.f6979e.b(str2));
        if (str == null) {
            h.o.c.g.f("name");
            throw null;
        } else if (str2 != null) {
        } else {
            h.o.c.g.f("value");
            throw null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(j.k kVar, String str) {
        this(kVar, j.k.f6979e.b(str));
        if (kVar == null) {
            h.o.c.g.f("name");
            throw null;
        } else if (str != null) {
        } else {
            h.o.c.g.f("value");
            throw null;
        }
    }
}
