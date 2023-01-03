package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.aa;
import com.umeng.commonsdk.proguard.ac;
import com.umeng.commonsdk.proguard.ad;
import com.umeng.commonsdk.proguard.ae;
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
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.p;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.proguard.w;
import com.umeng.commonsdk.proguard.x;
import com.umeng.commonsdk.proguard.y;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: IdTracking.java */
/* loaded from: classes.dex */
public class c implements j<c, e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<e, v> f3260d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3261e = -5764118265293965743L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3262f = new an("IdTracking");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3263g = new ad("snapshots", ap.f3039k, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3264h = new ad("journals", ap.f3041m, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3265i = new ad("checksum", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3266j;
    public Map<String, b> a;
    public List<a> b;

    /* renamed from: c  reason: collision with root package name */
    public String f3267c;

    /* renamed from: k  reason: collision with root package name */
    public e[] f3268k;

    /* compiled from: IdTracking.java */
    /* loaded from: classes.dex */
    public static class a extends as<c> {
        public a() {
        }

        /* renamed from: a */
        public void b(ai aiVar, c cVar) throws p {
            aiVar.j();
            while (true) {
                ad l2 = aiVar.l();
                byte b = l2.b;
                if (b == 0) {
                    aiVar.k();
                    cVar.n();
                    return;
                }
                short s = l2.f3019c;
                int i2 = 0;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            al.a(aiVar, b);
                        } else if (b == 11) {
                            cVar.f3267c = aiVar.z();
                            cVar.c(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 15) {
                        ae p = aiVar.p();
                        cVar.b = new ArrayList(p.b);
                        while (i2 < p.b) {
                            a aVar = new a();
                            aVar.read(aiVar);
                            cVar.b.add(aVar);
                            i2++;
                        }
                        aiVar.q();
                        cVar.b(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 13) {
                    af n = aiVar.n();
                    cVar.a = new HashMap(n.f3020c * 2);
                    while (i2 < n.f3020c) {
                        String z = aiVar.z();
                        b bVar = new b();
                        bVar.read(aiVar);
                        cVar.a.put(z, bVar);
                        i2++;
                    }
                    aiVar.o();
                    cVar.a(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
        }

        /* renamed from: b */
        public void a(ai aiVar, c cVar) throws p {
            cVar.n();
            aiVar.a(c.f3262f);
            if (cVar.a != null) {
                aiVar.a(c.f3263g);
                aiVar.a(new af((byte) 11, (byte) 12, cVar.a.size()));
                for (Map.Entry<String, b> entry : cVar.a.entrySet()) {
                    aiVar.a(entry.getKey());
                    entry.getValue().write(aiVar);
                }
                aiVar.e();
                aiVar.c();
            }
            if (cVar.b != null && cVar.j()) {
                aiVar.a(c.f3264h);
                aiVar.a(new ae((byte) 12, cVar.b.size()));
                for (a aVar : cVar.b) {
                    aVar.write(aiVar);
                }
                aiVar.f();
                aiVar.c();
            }
            if (cVar.f3267c != null && cVar.m()) {
                aiVar.a(c.f3265i);
                aiVar.a(cVar.f3267c);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0021c extends at<c> {
        public C0021c() {
        }

        public void a(ai aiVar, c cVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(cVar.a.size());
            for (Map.Entry<String, b> entry : cVar.a.entrySet()) {
                aoVar.a(entry.getKey());
                entry.getValue().write(aoVar);
            }
            BitSet bitSet = new BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            aoVar.a(bitSet, 2);
            if (cVar.j()) {
                aoVar.a(cVar.b.size());
                for (a aVar : cVar.b) {
                    aVar.write(aoVar);
                }
            }
            if (cVar.m()) {
                aoVar.a(cVar.f3267c);
            }
        }

        public void b(ai aiVar, c cVar) throws p {
            ao aoVar = (ao) aiVar;
            af afVar = new af((byte) 11, (byte) 12, aoVar.w());
            cVar.a = new HashMap(afVar.f3020c * 2);
            for (int i2 = 0; i2 < afVar.f3020c; i2++) {
                String z = aoVar.z();
                b bVar = new b();
                bVar.read(aoVar);
                cVar.a.put(z, bVar);
            }
            cVar.a(true);
            BitSet b = aoVar.b(2);
            if (b.get(0)) {
                ae aeVar = new ae((byte) 12, aoVar.w());
                cVar.b = new ArrayList(aeVar.b);
                for (int i3 = 0; i3 < aeVar.b; i3++) {
                    a aVar = new a();
                    aVar.read(aoVar);
                    cVar.b.add(aVar);
                }
                cVar.b(true);
            }
            if (b.get(1)) {
                cVar.f3267c = aoVar.z();
                cVar.c(true);
            }
        }
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes.dex */
    public static class d implements ar {
        public d() {
        }

        /* renamed from: a */
        public C0021c b() {
            return new C0021c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3266j = hashMap;
        hashMap.put(as.class, new b());
        f3266j.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new v("snapshots", (byte) 1, new y(ap.f3039k, new w((byte) 11), new aa((byte) 12, b.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new v("journals", (byte) 2, new x(ap.f3041m, new aa((byte) 12, a.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new v("checksum", (byte) 2, new w((byte) 11)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3260d = unmodifiableMap;
        v.a(c.class, unmodifiableMap);
    }

    public c() {
        this.f3268k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    /* renamed from: a */
    public c deepCopy() {
        return new c(this);
    }

    public int b() {
        Map<String, b> map = this.a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, b> c() {
        return this.a;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void clear() {
        this.a = null;
        this.b = null;
        this.f3267c = null;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public int f() {
        List<a> list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Iterator<a> g() {
        List<a> list = this.b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public List<a> h() {
        return this.b;
    }

    public void i() {
        this.b = null;
    }

    public boolean j() {
        return this.b != null;
    }

    public String k() {
        return this.f3267c;
    }

    public void l() {
        this.f3267c = null;
    }

    public boolean m() {
        return this.f3267c != null;
    }

    public void n() throws p {
        if (this.a == null) {
            StringBuilder o = f.b.a.a.a.o("Required field 'snapshots' was not present! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3266j.get(aiVar.D()).b().b(aiVar, this);
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder q = f.b.a.a.a.q("IdTracking(", "snapshots:");
        Map<String, b> map = this.a;
        if (map == null) {
            q.append("null");
        } else {
            q.append(map);
        }
        if (j()) {
            q.append(", ");
            q.append("journals:");
            List<a> list = this.b;
            if (list == null) {
                q.append("null");
            } else {
                q.append(list);
            }
        }
        if (m()) {
            q.append(", ");
            q.append("checksum:");
            String str = this.f3267c;
            if (str == null) {
                q.append("null");
            } else {
                q.append(str);
            }
        }
        q.append(")");
        return q.toString();
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3266j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, e> f3270d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3272e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3273f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3270d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3272e = s;
            this.f3273f = str;
        }

        public static e a(int i2) {
            if (i2 == 1) {
                return SNAPSHOTS;
            }
            if (i2 == 2) {
                return JOURNALS;
            }
            if (i2 != 3) {
                return null;
            }
            return CHECKSUM;
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
            return this.f3273f;
        }

        public static e a(String str) {
            return f3270d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3272e;
        }
    }

    public void a(String str, b bVar) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, bVar);
    }

    public void b(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public void c(boolean z) {
        if (!z) {
            this.f3267c = null;
        }
    }

    public c(Map<String, b> map) {
        this();
        this.a = map;
    }

    public c(c cVar) {
        this.f3268k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (cVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, b> entry : cVar.a.entrySet()) {
                hashMap.put(entry.getKey(), new b(entry.getValue()));
            }
            this.a = hashMap;
        }
        if (cVar.j()) {
            ArrayList arrayList = new ArrayList();
            for (a aVar : cVar.b) {
                arrayList.add(new a(aVar));
            }
            this.b = arrayList;
        }
        if (cVar.m()) {
            this.f3267c = cVar.f3267c;
        }
    }

    public c a(Map<String, b> map) {
        this.a = map;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.a = null;
        }
    }

    public void a(a aVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(aVar);
    }

    public c a(List<a> list) {
        this.b = list;
        return this;
    }

    public c a(String str) {
        this.f3267c = str;
        return this;
    }

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

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
