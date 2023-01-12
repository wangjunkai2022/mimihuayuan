package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.ac;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.ai;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.proguard.al;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.ao;
import com.umeng.commonsdk.proguard.aq;
import com.umeng.commonsdk.proguard.ar;
import com.umeng.commonsdk.proguard.as;
import com.umeng.commonsdk.proguard.at;
import com.umeng.commonsdk.proguard.au;
import com.umeng.commonsdk.proguard.g;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.p;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.proguard.w;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: IdSnapshot.java */
/* loaded from: classes.dex */
public class b implements j<b, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, v> f3319d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3320e = -6496538196005191531L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3321f = new an("IdSnapshot");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3322g = new ad("identity", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3323h = new ad("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3324i = new ad("version", (byte) 8, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3325j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f3326k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f3327l = 1;
    public String a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public int f3328c;

    /* renamed from: m  reason: collision with root package name */
    public byte f3329m;

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public static class a extends as<b> {
        public a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, b bVar) throws p {
            aiVar.j();
            while (true) {
                ad l2 = aiVar.l();
                byte b = l2.b;
                if (b == 0) {
                    break;
                }
                short s = l2.f3094c;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            al.a(aiVar, b);
                        } else if (b == 8) {
                            bVar.f3328c = aiVar.w();
                            bVar.c(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 10) {
                        bVar.b = aiVar.x();
                        bVar.b(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 11) {
                    bVar.a = aiVar.z();
                    bVar.a(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
            aiVar.k();
            if (bVar.g()) {
                if (bVar.j()) {
                    bVar.k();
                    return;
                }
                StringBuilder o = f.b.a.a.a.o("Required field 'version' was not found in serialized data! Struct: ");
                o.append(toString());
                throw new aj(o.toString());
            }
            StringBuilder o2 = f.b.a.a.a.o("Required field 'ts' was not found in serialized data! Struct: ");
            o2.append(toString());
            throw new aj(o2.toString());
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, b bVar) throws p {
            bVar.k();
            aiVar.a(b.f3321f);
            if (bVar.a != null) {
                aiVar.a(b.f3322g);
                aiVar.a(bVar.a);
                aiVar.c();
            }
            aiVar.a(b.f3323h);
            aiVar.a(bVar.b);
            aiVar.c();
            aiVar.a(b.f3324i);
            aiVar.a(bVar.f3328c);
            aiVar.c();
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0027b implements ar {
        public C0027b() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public static class c extends at<b> {
        public c() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void a(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(bVar.a);
            aoVar.a(bVar.b);
            aoVar.a(bVar.f3328c);
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void b(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            bVar.a = aoVar.z();
            bVar.a(true);
            bVar.b = aoVar.x();
            bVar.b(true);
            bVar.f3328c = aoVar.w();
            bVar.c(true);
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public static class d implements ar {
        public d() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3325j = hashMap;
        hashMap.put(as.class, new C0027b());
        f3325j.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new v("identity", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new v("ts", (byte) 1, new w((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new v("version", (byte) 1, new w((byte) 8)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3319d = unmodifiableMap;
        v.a(b.class, unmodifiableMap);
    }

    public b() {
        this.f3329m = (byte) 0;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public b deepCopy() {
        return new b(this);
    }

    public String b() {
        return this.a;
    }

    public void c() {
        this.a = null;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0L;
        c(false);
        this.f3328c = 0;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.f3329m = g.b(this.f3329m, 0);
    }

    public boolean g() {
        return g.a(this.f3329m, 0);
    }

    public int h() {
        return this.f3328c;
    }

    public void i() {
        this.f3329m = g.b(this.f3329m, 1);
    }

    public boolean j() {
        return g.a(this.f3329m, 1);
    }

    public void k() throws p {
        if (this.a != null) {
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Required field 'identity' was not present! Struct: ");
        o.append(toString());
        throw new aj(o.toString());
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3325j.get(aiVar.D()).b().b(aiVar, this);
    }

    public String toString() {
        StringBuilder q = f.b.a.a.a.q("IdSnapshot(", "identity:");
        String str = this.a;
        if (str == null) {
            q.append("null");
        } else {
            q.append(str);
        }
        q.append(", ");
        q.append("ts:");
        q.append(this.b);
        q.append(", ");
        q.append("version:");
        return f.b.a.a.a.k(q, this.f3328c, ")");
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3325j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, "version");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, e> f3331d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3333e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3334f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3331d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3333e = s;
            this.f3334f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return VERSION;
                }
                return TS;
            }
            return IDENTITY;
        }

        public static e b(int i2) {
            e a = a(i2);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException(f.b.a.a.a.K("Field ", i2, " doesn't exist!"));
        }

        @Override // com.umeng.commonsdk.proguard.q
        public String b() {
            return this.f3334f;
        }

        public static e a(String str) {
            return f3331d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3333e;
        }
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public void b(boolean z) {
        this.f3329m = g.a(this.f3329m, 0, z);
    }

    public void c(boolean z) {
        this.f3329m = g.a(this.f3329m, 1, z);
    }

    public b(String str, long j2, int i2) {
        this();
        this.a = str;
        this.b = j2;
        b(true);
        this.f3328c = i2;
        c(true);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public b a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public b a(int i2) {
        this.f3328c = i2;
        c(true);
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public b(b bVar) {
        this.f3329m = (byte) 0;
        this.f3329m = bVar.f3329m;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        this.b = bVar.b;
        this.f3328c = bVar.f3328c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f3329m = (byte) 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
