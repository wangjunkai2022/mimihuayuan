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
    public static final Map<e, v> f3244d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3245e = -6496538196005191531L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3246f = new an("IdSnapshot");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3247g = new ad("identity", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3248h = new ad("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3249i = new ad("version", (byte) 8, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3250j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f3251k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f3252l = 1;
    public String a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public int f3253c;

    /* renamed from: m  reason: collision with root package name */
    public byte f3254m;

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public static class a extends as<b> {
        public a() {
        }

        /* renamed from: a */
        public void b(ai aiVar, b bVar) throws p {
            aiVar.j();
            while (true) {
                ad l2 = aiVar.l();
                byte b = l2.b;
                if (b == 0) {
                    break;
                }
                short s = l2.f3019c;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            al.a(aiVar, b);
                        } else if (b == 8) {
                            bVar.f3253c = aiVar.w();
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
            if (!bVar.g()) {
                StringBuilder o = f.b.a.a.a.o("Required field 'ts' was not found in serialized data! Struct: ");
                o.append(toString());
                throw new aj(o.toString());
            } else if (bVar.j()) {
                bVar.k();
            } else {
                StringBuilder o2 = f.b.a.a.a.o("Required field 'version' was not found in serialized data! Struct: ");
                o2.append(toString());
                throw new aj(o2.toString());
            }
        }

        /* renamed from: b */
        public void a(ai aiVar, b bVar) throws p {
            bVar.k();
            aiVar.a(b.f3246f);
            if (bVar.a != null) {
                aiVar.a(b.f3247g);
                aiVar.a(bVar.a);
                aiVar.c();
            }
            aiVar.a(b.f3248h);
            aiVar.a(bVar.b);
            aiVar.c();
            aiVar.a(b.f3249i);
            aiVar.a(bVar.f3253c);
            aiVar.c();
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0020b implements ar {
        public C0020b() {
        }

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

        public void a(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(bVar.a);
            aoVar.a(bVar.b);
            aoVar.a(bVar.f3253c);
        }

        public void b(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            bVar.a = aoVar.z();
            bVar.a(true);
            bVar.b = aoVar.x();
            bVar.b(true);
            bVar.f3253c = aoVar.w();
            bVar.c(true);
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public static class d implements ar {
        public d() {
        }

        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3250j = hashMap;
        hashMap.put(as.class, new C0020b());
        f3250j.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new v("identity", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new v("ts", (byte) 1, new w((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new v("version", (byte) 1, new w((byte) 8)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3244d = unmodifiableMap;
        v.a(b.class, unmodifiableMap);
    }

    public b() {
        this.f3254m = 0;
    }

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
        this.b = 0;
        c(false);
        this.f3253c = 0;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.f3254m = g.b(this.f3254m, 0);
    }

    public boolean g() {
        return g.a(this.f3254m, 0);
    }

    public int h() {
        return this.f3253c;
    }

    public void i() {
        this.f3254m = g.b(this.f3254m, 1);
    }

    public boolean j() {
        return g.a(this.f3254m, 1);
    }

    public void k() throws p {
        if (this.a == null) {
            StringBuilder o = f.b.a.a.a.o("Required field 'identity' was not present! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3250j.get(aiVar.D()).b().b(aiVar, this);
    }

    @Override // java.lang.Object
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
        return f.b.a.a.a.k(q, this.f3253c, ")");
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3250j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, "version");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, e> f3256d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3258e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3259f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3256d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3258e = s;
            this.f3259f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return IDENTITY;
            }
            if (i2 == 2) {
                return TS;
            }
            if (i2 != 3) {
                return null;
            }
            return VERSION;
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
            return this.f3259f;
        }

        public static e a(String str) {
            return f3256d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3258e;
        }
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public void b(boolean z) {
        this.f3254m = g.a(this.f3254m, 0, z);
    }

    public void c(boolean z) {
        this.f3254m = g.a(this.f3254m, 1, z);
    }

    public b(String str, long j2, int i2) {
        this();
        this.a = str;
        this.b = j2;
        b(true);
        this.f3253c = i2;
        c(true);
    }

    public void a(boolean z) {
        if (!z) {
            this.a = null;
        }
    }

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
        this.f3253c = i2;
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
        this.f3254m = 0;
        this.f3254m = bVar.f3254m;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        this.b = bVar.b;
        this.f3253c = bVar.f3253c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f3254m = 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
