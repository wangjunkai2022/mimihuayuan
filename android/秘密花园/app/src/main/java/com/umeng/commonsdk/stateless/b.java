package com.umeng.commonsdk.stateless;

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
import com.umeng.commonsdk.proguard.k;
import com.umeng.commonsdk.proguard.p;
import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.v;
import com.umeng.commonsdk.proguard.w;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: UMSLEnvelope.java */
/* loaded from: classes.dex */
public class b implements j<b, e>, Serializable, Cloneable {
    public static final int A = 2;
    public static final int B = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final Map<e, v> f3122k;

    /* renamed from: l  reason: collision with root package name */
    public static final long f3123l = 420342210744516016L;

    /* renamed from: m  reason: collision with root package name */
    public static final an f3124m = new an("UMSLEnvelope");
    public static final ad n = new ad("version", (byte) 11, 1);
    public static final ad o = new ad("address", (byte) 11, 2);
    public static final ad p = new ad("signature", (byte) 11, 3);
    public static final ad q = new ad("serial_num", (byte) 8, 4);
    public static final ad r = new ad("ts_secs", (byte) 8, 5);
    public static final ad s = new ad("length", (byte) 8, 6);
    public static final ad t = new ad("entity", (byte) 11, 7);
    public static final ad u = new ad("guid", (byte) 11, 8);
    public static final ad v = new ad("checksum", (byte) 11, 9);
    public static final ad w = new ad("codex", (byte) 8, 10);
    public static final Map<Class<? extends aq>, ar> x;
    public static final int y = 0;
    public static final int z = 1;
    public byte C;
    public e[] D;
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f3125c;

    /* renamed from: d  reason: collision with root package name */
    public int f3126d;

    /* renamed from: e  reason: collision with root package name */
    public int f3127e;

    /* renamed from: f  reason: collision with root package name */
    public int f3128f;

    /* renamed from: g  reason: collision with root package name */
    public ByteBuffer f3129g;

    /* renamed from: h  reason: collision with root package name */
    public String f3130h;

    /* renamed from: i  reason: collision with root package name */
    public String f3131i;

    /* renamed from: j  reason: collision with root package name */
    public int f3132j;

