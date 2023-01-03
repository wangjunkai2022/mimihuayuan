package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TCompactProtocol.java */
/* loaded from: classes.dex */
public class ac extends ai {

    /* renamed from: d  reason: collision with root package name */
    public static final an f2999d = new an("");

    /* renamed from: e  reason: collision with root package name */
    public static final ad f3000e = new ad("", (byte) 0, 0);

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f3001f;

    /* renamed from: h  reason: collision with root package name */
    public static final byte f3002h = -126;

    /* renamed from: i  reason: collision with root package name */
    public static final byte f3003i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final byte f3004j = 31;

    /* renamed from: k  reason: collision with root package name */
    public static final byte f3005k = -32;

    /* renamed from: l  reason: collision with root package name */
    public static final int f3006l = 5;
    public byte[] a;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f3007c;

    /* renamed from: m  reason: collision with root package name */
    public h f3008m;
    public short n;
    public ad o;
    public Boolean p;
    public final long q;
    public byte[] r;

    /* compiled from: TCompactProtocol.java */
    /* loaded from: classes.dex */
    public static class b {
        public static final byte a = 1;
        public static final byte b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final byte f3009c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final byte f3010d = 4;

        /* renamed from: e  reason: collision with root package name */
        public static final byte f3011e = 5;

        /* renamed from: f  reason: collision with root package name */
        public static final byte f3012f = 6;

        /* renamed from: g  reason: collision with root package name */
        public static final byte f3013g = 7;

        /* renamed from: h  reason: collision with root package name */
        public static final byte f3014h = 8;

        /* renamed from: i  reason: collision with root package name */
        public static final byte f3015i = 9;

        /* renamed from: j  reason: collision with root package name */
        public static final byte f3016j = 10;

        /* renamed from: k  reason: collision with root package name */
        public static final byte f3017k = 11;

        /* renamed from: l  reason: collision with root package name */
        public static final byte f3018l = 12;
    }

