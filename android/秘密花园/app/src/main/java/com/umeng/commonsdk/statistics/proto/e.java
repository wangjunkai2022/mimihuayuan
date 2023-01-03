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

/* compiled from: ImprintValue.java */
/* loaded from: classes.dex */
public class e implements j<e, EnumC0023e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<EnumC0023e, v> f3289d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3290e = 7501688097813630241L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3291f = new an("ImprintValue");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3292g = new ad("value", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3293h = new ad("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3294i = new ad("guid", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3295j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f3296k = 0;
    public String a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public String f3297c;

    /* renamed from: l  reason: collision with root package name */
    public byte f3298l;

    /* renamed from: m  reason: collision with root package name */
    public EnumC0023e[] f3299m;

    /* compiled from: ImprintValue.java */
    /* loaded from: classes.dex */
    public static class a extends as<e> {
        public a() {
        }

        /* renamed from: a */
        public void b(ai aiVar, e eVar) throws p {
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
                            eVar.f3297c = aiVar.z();
                            eVar.c(true);
                        } else {
                            al.a(aiVar, b);
                        }
                    } else if (b == 10) {
                        eVar.b = aiVar.x();
                        eVar.b(true);
                    } else {
                        al.a(aiVar, b);
                    }
                } else if (b == 11) {
                    eVar.a = aiVar.z();
                    eVar.a(true);
                } else {
                    al.a(aiVar, b);
                }
                aiVar.m();
            }
            aiVar.k();
            if (eVar.g()) {
                eVar.k();
                return;
            }
            StringBuilder o = f.b.a.a.a.o("Required field 'ts' was not found in serialized data! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }

        /* renamed from: b */
        public void a(ai aiVar, e eVar) throws p {
            eVar.k();
            aiVar.a(e.f3291f);
            if (eVar.a != null && eVar.d()) {
                aiVar.a(e.f3292g);
                aiVar.a(eVar.a);
                aiVar.c();
            }
            aiVar.a(e.f3293h);
            aiVar.a(eVar.b);
            aiVar.c();
            if (eVar.f3297c != null) {
                aiVar.a(e.f3294i);
                aiVar.a(eVar.f3297c);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: ImprintValue.java */
    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ImprintValue.java */
    /* loaded from: classes.dex */
    public static class c extends at<e> {
        public c() {
        }

        public void a(ai aiVar, e eVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(eVar.b);
            aoVar.a(eVar.f3297c);
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            aoVar.a(bitSet, 1);
            if (eVar.d()) {
                aoVar.a(eVar.a);
            }
        }

        public void b(ai aiVar, e eVar) throws p {
            ao aoVar = (ao) aiVar;
            eVar.b = aoVar.x();
            eVar.b(true);
            eVar.f3297c = aoVar.z();
            eVar.c(true);
            if (aoVar.b(1).get(0)) {
                eVar.a = aoVar.z();
                eVar.a(true);
            }
        }
    }

    /* compiled from: ImprintValue.java */
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
        f3295j = hashMap;
        hashMap.put(as.class, new b());
        f3295j.put(at.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0023e.class);
        enumMap.put((EnumMap) EnumC0023e.VALUE, (EnumC0023e) new v("value", (byte) 2, new w((byte) 11)));
        enumMap.put((EnumMap) EnumC0023e.TS, (EnumC0023e) new v("ts", (byte) 1, new w((byte) 10)));
        enumMap.put((EnumMap) EnumC0023e.GUID, (EnumC0023e) new v("guid", (byte) 1, new w((byte) 11)));
        Map<EnumC0023e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3289d = unmodifiableMap;
        v.a(e.class, unmodifiableMap);
    }

    public e() {
        this.f3298l = 0;
        this.f3299m = new EnumC0023e[]{EnumC0023e.VALUE};
    }

    /* renamed from: a */
    public e deepCopy() {
        return new e(this);
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
        this.f3297c = null;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.f3298l = g.b(this.f3298l, 0);
    }

    public boolean g() {
        return g.a(this.f3298l, 0);
    }

    public String h() {
        return this.f3297c;
    }

    public void i() {
        this.f3297c = null;
    }

    public boolean j() {
        return this.f3297c != null;
    }

    public void k() throws p {
        if (this.f3297c == null) {
            StringBuilder o = f.b.a.a.a.o("Required field 'guid' was not present! Struct: ");
            o.append(toString());
            throw new aj(o.toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3295j.get(aiVar.D()).b().b(aiVar, this);
    }

    @Override // java.lang.Object
    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            String str = this.a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("guid:");
        String str2 = this.f3297c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3295j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0023e implements q {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, EnumC0023e> f3301d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3303e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3304f;

        static {
            Iterator it = EnumSet.allOf(EnumC0023e.class).iterator();
            while (it.hasNext()) {
                EnumC0023e eVar = (EnumC0023e) it.next();
                f3301d.put(eVar.b(), eVar);
            }
        }

        EnumC0023e(short s, String str) {
            this.f3303e = s;
            this.f3304f = str;
        }

        public static EnumC0023e a(int i2) {
            if (i2 == 1) {
                return VALUE;
            }
            if (i2 == 2) {
                return TS;
            }
            if (i2 != 3) {
                return null;
            }
            return GUID;
        }

        public static EnumC0023e b(int i2) {
            EnumC0023e a = a(i2);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException(f.b.a.a.a.K("Field ", i2, " doesn't exist!"));
        }

        @Override // com.umeng.commonsdk.proguard.q
        public String b() {
            return this.f3304f;
        }

        public static EnumC0023e a(String str) {
            return f3301d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3303e;
        }
    }

    public e a(String str) {
        this.a = str;
        return this;
    }

    public void b(boolean z) {
        this.f3298l = g.a(this.f3298l, 0, z);
    }

    public void c(boolean z) {
        if (!z) {
            this.f3297c = null;
        }
    }

    public void a(boolean z) {
        if (!z) {
            this.a = null;
        }
    }

    public e b(String str) {
        this.f3297c = str;
        return this;
    }

    public e(long j2, String str) {
        this();
        this.b = j2;
        b(true);
        this.f3297c = str;
    }

    public e a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    /* renamed from: a */
    public EnumC0023e fieldForId(int i2) {
        return EnumC0023e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public e(e eVar) {
        this.f3298l = 0;
        this.f3299m = new EnumC0023e[]{EnumC0023e.VALUE};
        this.f3298l = eVar.f3298l;
        if (eVar.d()) {
            this.a = eVar.a;
        }
        this.b = eVar.b;
        if (eVar.j()) {
            this.f3297c = eVar.f3297c;
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f3298l = 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