    /* compiled from: UMSLEnvelope.java */
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
                    aiVar.k();
                    if (!bVar.m()) {
                        StringBuilder o = f.b.a.a.a.o("Required field 'serial_num' was not found in serialized data! Struct: ");
                        o.append(toString());
                        throw new aj(o.toString());
                    } else if (!bVar.p()) {
                        StringBuilder o2 = f.b.a.a.a.o("Required field 'ts_secs' was not found in serialized data! Struct: ");
                        o2.append(toString());
                        throw new aj(o2.toString());
                    } else if (bVar.s()) {
                        bVar.G();
                        return;
                    } else {
                        StringBuilder o3 = f.b.a.a.a.o("Required field 'length' was not found in serialized data! Struct: ");
                        o3.append(toString());
                        throw new aj(o3.toString());
                    }
                } else {
                    switch (l2.f3019c) {
                        case 1:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.a = aiVar.z();
                                bVar.a(true);
                                break;
                            }
                        case 2:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.b = aiVar.z();
                                bVar.b(true);
                                break;
                            }
                        case 3:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3125c = aiVar.z();
                                bVar.c(true);
                                break;
                            }
                        case 4:
                            if (b != 8) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3126d = aiVar.w();
                                bVar.d(true);
                                break;
                            }
                        case 5:
                            if (b != 8) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3127e = aiVar.w();
                                bVar.e(true);
                                break;
                            }
                        case 6:
                            if (b != 8) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3128f = aiVar.w();
                                bVar.f(true);
                                break;
                            }
                        case 7:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3129g = aiVar.A();
                                bVar.g(true);
                                break;
                            }
                        case 8:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3130h = aiVar.z();
                                bVar.h(true);
                                break;
                            }
                        case 9:
                            if (b != 11) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3131i = aiVar.z();
                                bVar.i(true);
                                break;
                            }
                        case 10:
                            if (b != 8) {
                                al.a(aiVar, b);
                                break;
                            } else {
                                bVar.f3132j = aiVar.w();
                                bVar.j(true);
                                break;
                            }
                        default:
                            al.a(aiVar, b);
                            break;
                    }
                    aiVar.m();
                }
            }
        }

        /* renamed from: b */
        public void a(ai aiVar, b bVar) throws p {
            bVar.G();
            aiVar.a(b.f3124m);
            if (bVar.a != null) {
                aiVar.a(b.n);
                aiVar.a(bVar.a);
                aiVar.c();
            }
            if (bVar.b != null) {
                aiVar.a(b.o);
                aiVar.a(bVar.b);
                aiVar.c();
            }
            if (bVar.f3125c != null) {
                aiVar.a(b.p);
                aiVar.a(bVar.f3125c);
                aiVar.c();
            }
            aiVar.a(b.q);
            aiVar.a(bVar.f3126d);
            aiVar.c();
            aiVar.a(b.r);
            aiVar.a(bVar.f3127e);
            aiVar.c();
            aiVar.a(b.s);
            aiVar.a(bVar.f3128f);
            aiVar.c();
            if (bVar.f3129g != null) {
                aiVar.a(b.t);
                aiVar.a(bVar.f3129g);
                aiVar.c();
            }
            if (bVar.f3130h != null) {
                aiVar.a(b.u);
                aiVar.a(bVar.f3130h);
                aiVar.c();
            }
            if (bVar.f3131i != null) {
                aiVar.a(b.v);
                aiVar.a(bVar.f3131i);
                aiVar.c();
            }
            if (bVar.F()) {
                aiVar.a(b.w);
                aiVar.a(bVar.f3132j);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0016b implements ar {
        public C0016b() {
        }

        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: UMSLEnvelope.java */
    /* loaded from: classes.dex */
    public static class c extends at<b> {
        public c() {
        }

        public void a(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(bVar.a);
            aoVar.a(bVar.b);
            aoVar.a(bVar.f3125c);
            aoVar.a(bVar.f3126d);
            aoVar.a(bVar.f3127e);
            aoVar.a(bVar.f3128f);
            aoVar.a(bVar.f3129g);
            aoVar.a(bVar.f3130h);
            aoVar.a(bVar.f3131i);
            BitSet bitSet = new BitSet();
            if (bVar.F()) {
                bitSet.set(0);
            }
            aoVar.a(bitSet, 1);
            if (bVar.F()) {
                aoVar.a(bVar.f3132j);
            }
        }

        public void b(ai aiVar, b bVar) throws p {
            ao aoVar = (ao) aiVar;
            bVar.a = aoVar.z();
            bVar.a(true);
            bVar.b = aoVar.z();
            bVar.b(true);
            bVar.f3125c = aoVar.z();
            bVar.c(true);
            bVar.f3126d = aoVar.w();
            bVar.d(true);
            bVar.f3127e = aoVar.w();
            bVar.e(true);
            bVar.f3128f = aoVar.w();
            bVar.f(true);
            bVar.f3129g = aoVar.A();
            bVar.g(true);
            bVar.f3130h = aoVar.z();
            bVar.h(true);
            bVar.f3131i = aoVar.z();
            bVar.i(true);
            if (aoVar.b(1).get(0)) {
                bVar.f3132j = aoVar.w();
                bVar.j(true);
            }
        }
    }

    /* compiled from: UMSLEnvelope.java */
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
        x = hashMap;
        hashMap.put(as.class, new C0016b());
        x.put(at.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new v("version", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new v("address", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new v("signature", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new v("serial_num", (byte) 1, new w((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new v("ts_secs", (byte) 1, new w((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new v("length", (byte) 1, new w((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new v("entity", (byte) 1, new w((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new v("guid", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new v("checksum", (byte) 1, new w((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new v("codex", (byte) 2, new w((byte) 8)));
        Map<e, v> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        f3122k = unmodifiableMap;
        v.a(b.class, unmodifiableMap);
    }

    public b() {
        this.C = 0;
        this.D = new e[]{e.CODEX};
    }

    public String A() {
        return this.f3131i;
    }

    public void B() {
        this.f3131i = null;
    }

    public boolean C() {
        return this.f3131i != null;
    }

    public int D() {
        return this.f3132j;
    }

    public void E() {
        this.C = g.b(this.C, 3);
    }

    public boolean F() {
        return g.a(this.C, 3);
    }

    public void G() throws p {
        if (this.a == null) {
            StringBuilder o2 = f.b.a.a.a.o("Required field 'version' was not present! Struct: ");
            o2.append(toString());
            throw new aj(o2.toString());
        } else if (this.b == null) {
            StringBuilder o3 = f.b.a.a.a.o("Required field 'address' was not present! Struct: ");
            o3.append(toString());
            throw new aj(o3.toString());
        } else if (this.f3125c == null) {
            StringBuilder o4 = f.b.a.a.a.o("Required field 'signature' was not present! Struct: ");
            o4.append(toString());
            throw new aj(o4.toString());
        } else if (this.f3129g == null) {
            StringBuilder o5 = f.b.a.a.a.o("Required field 'entity' was not present! Struct: ");
            o5.append(toString());
            throw new aj(o5.toString());
        } else if (this.f3130h == null) {
            StringBuilder o6 = f.b.a.a.a.o("Required field 'guid' was not present! Struct: ");
            o6.append(toString());
            throw new aj(o6.toString());
        } else if (this.f3131i == null) {
            StringBuilder o7 = f.b.a.a.a.o("Required field 'checksum' was not present! Struct: ");
            o7.append(toString());
            throw new aj(o7.toString());
        }
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
        this.b = null;
        this.f3125c = null;
        d(false);
        this.f3126d = 0;
        e(false);
        this.f3127e = 0;
        f(false);
        this.f3128f = 0;
        this.f3129g = null;
        this.f3130h = null;
        this.f3131i = null;
        j(false);
        this.f3132j = 0;
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
        return this.f3125c;
    }

    public void i() {
        this.f3125c = null;
    }

    public boolean j() {
        return this.f3125c != null;
    }

    public int k() {
        return this.f3126d;
    }

    public void l() {
        this.C = g.b(this.C, 0);
    }

    public boolean m() {
        return g.a(this.C, 0);
    }

    public int n() {
        return this.f3127e;
    }

    public void o() {
        this.C = g.b(this.C, 1);
    }

    public boolean p() {
        return g.a(this.C, 1);
    }

    public int q() {
        return this.f3128f;
    }

    public void r() {
        this.C = g.b(this.C, 2);
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        x.get(aiVar.D()).b().b(aiVar, this);
    }

    public boolean s() {
        return g.a(this.C, 2);
    }

    public byte[] t() {
        a(k.c(this.f3129g));
        ByteBuffer byteBuffer = this.f3129g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder q2 = f.b.a.a.a.q("UMSLEnvelope(", "version:");
        String str = this.a;
        if (str == null) {
            q2.append("null");
        } else {
            q2.append(str);
        }
        q2.append(", ");
        q2.append("address:");
        String str2 = this.b;
        if (str2 == null) {
            q2.append("null");
        } else {
            q2.append(str2);
        }
        q2.append(", ");
        q2.append("signature:");
        String str3 = this.f3125c;
        if (str3 == null) {
            q2.append("null");
        } else {
            q2.append(str3);
        }
        q2.append(", ");
        q2.append("serial_num:");
        q2.append(this.f3126d);
        q2.append(", ");
        q2.append("ts_secs:");
        q2.append(this.f3127e);
        q2.append(", ");
        q2.append("length:");
        q2.append(this.f3128f);
        q2.append(", ");
        q2.append("entity:");
        ByteBuffer byteBuffer = this.f3129g;
        if (byteBuffer == null) {
            q2.append("null");
        } else {
            k.a(byteBuffer, q2);
        }
        q2.append(", ");
        q2.append("guid:");
        String str4 = this.f3130h;
        if (str4 == null) {
            q2.append("null");
        } else {
            q2.append(str4);
        }
        q2.append(", ");
        q2.append("checksum:");
        String str5 = this.f3131i;
        if (str5 == null) {
            q2.append("null");
        } else {
            q2.append(str5);
        }
        if (F()) {
            q2.append(", ");
            q2.append("codex:");
            q2.append(this.f3132j);
        }
        q2.append(")");
        return q2.toString();
    }

    public ByteBuffer u() {
        return this.f3129g;
    }

    public void v() {
        this.f3129g = null;
    }

    public boolean w() {
        return this.f3129g != null;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        x.get(aiVar.D()).b().a(aiVar, this);
    }

    public String x() {
        return this.f3130h;
    }

    public void y() {
        this.f3130h = null;
    }

    public boolean z() {
        return this.f3130h != null;
    }

    /* compiled from: UMSLEnvelope.java */
    /* loaded from: classes.dex */
    public enum e implements q {
        VERSION(1, "version"),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");
        

        /* renamed from: k  reason: collision with root package name */
        public static final Map<String, e> f3141k = new HashMap();

        /* renamed from: l  reason: collision with root package name */
        public final short f3142l;

        /* renamed from: m  reason: collision with root package name */
        public final String f3143m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3141k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3142l = s;
            this.f3143m = str;
        }

        public static e a(int i2) {
            switch (i2) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
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
            return this.f3143m;
        }

        public static e a(String str) {
            return f3141k.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3142l;
        }
    }

    public b a(String str) {
        this.a = str;
        return this;
    }

    public b b(String str) {
        this.b = str;
        return this;
    }

    public b c(String str) {
        this.f3125c = str;
        return this;
    }

    public void d(boolean z2) {
        this.C = g.a(this.C, 0, z2);
    }

    public void e(boolean z2) {
        this.C = g.a(this.C, 1, z2);
    }

    public void f(boolean z2) {
        this.C = g.a(this.C, 2, z2);
    }

    public void g(boolean z2) {
        if (!z2) {
            this.f3129g = null;
        }
    }

    public void h(boolean z2) {
        if (!z2) {
            this.f3130h = null;
        }
    }

    public void i(boolean z2) {
        if (!z2) {
            this.f3131i = null;
        }
    }

    public void j(boolean z2) {
        this.C = g.a(this.C, 3, z2);
    }

    public void a(boolean z2) {
        if (!z2) {
            this.a = null;
        }
    }

    public void b(boolean z2) {
        if (!z2) {
            this.b = null;
        }
    }

    public void c(boolean z2) {
        if (!z2) {
            this.f3125c = null;
        }
    }

    public b d(String str) {
        this.f3130h = str;
        return this;
    }

    public b e(String str) {
        this.f3131i = str;
        return this;
    }

    public b(String str, String str2, String str3, int i2, int i3, int i4, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.a = str;
        this.b = str2;
        this.f3125c = str3;
        this.f3126d = i2;
        d(true);
        this.f3127e = i3;
        e(true);
        this.f3128f = i4;
        f(true);
        this.f3129g = byteBuffer;
        this.f3130h = str4;
        this.f3131i = str5;
    }

    public b a(int i2) {
        this.f3126d = i2;
        d(true);
        return this;
    }

    public b b(int i2) {
        this.f3127e = i2;
        e(true);
        return this;
    }

    public b c(int i2) {
        this.f3128f = i2;
        f(true);
        return this;
    }

    public b d(int i2) {
        this.f3132j = i2;
        j(true);
        return this;
    }

    /* renamed from: e */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public b a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public b a(ByteBuffer byteBuffer) {
        this.f3129g = byteBuffer;
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
            this.C = 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public b(b bVar) {
        this.C = 0;
        this.D = new e[]{e.CODEX};
        this.C = bVar.C;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        if (bVar.g()) {
            this.b = bVar.b;
        }
        if (bVar.j()) {
            this.f3125c = bVar.f3125c;
        }
        this.f3126d = bVar.f3126d;
        this.f3127e = bVar.f3127e;
        this.f3128f = bVar.f3128f;
        if (bVar.w()) {
            this.f3129g = k.d(bVar.f3129g);
        }
        if (bVar.z()) {
            this.f3130h = bVar.f3130h;
        }
        if (bVar.C()) {
            this.f3131i = bVar.f3131i;
        }
        this.f3132j = bVar.f3132j;
    }
}
