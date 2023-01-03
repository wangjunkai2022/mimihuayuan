package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ac;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.af;
import com.umeng.commonsdk.proguard.ai;
import com.umeng.commonsdk.proguard.aj;
import com.umeng.commonsdk.proguard.al;
import com.umeng.commonsdk.proguard.an;
import com.umeng.commonsdk.proguard.ao;
import com.umeng.commonsdk.proguard.ap;
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
import com.umeng.commonsdk.proguard.y;
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

/* compiled from: Imprint.java */
/* loaded from: classes.dex */
public class d implements j<d, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, v> f3274d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3275e = 2846460275012375038L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3276f = new an("Imprint");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3277g = new ad("property", ap.f3039k, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3278h = new ad("version", (byte) 8, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3279i = new ad("checksum", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3280j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f3281k = 0;
    public Map<String, com.umeng.commonsdk.statistics.proto.e> a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public String f3282c;

    /* renamed from: l  reason: collision with root package name */
    public byte f3283l;

    /* compiled from: Imprint.java */
    /* loaded from: classes.dex */
    public static class a extends as<d> {
        public a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, d dVar) throws p {
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
                        } else if (b == 11) {
                            dVar.f3282c = aiVar.z();
                            dVar.c(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 8) {
                        dVar.b = aiVar.w();
                        dVar.b(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 13) {
                    af n = aiVar.n();
                    dVar.a = new HashMap(n.f3020c * 2);
                    for (int i2 = 0; i2 < n.f3020c; i2++) {
                        String z = aiVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(aiVar);
                        dVar.a.put(z, eVar);
                    }
                    aiVar.o();
                    dVar.a(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
            aiVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'version' was not found in serialized data! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, d dVar) throws p {
            dVar.l();
            aiVar.a(d.f3276f);
            if (dVar.a != null) {
                aiVar.a(d.f3277g);
                aiVar.a(new af((byte) 11, (byte) 12, dVar.a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                    aiVar.a(entry.getKey());
                    entry.getValue().write(aiVar);
                }
                aiVar.e();
                aiVar.c();
            }
            aiVar.a(d.f3278h);
            aiVar.a(dVar.b);
            aiVar.c();
            if (dVar.f3282c != null) {
                aiVar.a(d.f3279i);
                aiVar.a(dVar.f3282c);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes.dex */
    public static class c extends at<d> {
        public c() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void a(ai aiVar, d dVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(dVar.a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                aoVar.a(entry.getKey());
                entry.getValue().write(aoVar);
            }
            aoVar.a(dVar.b);
            aoVar.a(dVar.f3282c);
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void b(ai aiVar, d dVar) throws p {
            ao aoVar = (ao) aiVar;
            af afVar = new af((byte) 11, (byte) 12, aoVar.w());
            dVar.a = new HashMap(afVar.f3020c * 2);
            for (int i2 = 0; i2 < afVar.f3020c; i2++) {
                String z = aoVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(aoVar);
                dVar.a.put(z, eVar);
            }
            dVar.a(true);
            dVar.b = aoVar.w();
            dVar.b(true);
            dVar.f3282c = aoVar.z();
            dVar.c(true);
        }
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0029d implements ar {
        public C0029d() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3280j = hashMap;
        hashMap.put(as.class, new b());
        f3280j.put(at.class, new C0029d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new v("property", (byte) 1, new y(ap.f3039k, new w((byte) 11), new aa((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new v("version", (byte) 1, new w((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new v("checksum", (byte) 1, new w((byte) 11)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3274d = unmodifiableMap;
        v.a(d.class, unmodifiableMap);
    }

    public d() {
        this.f3283l = (byte) 0;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public d deepCopy() {
        return new d(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.a;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0;
        this.f3282c = null;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public int f() {
        return this.b;
    }

    public void g() {
        this.f3283l = g.b(this.f3283l, 0);
    }

    public boolean h() {
        return g.a(this.f3283l, 0);
    }

    public String i() {
        return this.f3282c;
    }

    public void j() {
        this.f3282c = null;
    }

    public boolean k() {
        return this.f3282c != null;
    }

    public void l() throws p {
        if (this.a != null) {
            if (this.f3282c != null) {
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'checksum' was not present! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }
        StringBuilder o2 = f.b.a.a.a.o("Required field 'property' was not present! Struct: ");
        o2.append(toString());
        throw new aj(o2.toString());
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3280j.get(aiVar.D()).b().b(aiVar, this);
    }

    public String toString() {
        StringBuilder q = f.b.a.a.a.q("Imprint(", "property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            q.append("null");
        } else {
            q.append(map);
        }
        q.append(", ");
        q.append("version:");
        q.append(this.b);
        q.append(", ");
        q.append("checksum:");
        String str = this.f3282c;
        if (str == null) {
            q.append("null");
        } else {
            q.append(str);
        }
        q.append(")");
        return q.toString();
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3280j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        PROPERTY(1, "property"),
        VERSION(2, "version"),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, e> f3285d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3287e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3288f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3285d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3287e = s;
            this.f3288f = str;
        }

        public static e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return CHECKSUM;
                }
                return VERSION;
            }
            return PROPERTY;
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
            return this.f3288f;
        }

        public static e a(String str) {
            return f3285d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3287e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, eVar);
    }

    public void b(boolean z) {
        this.f3283l = g.a(this.f3283l, 0, z);
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f3282c = null;
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i2, String str) {
        this();
        this.a = map;
        this.b = i2;
        b(true);
        this.f3282c = str;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.a = map;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public d a(int i2) {
        this.b = i2;
        b(true);
        return this;
    }

    public d(d dVar) {
        this.f3283l = (byte) 0;
        this.f3283l = dVar.f3283l;
        if (dVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                hashMap.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.a = hashMap;
        }
        this.b = dVar.b;
        if (dVar.k()) {
            this.f3282c = dVar.f3282c;
        }
    }

    public d a(String str) {
        this.f3282c = str;
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f3283l = (byte) 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
