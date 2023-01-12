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
public class e implements j<e, EnumC0030e>, Serializable, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final Map<EnumC0030e, v> f3364d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f3365e = 7501688097813630241L;

    /* renamed from: f  reason: collision with root package name */
    public static final an f3366f = new an("ImprintValue");

    /* renamed from: g  reason: collision with root package name */
    public static final ad f3367g = new ad("value", (byte) 11, 1);

    /* renamed from: h  reason: collision with root package name */
    public static final ad f3368h = new ad("ts", (byte) 10, 2);

    /* renamed from: i  reason: collision with root package name */
    public static final ad f3369i = new ad("guid", (byte) 11, 3);

    /* renamed from: j  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3370j;

    /* renamed from: k  reason: collision with root package name */
    public static final int f3371k = 0;
    public String a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public String f3372c;

    /* renamed from: l  reason: collision with root package name */
    public byte f3373l;

    /* renamed from: m  reason: collision with root package name */
    public EnumC0030e[] f3374m;

    /* compiled from: ImprintValue.java */
    /* loaded from: classes.dex */
    public static class a extends as<e> {
        public a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, e eVar) throws p {
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
                        } else if (b == 11) {
                            eVar.f3372c = aiVar.z();
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

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, e eVar) throws p {
            eVar.k();
            aiVar.a(e.f3366f);
            if (eVar.a != null && eVar.d()) {
                aiVar.a(e.f3367g);
                aiVar.a(eVar.a);
                aiVar.c();
            }
            aiVar.a(e.f3368h);
            aiVar.a(eVar.b);
            aiVar.c();
            if (eVar.f3372c != null) {
                aiVar.a(e.f3369i);
                aiVar.a(eVar.f3372c);
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

        @Override // com.umeng.commonsdk.proguard.ar
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

        @Override // com.umeng.commonsdk.proguard.aq
        public void a(ai aiVar, e eVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(eVar.b);
            aoVar.a(eVar.f3372c);
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            aoVar.a(bitSet, 1);
            if (eVar.d()) {
                aoVar.a(eVar.a);
            }
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void b(ai aiVar, e eVar) throws p {
            ao aoVar = (ao) aiVar;
            eVar.b = aoVar.x();
            eVar.b(true);
            eVar.f3372c = aoVar.z();
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

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3370j = hashMap;
        hashMap.put(as.class, new b());
        f3370j.put(at.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0030e.class);
        enumMap.put((EnumMap) EnumC0030e.VALUE, (EnumC0030e) new v("value", (byte) 2, new w((byte) 11)));
        enumMap.put((EnumMap) EnumC0030e.TS, (EnumC0030e) new v("ts", (byte) 1, new w((byte) 10)));
        enumMap.put((EnumMap) EnumC0030e.GUID, (EnumC0030e) new v("guid", (byte) 1, new w((byte) 11)));
        Map<EnumC0030e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3364d = unmodifiableMap;
        v.a(e.class, unmodifiableMap);
    }

    public e() {
        this.f3373l = (byte) 0;
        this.f3374m = new EnumC0030e[]{EnumC0030e.VALUE};
    }

    @Override // com.umeng.commonsdk.proguard.j
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
        this.b = 0L;
        this.f3372c = null;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.f3373l = g.b(this.f3373l, 0);
    }

    public boolean g() {
        return g.a(this.f3373l, 0);
    }

    public String h() {
        return this.f3372c;
    }

    public void i() {
        this.f3372c = null;
    }

    public boolean j() {
        return this.f3372c != null;
    }

    public void k() throws p {
        if (this.f3372c != null) {
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Required field 'guid' was not present! Struct: ");
        o.append(toString());
        throw new aj(o.toString());
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3370j.get(aiVar.D()).b().b(aiVar, this);
    }

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
        String str2 = this.f3372c;
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
        f3370j.get(aiVar.D()).b().a(aiVar, this);
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0030e implements q {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");
        

        /* renamed from: d  reason: collision with root package name */
        public static final Map<String, EnumC0030e> f3376d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public final short f3378e;

        /* renamed from: f  reason: collision with root package name */
        public final String f3379f;

        static {
            Iterator it = EnumSet.allOf(EnumC0030e.class).iterator();
            while (it.hasNext()) {
                EnumC0030e enumC0030e = (EnumC0030e) it.next();
                f3376d.put(enumC0030e.b(), enumC0030e);
            }
        }

        EnumC0030e(short s, String str) {
            this.f3378e = s;
            this.f3379f = str;
        }

        public static EnumC0030e a(int i2) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    return GUID;
                }
                return TS;
            }
            return VALUE;
        }

        public static EnumC0030e b(int i2) {
            EnumC0030e a = a(i2);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException(f.b.a.a.a.K("Field ", i2, " doesn't exist!"));
        }

        @Override // com.umeng.commonsdk.proguard.q
        public String b() {
            return this.f3379f;
        }

        public static EnumC0030e a(String str) {
            return f3376d.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3378e;
        }
    }

    public e a(String str) {
        this.a = str;
        return this;
    }

    public void b(boolean z) {
        this.f3373l = g.a(this.f3373l, 0, z);
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f3372c = null;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public e b(String str) {
        this.f3372c = str;
        return this;
    }

    public e(long j2, String str) {
        this();
        this.b = j2;
        b(true);
        this.f3372c = str;
    }

    public e a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public EnumC0030e fieldForId(int i2) {
        return EnumC0030e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new ac(new au(objectOutputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public e(e eVar) {
        this.f3373l = (byte) 0;
        this.f3374m = new EnumC0030e[]{EnumC0030e.VALUE};
        this.f3373l = eVar.f3373l;
        if (eVar.d()) {
            this.a = eVar.a;
        }
        this.b = eVar.b;
        if (eVar.j()) {
            this.f3372c = eVar.f3372c;
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f3373l = (byte) 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