    static {
        f3001f = r0;
        byte[] bArr = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};
    }

    public ac(aw awVar, long j2) {
        super(awVar);
        this.f3008m = new h(15);
        this.n = (short) 0;
        this.o = null;
        this.p = null;
        this.a = new byte[5];
        this.b = new byte[10];
        this.r = new byte[1];
        this.f3007c = new byte[1];
        this.q = j2;
    }

    private int E() throws p {
        int i2 = 0;
        if (this.f3024g.h() >= 5) {
            byte[] f2 = this.f3024g.f();
            int g2 = this.f3024g.g();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                byte b2 = f2[g2 + i2];
                i3 |= (b2 & Byte.MAX_VALUE) << i4;
                if ((b2 & 128) != 128) {
                    this.f3024g.a(i2 + 1);
                    return i3;
                }
                i4 += 7;
                i2++;
            }
        } else {
            int i5 = 0;
            while (true) {
                byte u = u();
                i2 |= (u & Byte.MAX_VALUE) << i5;
                if ((u & 128) != 128) {
                    return i2;
                }
                i5 += 7;
            }
        }
    }

    private long F() throws p {
        byte u;
        byte b2;
        int i2 = 0;
        long j2 = 0;
        if (this.f3024g.h() >= 10) {
            byte[] f2 = this.f3024g.f();
            int g2 = this.f3024g.g();
            long j3 = 0;
            int i3 = 0;
            while (true) {
                j3 |= (b2 & Byte.MAX_VALUE) << i3;
                if ((f2[g2 + i2] & 128) != 128) {
                    this.f3024g.a(i2 + 1);
                    return j3;
                }
                i3 += 7;
                i2++;
            }
        } else {
            while (true) {
                j2 |= (u & Byte.MAX_VALUE) << i2;
                if ((u() & 128) != 128) {
                    return j2;
                }
                i2 += 7;
            }
        }
    }

    private int c(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private long c(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private boolean c(byte b2) {
        int i2 = b2 & ap.f3041m;
        return i2 == 1 || i2 == 2;
    }

    private long d(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    private byte[] e(int i2) throws p {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2];
        this.f3024g.d(bArr, 0, i2);
        return bArr;
    }

    private void f(int i2) throws aj {
        if (i2 >= 0) {
            long j2 = this.q;
            if (j2 != -1 && i2 > j2) {
                throw new aj(f.b.a.a.a.J("Length exceeded max allowed: ", i2));
            }
            return;
        }
        throw new aj(f.b.a.a.a.J("Negative length: ", i2));
    }

    private int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ByteBuffer A() throws p {
        int E = E();
        f(E);
        if (E == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[E];
        this.f3024g.d(bArr, 0, E);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void B() {
        this.f3008m.c();
        this.n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ag agVar) throws p {
        b(f3002h);
        d(((agVar.b << 5) & (-32)) | 1);
        b(agVar.f3021c);
        a(agVar.a);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void b() throws p {
        this.n = this.f3008m.a();
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void c() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void d() throws p {
        b((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void e() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void f() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void g() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ag h() throws p {
        byte u = u();
        if (u == -126) {
            byte u2 = u();
            byte b2 = (byte) (u2 & f3004j);
            if (b2 == 1) {
                int E = E();
                return new ag(z(), (byte) ((u2 >> 5) & 3), E);
            }
            throw new aj(f.b.a.a.a.J("Expected version 1 but got ", b2));
        }
        StringBuilder o = f.b.a.a.a.o("Expected protocol id ");
        o.append(Integer.toHexString(-126));
        o.append(" but got ");
        o.append(Integer.toHexString(u));
        throw new aj(o.toString());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void i() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public an j() throws p {
        this.f3008m.a(this.n);
        this.n = (short) 0;
        return f2999d;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void k() throws p {
        this.n = this.f3008m.a();
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ad l() throws p {
        short s;
        byte u = u();
        if (u == 0) {
            return f3000e;
        }
        short s2 = (short) ((u & 240) >> 4);
        if (s2 == 0) {
            s = v();
        } else {
            s = (short) (this.n + s2);
        }
        byte b2 = (byte) (u & ap.f3041m);
        ad adVar = new ad("", d(b2), s);
        if (c(u)) {
            this.p = b2 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.n = adVar.f3019c;
        return adVar;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void m() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public af n() throws p {
        int E = E();
        byte u = E == 0 ? (byte) 0 : u();
        return new af(d((byte) (u >> 4)), d((byte) (u & ap.f3041m)), E);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void o() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ae p() throws p {
        byte u = u();
        int i2 = (u >> 4) & 15;
        if (i2 == 15) {
            i2 = E();
        }
        return new ae(d(u), i2);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void q() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public am r() throws p {
        return new am(p());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void s() throws p {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public boolean t() throws p {
        Boolean bool = this.p;
        if (bool == null) {
            return u() == 1;
        }
        boolean booleanValue = bool.booleanValue();
        this.p = null;
        return booleanValue;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public byte u() throws p {
        if (this.f3024g.h() > 0) {
            byte b2 = this.f3024g.f()[this.f3024g.g()];
            this.f3024g.a(1);
            return b2;
        }
        this.f3024g.d(this.f3007c, 0, 1);
        return this.f3007c[0];
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public short v() throws p {
        return (short) g(E());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public int w() throws p {
        return g(E());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public long x() throws p {
        return d(F());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public double y() throws p {
        byte[] bArr = new byte[8];
        this.f3024g.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public String z() throws p {
        int E = E();
        f(E);
        if (E == 0) {
            return "";
        }
        try {
            if (this.f3024g.h() >= E) {
                String str = new String(this.f3024g.f(), this.f3024g.g(), E, "UTF-8");
                this.f3024g.a(E);
                return str;
            }
            return new String(e(E), "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new p("UTF-8 not supported!");
        }
    }

    /* compiled from: TCompactProtocol.java */
    /* loaded from: classes.dex */
    public static class a implements ak {
        public final long a;

        public a() {
            this.a = -1L;
        }

        @Override // com.umeng.commonsdk.proguard.ak
        public ai a(aw awVar) {
            return new ac(awVar, this.a);
        }

        public a(int i2) {
            this.a = i2;
        }
    }

    private void b(int i2) throws p {
        int i3 = 0;
        while ((i2 & (-128)) != 0) {
            this.a[i3] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i3++;
        }
        byte[] bArr = this.a;
        bArr[i3] = (byte) i2;
        this.f3024g.b(bArr, 0, i3 + 1);
    }

    private void d(int i2) throws p {
        b((byte) i2);
    }

    private byte d(byte b2) throws aj {
        byte b3 = (byte) (b2 & ap.f3041m);
        switch (b3) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return ap.f3041m;
            case 10:
                return ap.f3040l;
            case 11:
                return ap.f3039k;
            case 12:
                return (byte) 12;
            default:
                throw new aj(f.b.a.a.a.J("don't know what type: ", b3));
        }
    }

    private byte e(byte b2) {
        return f3001f[b2];
    }

    private void b(long j2) throws p {
        int i2 = 0;
        while (((-128) & j2) != 0) {
            this.b[i2] = (byte) ((127 & j2) | 128);
            j2 >>>= 7;
            i2++;
        }
        byte[] bArr = this.b;
        bArr[i2] = (byte) j2;
        this.f3024g.b(bArr, 0, i2 + 1);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(an anVar) throws p {
        this.f3008m.a(this.n);
        this.n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ad adVar) throws p {
        if (adVar.b == 2) {
            this.o = adVar;
        } else {
            a(adVar, (byte) -1);
        }
    }

    private void b(byte b2) throws p {
        byte[] bArr = this.r;
        bArr[0] = b2;
        this.f3024g.b(bArr);
    }

    private void a(ad adVar, byte b2) throws p {
        if (b2 == -1) {
            b2 = e(adVar.b);
        }
        short s = adVar.f3019c;
        short s2 = this.n;
        if (s > s2 && s - s2 <= 15) {
            d(b2 | ((s - s2) << 4));
        } else {
            b(b2);
            a(adVar.f3019c);
        }
        this.n = adVar.f3019c;
    }

    public ac(aw awVar) {
        this(awVar, -1L);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(af afVar) throws p {
        int i2 = afVar.f3020c;
        if (i2 == 0) {
            d(0);
            return;
        }
        b(i2);
        d(e(afVar.b) | (e(afVar.a) << 4));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ae aeVar) throws p {
        a(aeVar.a, aeVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(am amVar) throws p {
        a(amVar.a, amVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(boolean z) throws p {
        ad adVar = this.o;
        if (adVar != null) {
            a(adVar, z ? (byte) 1 : (byte) 2);
            this.o = null;
            return;
        }
        b(z ? (byte) 1 : (byte) 2);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(byte b2) throws p {
        b(b2);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(short s) throws p {
        b(c((int) s));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(int i2) throws p {
        b(c(i2));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(long j2) throws p {
        b(c(j2));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(double d2) throws p {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d2), bArr, 0);
        this.f3024g.b(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(String str) throws p {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new p("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ByteBuffer byteBuffer) throws p {
        int limit = byteBuffer.limit() - byteBuffer.position();
        a(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), limit);
    }

    private void a(byte[] bArr, int i2, int i3) throws p {
        b(i3);
        this.f3024g.b(bArr, i2, i3);
    }

    public void a(byte b2, int i2) throws p {
        if (i2 <= 14) {
            d(e(b2) | (i2 << 4));
            return;
        }
        d(e(b2) | 240);
        b(i2);
    }

    private void a(long j2, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (j2 & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j2 >> 56) & 255);
    }

    private long a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (255 & bArr[0]);
    }
}
