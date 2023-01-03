package com.umeng.commonsdk.proguard;

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

/* compiled from: UMEnvelope.java */
/* loaded from: classes.dex */
public class f implements j<f, e>, Serializable, Cloneable {
    public static final int A = 2;
    public static final int B = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final Map<e, v> f3067k;

    /* renamed from: l  reason: collision with root package name */
    public static final long f3068l = 420342210744516016L;

    /* renamed from: m  reason: collision with root package name */
    public static final an f3069m = new an("UMEnvelope");
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
    public String f3070c;

    /* renamed from: d  reason: collision with root package name */
    public int f3071d;

    /* renamed from: e  reason: collision with root package name */
    public int f3072e;

    /* renamed from: f  reason: collision with root package name */
    public int f3073f;

    /* renamed from: g  reason: collision with root package name */
    public ByteBuffer f3074g;

    /* renamed from: h  reason: collision with root package name */
    public String f3075h;

    /* renamed from: i  reason: collision with root package name */
    public String f3076i;

    /* renamed from: j  reason: collision with root package name */
    public int f3077j;

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes.dex */
    public static class a extends as<f> {
        public a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, f fVar) throws p {
            aiVar.j();
            while (true) {
                ad l2 = aiVar.l();
                byte b = l2.b;
                if (b == 0) {
                    aiVar.k();
                    if (fVar.m()) {
                        if (fVar.p()) {
                            if (fVar.s()) {
                                fVar.G();
                                return;
                            }
                            StringBuilder o = f.b.a.a.a.o("Required field 'length' was not found in serialized data! Struct: ");
                            o.append(toString());
                            throw new aj(o.toString());
                        }
                        StringBuilder o2 = f.b.a.a.a.o("Required field 'ts_secs' was not found in serialized data! Struct: ");
                        o2.append(toString());
                        throw new aj(o2.toString());
                    }
                    StringBuilder o3 = f.b.a.a.a.o("Required field 'serial_num' was not found in serialized data! Struct: ");
                    o3.append(toString());
                    throw new aj(o3.toString());
                }
                switch (l2.f3019c) {
                    case 1:
                        if (b == 11) {
                            fVar.a = aiVar.z();
                            fVar.a(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 2:
                        if (b == 11) {
                            fVar.b = aiVar.z();
                            fVar.b(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 3:
                        if (b == 11) {
                            fVar.f3070c = aiVar.z();
                            fVar.c(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 4:
                        if (b == 8) {
                            fVar.f3071d = aiVar.w();
                            fVar.d(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 5:
                        if (b == 8) {
                            fVar.f3072e = aiVar.w();
                            fVar.e(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 6:
                        if (b == 8) {
                            fVar.f3073f = aiVar.w();
                            fVar.f(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 7:
                        if (b == 11) {
                            fVar.f3074g = aiVar.A();
                            fVar.g(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 8:
                        if (b == 11) {
                            fVar.f3075h = aiVar.z();
                            fVar.h(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 9:
                        if (b == 11) {
                            fVar.f3076i = aiVar.z();
                            fVar.i(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    case 10:
                        if (b == 8) {
                            fVar.f3077j = aiVar.w();
                            fVar.j(true);
                            break;
                        } else {
                            al.a(aiVar, b);
                            break;
                        }
                    default:
                        al.a(aiVar, b);
                        break;
                }
                aiVar.m();
            }
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, f fVar) throws p {
            fVar.G();
            aiVar.a(f.f3069m);
            if (fVar.a != null) {
                aiVar.a(f.n);
                aiVar.a(fVar.a);
                aiVar.c();
            }
            if (fVar.b != null) {
                aiVar.a(f.o);
                aiVar.a(fVar.b);
                aiVar.c();
            }
            if (fVar.f3070c != null) {
                aiVar.a(f.p);
                aiVar.a(fVar.f3070c);
                aiVar.c();
            }
            aiVar.a(f.q);
            aiVar.a(fVar.f3071d);
            aiVar.c();
            aiVar.a(f.r);
            aiVar.a(fVar.f3072e);
            aiVar.c();
            aiVar.a(f.s);
            aiVar.a(fVar.f3073f);
            aiVar.c();
            if (fVar.f3074g != null) {
                aiVar.a(f.t);
                aiVar.a(fVar.f3074g);
                aiVar.c();
            }
            if (fVar.f3075h != null) {
                aiVar.a(f.u);
                aiVar.a(fVar.f3075h);
                aiVar.c();
            }
            if (fVar.f3076i != null) {
                aiVar.a(f.v);
                aiVar.a(fVar.f3076i);
                aiVar.c();
            }
            if (fVar.F()) {
                aiVar.a(f.w);
                aiVar.a(fVar.f3077j);
                aiVar.c();
            }
            aiVar.d();
            aiVar.b();
        }
    }

    /* compiled from: UMEnvelope.java */
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

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes.dex */
    public static class c extends at<f> {
        public c() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void a(ai aiVar, f fVar) throws p {
            ao aoVar = (ao) aiVar;
            aoVar.a(fVar.a);
            aoVar.a(fVar.b);
            aoVar.a(fVar.f3070c);
            aoVar.a(fVar.f3071d);
            aoVar.a(fVar.f3072e);
            aoVar.a(fVar.f3073f);
            aoVar.a(fVar.f3074g);
            aoVar.a(fVar.f3075h);
            aoVar.a(fVar.f3076i);
            BitSet bitSet = new BitSet();
            if (fVar.F()) {
                bitSet.set(0);
            }
            aoVar.a(bitSet, 1);
            if (fVar.F()) {
                aoVar.a(fVar.f3077j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.aq
        public void b(ai aiVar, f fVar) throws p {
            ao aoVar = (ao) aiVar;
            fVar.a = aoVar.z();
            fVar.a(true);
            fVar.b = aoVar.z();
            fVar.b(true);
            fVar.f3070c = aoVar.z();
            fVar.c(true);
            fVar.f3071d = aoVar.w();
            fVar.d(true);
            fVar.f3072e = aoVar.w();
            fVar.e(true);
            fVar.f3073f = aoVar.w();
            fVar.f(true);
            fVar.f3074g = aoVar.A();
            fVar.g(true);
            fVar.f3075h = aoVar.z();
            fVar.h(true);
            fVar.f3076i = aoVar.z();
            fVar.i(true);
            if (aoVar.b(1).get(0)) {
                fVar.f3077j = aoVar.w();
                fVar.j(true);
            }
        }
    }

    /* compiled from: UMEnvelope.java */
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
        x = hashMap;
        hashMap.put(as.class, new b());
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
        f3067k = unmodifiableMap;
        v.a(f.class, unmodifiableMap);
    }

    public f() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public String A() {
        return this.f3076i;
    }

    public void B() {
        this.f3076i = null;
    }

    public boolean C() {
        return this.f3076i != null;
    }

    public int D() {
        return this.f3077j;
    }

    public void E() {
        this.C = g.b(this.C, 3);
    }

    public boolean F() {
        return g.a(this.C, 3);
    }

    public void G() throws p {
        if (this.a != null) {
            if (this.b != null) {
                if (this.f3070c != null) {
                    if (this.f3074g != null) {
                        if (this.f3075h != null) {
                            if (this.f3076i != null) {
                                return;
                            }
                            StringBuilder o2 = f.b.a.a.a.o("Required field 'checksum' was not present! Struct: ");
                            o2.append(toString());
                            throw new aj(o2.toString());
                        }
                        StringBuilder o3 = f.b.a.a.a.o("Required field 'guid' was not present! Struct: ");
                        o3.append(toString());
                        throw new aj(o3.toString());
                    }
                    StringBuilder o4 = f.b.a.a.a.o("Required field 'entity' was not present! Struct: ");
                    o4.append(toString());
                    throw new aj(o4.toString());
                }
                StringBuilder o5 = f.b.a.a.a.o("Required field 'signature' was not present! Struct: ");
                o5.append(toString());
                throw new aj(o5.toString());
            }
            StringBuilder o6 = f.b.a.a.a.o("Required field 'address' was not present! Struct: ");
            o6.append(toString());
            throw new aj(o6.toString());
        }
        StringBuilder o7 = f.b.a.a.a.o("Required field 'version' was not present! Struct: ");
        o7.append(toString());
        throw new aj(o7.toString());
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: a */
    public f deepCopy() {
        return new f(this);
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
        this.f3070c = null;
        d(false);
        this.f3071d = 0;
        e(false);
        this.f3072e = 0;
        f(false);
        this.f3073f = 0;
        this.f3074g = null;
        this.f3075h = null;
        this.f3076i = null;
        j(false);
        this.f3077j = 0;
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
        return this.f3070c;
    }

    public void i() {
        this.f3070c = null;
    }

    public boolean j() {
        return this.f3070c != null;
    }

    public int k() {
        return this.f3071d;
    }

    public void l() {
        this.C = g.b(this.C, 0);
    }

    public boolean m() {
        return g.a(this.C, 0);
    }

    public int n() {
        return this.f3072e;
    }

    public void o() {
        this.C = g.b(this.C, 1);
    }

    public boolean p() {
        return g.a(this.C, 1);
    }

    public int q() {
        return this.f3073f;
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
        a(k.c(this.f3074g));
        ByteBuffer byteBuffer = this.f3074g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder q2 = f.b.a.a.a.q("UMEnvelope(", "version:");
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
        String str3 = this.f3070c;
        if (str3 == null) {
            q2.append("null");
        } else {
            q2.append(str3);
        }
        q2.append(", ");
        q2.append("serial_num:");
        q2.append(this.f3071d);
        q2.append(", ");
        q2.append("ts_secs:");
        q2.append(this.f3072e);
        q2.append(", ");
        q2.append("length:");
        q2.append(this.f3073f);
        q2.append(", ");
        q2.append("entity:");
        ByteBuffer byteBuffer = this.f3074g;
        if (byteBuffer == null) {
            q2.append("null");
        } else {
            k.a(byteBuffer, q2);
        }
        q2.append(", ");
        q2.append("guid:");
        String str4 = this.f3075h;
        if (str4 == null) {
            q2.append("null");
        } else {
            q2.append(str4);
        }
        q2.append(", ");
        q2.append("checksum:");
        String str5 = this.f3076i;
        if (str5 == null) {
            q2.append("null");
        } else {
            q2.append(str5);
        }
        if (F()) {
            q2.append(", ");
            q2.append("codex:");
            q2.append(this.f3077j);
        }
        q2.append(")");
        return q2.toString();
    }

    public ByteBuffer u() {
        return this.f3074g;
    }

    public void v() {
        this.f3074g = null;
    }

    public boolean w() {
        return this.f3074g != null;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        x.get(aiVar.D()).b().a(aiVar, this);
    }

    public String x() {
        return this.f3075h;
    }

    public void y() {
        this.f3075h = null;
    }

    public boolean z() {
        return this.f3075h != null;
    }

    /* compiled from: UMEnvelope.java */
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
        public static final Map<String, e> f3086k = new HashMap();

        /* renamed from: l  reason: collision with root package name */
        public final short f3087l;

        /* renamed from: m  reason: collision with root package name */
        public final String f3088m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f3086k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f3087l = s;
            this.f3088m = str;
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
            return this.f3088m;
        }

        public static e a(String str) {
            return f3086k.get(str);
        }

        @Override // com.umeng.commonsdk.proguard.q
        public short a() {
            return this.f3087l;
        }
    }

    public f a(String str) {
        this.a = str;
        return this;
    }

    public f b(String str) {
        this.b = str;
        return this;
    }

    public f c(String str) {
        this.f3070c = str;
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
        if (z2) {
            return;
        }
        this.f3074g = null;
    }

    public void h(boolean z2) {
        if (z2) {
            return;
        }
        this.f3075h = null;
    }

    public void i(boolean z2) {
        if (z2) {
            return;
        }
        this.f3076i = null;
    }

    public void j(boolean z2) {
        this.C = g.a(this.C, 3, z2);
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.a = null;
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.b = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f3070c = null;
    }

    public f d(String str) {
        this.f3075h = str;
        return this;
    }

    public f e(String str) {
        this.f3076i = str;
        return this;
    }

    public f(String str, String str2, String str3, int i2, int i3, int i4, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.a = str;
        this.b = str2;
        this.f3070c = str3;
        this.f3071d = i2;
        d(true);
        this.f3072e = i3;
        e(true);
        this.f3073f = i4;
        f(true);
        this.f3074g = byteBuffer;
        this.f3075h = str4;
        this.f3076i = str5;
    }

    public f a(int i2) {
        this.f3071d = i2;
        d(true);
        return this;
    }

    public f b(int i2) {
        this.f3072e = i2;
        e(true);
        return this;
    }

    public f c(int i2) {
        this.f3073f = i2;
        f(true);
        return this;
    }

    public f d(int i2) {
        this.f3077j = i2;
        j(true);
        return this;
    }

    @Override // com.umeng.commonsdk.proguard.j
    /* renamed from: e */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public f a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public f a(ByteBuffer byteBuffer) {
        this.f3074g = byteBuffer;
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
            this.C = (byte) 0;
            read(new ac(new au(objectInputStream)));
        } catch (p e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public f(f fVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = fVar.C;
        if (fVar.d()) {
            this.a = fVar.a;
        }
        if (fVar.g()) {
            this.b = fVar.b;
        }
        if (fVar.j()) {
            this.f3070c = fVar.f3070c;
        }
        this.f3071d = fVar.f3071d;
        this.f3072e = fVar.f3072e;
        this.f3073f = fVar.f3073f;
        if (fVar.w()) {
            this.f3074g = k.d(fVar.f3074g);
        }
        if (fVar.z()) {
            this.f3075h = fVar.f3075h;
        }
        if (fVar.C()) {
            this.f3076i = fVar.f3076i;
        }
        this.f3077j = fVar.f3077j;
    }
}
