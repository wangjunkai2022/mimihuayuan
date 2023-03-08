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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: IdJournal.java */
/* loaded from: classes.dex */
public class a implements j<a, e>, Serializable, Cloneable {

    /* renamed from: e  reason: collision with root package name */
    public static final Map<e, v> f3302e;

    /* renamed from: f  reason: collision with root package name */
    public static final long f3303f = 9132678615281394583L;

    /* renamed from: g  reason: collision with root package name */
    public static final an f3304g = new an("IdJournal");

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3305h = new ad("domain", (byte) 11, 1);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3306i = new ad("old_id", (byte) 11, 2);

    /* renamed from: j  reason: collision with root package name */
    public static final ad f3307j = new ad("new_id", (byte) 11, 3);

    /* renamed from: k  reason: collision with root package name */
    public static final ad f3308k = new ad("ts", (byte) 10, 4);

    /* renamed from: l  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3309l;

    /* renamed from: m  reason: collision with root package name */
    public static final int f3310m = 0;
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f3311c;

    /* renamed from: d  reason: collision with root package name */
    public long f3312d;
    public byte n;
    public e[] o;

    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0026a extends as<a> {
        public C0026a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, a aVar) throws p {
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
                            if (s != 4) {
                                al.a(aiVar, b);
                            } else if (b == 10) {
                                aVar.f3312d = aiVar.x();
                                aVar.d(true);
                            } else {
                                al.a(aiVar, b);
                            }
                        } else if (b == 11) {
                            aVar.f3311c = aiVar.z();
                            aVar.c(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 11) {
                        aVar.b = aiVar.z();
                        aVar.b(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 11) {
                    aVar.a = aiVar.z();
                    aVar.a(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
            aiVar.k();
            if (aVar.m()) {
                aVar.n();
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'ts' was not found in serialized data! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, a aVar) throws p {
            aVar.n();
            aiVar.a(a.f3304g);
            if (aVar.a != null) {
                aiVar.a(a.f3305h);
                aiVar.a(aVar.a);
                aiVar.c();
            }
            if (aVar.b != null && aVar.g()) {
                aiVar.a(a.f3306i);
                aiVar.a(aVar.b);
                aiVar.c();
            }
            if (aVar.f3311c != null) {
                aiVar.a(a.f3307j);
                aiVar.a(aVar.f3311c);
                aiVar.c();
            }
            aiVar.a(a.f3308k);
            aiVar.a(aVar.f3312d);
            aiVar.c();
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: IdJournal.java */
    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public C0026a b() {
            return new C0026a();
        }
    }

    /* compiled from: IdJournal.java */
    /* loaded from: classes.dex */
    public static class c extends at<a> {
        public c() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void a(ai aiVar, a aVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(aVar.a);
            aoVar.a(aVar.f3311c);
            aoVar.a(aVar.f3312d);
            BitSet bitSet = new BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            aoVar.a(bitSet, 1);
            if (aVar.g()) {
                aoVar.a(aVar.b);
            }
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void b(ai aiVar, a aVar) throws p {
            ao aoVar = (ao) aiVar;
            aVar.a = aoVar.z();
            aVar.a(true);
            aVar.f3311c = aoVar.z();
            aVar.c(true);
            aVar.f3312d = aoVar.x();
            aVar.d(true);
            if (aoVar.b(1).get(0)) {
                aVar.b = aoVar.z();
                aVar.b(true);
            }
        }
    }

    /* compiled from: IdJournal.java */
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
        f3309l = hashMap;
        hashMap.put(as.class, new b());
        f3309l.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DOMAIN, (e) new v("domain", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.OLD_ID, (e) new v("old_id", (byte) 2, new w((byte) 11)));
        enumMap.put((EnumMap) e.NEW_ID, (e) new v("new_id", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new v("ts", (byte) 1, new w((byte) 10)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3302e = unmodifiableMap;
        v.a(a.class, unmodifiableMap);
    }

    public a() {
        this.n = (byte) 0;
        this.o = new e[]{e.OLD_ID};
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public a deepCopy() {
        return new a(this);
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
        this.b = null;
        this.f3311c = null;
        d(false);
        this.f3312d = 0L;
    }

    public boolean d() {
        return this.a != null;
    }

    public String e() {
        return this.b;
    }

    public void f() {
        this.b = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public String h() {
        return this.f3311c;
    }

    public void i() {
        this.f3311c = null;
    }

    public boolean j() {
        return this.f3311c != null;
    }

    public long k() {
        return this.f3312d;
    }

    public void l() {
        this.n = g.b(this.n, 0);
    }

    public boolean m() {
        return g.a(this.n, 0);
    }

    public void n() throws p {
        if (this.a != null) {
            if (this.f3311c != null) {
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'new_id' was not present! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }
        StringBuilder o2 = f.b.a.a.a.o("Required field 'domain' was not present! Struct: ");
        o2.append(toString());
        throw new aj(o2.toString());
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3309l.get(aiVar.D()).b().b(aiVar, this);
    }

    public String toString() {
        StringBuilder q = f.b.a.a.a.q("IdJournal(", "domain:");
        String str = this.a;
        if (str == null) {
            q.append("null");
        } else {
            q.append(str);
        }
        if (g()) {
            q.append(", ");
            q.append("old_id:");
            String str2 = this.b;
            if (str2 == null) {
                q.append("null");
            } else {
                q.append(str2);
            }
        }
        q.append(", ");
        q.append("new_id:");
        String str3 = this.f3311c;
        if (str3 == null) {
            q.append("null");
        } else {
            q.append(str3);
        }
        q.append(", ");
        q.append("ts:");
        q.append(this.f3312d);
        q.append(")");
        return q.toString();
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3309l.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: IdJournal.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");
        

        /* renamed from: e  reason: collision with root package name */
        public static final Map<String, e> f3315e = new HashMap();

        /* renamed from: f  reason: collision with root package name */
        public final short f3317f;

        /* renamed from: g  reason: collision with root package name */
        public final String f3318g;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3315e.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3317f = s;
            this.f3318g = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return null;
                        }
                        return TS;
                    }
                    return NEW_ID;
                }
                return OLD_ID;
            }
            return DOMAIN;
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
            return this.f3318g;
        }

        public static e a(String str) {
            return f3315e.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3317f;
        }
    }

    public a a(String str) {
        this.a = str;
        return this;
    }

    public a b(String str) {
        this.b = str;
        return this;
    }

    public a c(String str) {
        this.f3311c = str;
        return this;
    }

    public void d(boolean z) {
        this.n = g.a(this.n, 0, z);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public void b(boolean z) {
        if (z) {
            return;
        }
        this.b = null;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f3311c = null;
    }

    public a(String str, String str2, long j2) {
        this();
        this.a = str;
        this.f3311c = str2;
        this.f3312d = j2;
        d(true);
    }

    public a a(long j2) {
        this.f3312d = j2;
        d(true);
        return this;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public a(a aVar) {
        this.n = (byte) 0;
        this.o = new e[]{e.OLD_ID};
        this.n = aVar.n;
        if (aVar.d()) {
            this.a = aVar.a;
        }
        if (aVar.g()) {
            this.b = aVar.b;
        }
        if (aVar.j()) {
            this.f3311c = aVar.f3311c;
        }
        this.f3312d = aVar.f3312d;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.n = (byte) 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
