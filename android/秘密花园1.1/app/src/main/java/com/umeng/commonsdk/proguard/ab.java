package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TBinaryProtocol.java */
/* loaded from: classes.dex */
public class ab extends ai {
    public static final int a = -65536;
    public static final int b = -2147418112;

    /* renamed from: h  reason: collision with root package name */
    public static final an f2988h = new an();

    /* renamed from: c  reason: collision with root package name */
    public boolean f2989c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2990d;

    /* renamed from: e  reason: collision with root package name */
    public int f2991e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2992f;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f2993i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f2994j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f2995k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f2996l;

    /* renamed from: m  reason: collision with root package name */
    public byte[] f2997m;
    public byte[] n;
    public byte[] o;
    public byte[] p;

    /* compiled from: TBinaryProtocol.java */
    /* loaded from: classes.dex */
    public static class a implements ak {
        public boolean a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public int f2998c;

        public a() {
            this(false, true);
        }

        @Override // com.umeng.commonsdk.proguard.ak
        public ai a(aw awVar) {
            ab abVar = new ab(awVar, this.a, this.b);
            int i2 = this.f2998c;
            if (i2 != 0) {
                abVar.c(i2);
            }
            return abVar;
        }

        public a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public a(boolean z, boolean z2, int i2) {
            this.a = false;
            this.b = true;
            this.a = z;
            this.b = z2;
            this.f2998c = i2;
        }
    }

    public ab(aw awVar) {
        this(awVar, false, true);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ByteBuffer A() throws p {
        int w = w();
        d(w);
        if (this.f3024g.h() >= w) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f3024g.f(), this.f3024g.g(), w);
            this.f3024g.a(w);
            return wrap;
        }
        byte[] bArr = new byte[w];
        this.f3024g.d(bArr, 0, w);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ag agVar) throws p {
        if (this.f2990d) {
            a((-2147418112) | agVar.b);
            a(agVar.a);
            a(agVar.f3021c);
            return;
        }
        a(agVar.a);
        a(agVar.b);
        a(agVar.f3021c);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(an anVar) {
    }

    public String b(int i2) throws p {
        try {
            d(i2);
            byte[] bArr = new byte[i2];
            this.f3024g.d(bArr, 0, i2);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new p("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void b() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void c() {
    }

    public void c(int i2) {
        this.f2991e = i2;
        this.f2992f = true;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void d() throws p {
        a((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void e() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void f() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void g() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ag h() throws p {
        int w = w();
        if (w < 0) {
            if (((-65536) & w) == -2147418112) {
                return new ag(z(), (byte) (w & 255), w());
            }
            throw new aj(4, "Bad version in readMessageBegin");
        } else if (!this.f2989c) {
            return new ag(b(w), u(), w());
        } else {
            throw new aj(4, "Missing version in readMessageBegin, old client?");
        }
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void i() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public an j() {
        return f2988h;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void k() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ad l() throws p {
        byte u = u();
        return new ad("", u, u == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void m() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public af n() throws p {
        return new af(u(), u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void o() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ae p() throws p {
        return new ae(u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void q() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public am r() throws p {
        return new am(u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void s() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public boolean t() throws p {
        return u() == 1;
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public byte u() throws p {
        if (this.f3024g.h() >= 1) {
            byte b2 = this.f3024g.f()[this.f3024g.g()];
            this.f3024g.a(1);
            return b2;
        }
        a(this.f2997m, 0, 1);
        return this.f2997m[0];
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public short v() throws p {
        byte[] bArr = this.n;
        int i2 = 0;
        if (this.f3024g.h() >= 2) {
            bArr = this.f3024g.f();
            i2 = this.f3024g.g();
            this.f3024g.a(2);
        } else {
            a(this.n, 0, 2);
        }
        return (short) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public int w() throws p {
        byte[] bArr = this.o;
        int i2 = 0;
        if (this.f3024g.h() >= 4) {
            bArr = this.f3024g.f();
            i2 = this.f3024g.g();
            this.f3024g.a(4);
        } else {
            a(this.o, 0, 4);
        }
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public long x() throws p {
        byte[] bArr = this.p;
        int i2 = 0;
        if (this.f3024g.h() >= 8) {
            bArr = this.f3024g.f();
            i2 = this.f3024g.g();
            this.f3024g.a(8);
        } else {
            a(this.p, 0, 8);
        }
        return (bArr[i2 + 7] & 255) | ((bArr[i2] & 255) << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public double y() throws p {
        return Double.longBitsToDouble(x());
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public String z() throws p {
        int w = w();
        if (this.f3024g.h() >= w) {
            try {
                String str = new String(this.f3024g.f(), this.f3024g.g(), w, "UTF-8");
                this.f3024g.a(w);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new p("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return b(w);
    }

    public ab(aw awVar, boolean z, boolean z2) {
        super(awVar);
        this.f2989c = false;
        this.f2990d = true;
        this.f2992f = false;
        this.f2993i = new byte[1];
        this.f2994j = new byte[2];
        this.f2995k = new byte[4];
        this.f2996l = new byte[8];
        this.f2997m = new byte[1];
        this.n = new byte[2];
        this.o = new byte[4];
        this.p = new byte[8];
        this.f2989c = z;
        this.f2990d = z2;
    }

    public void d(int i2) throws p {
        if (i2 >= 0) {
            if (this.f2992f) {
                int i3 = this.f2991e - i2;
                this.f2991e = i3;
                if (i3 < 0) {
                    throw new aj(f.b.a.a.a.J("Message length exceeded: ", i2));
                }
                return;
            }
            return;
        }
        throw new aj(f.b.a.a.a.J("Negative length: ", i2));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ad adVar) throws p {
        a(adVar.b);
        a(adVar.f3019c);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(af afVar) throws p {
        a(afVar.a);
        a(afVar.b);
        a(afVar.f3020c);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ae aeVar) throws p {
        a(aeVar.a);
        a(aeVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(am amVar) throws p {
        a(amVar.a);
        a(amVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(boolean z) throws p {
        a(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(byte b2) throws p {
        byte[] bArr = this.f2993i;
        bArr[0] = b2;
        this.f3024g.b(bArr, 0, 1);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(short s) throws p {
        byte[] bArr = this.f2994j;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        this.f3024g.b(bArr, 0, 2);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(int i2) throws p {
        byte[] bArr = this.f2995k;
        bArr[0] = (byte) ((i2 >> 24) & 255);
        bArr[1] = (byte) ((i2 >> 16) & 255);
        bArr[2] = (byte) ((i2 >> 8) & 255);
        bArr[3] = (byte) (i2 & 255);
        this.f3024g.b(bArr, 0, 4);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(long j2) throws p {
        byte[] bArr = this.f2996l;
        bArr[0] = (byte) ((j2 >> 56) & 255);
        bArr[1] = (byte) ((j2 >> 48) & 255);
        bArr[2] = (byte) ((j2 >> 40) & 255);
        bArr[3] = (byte) ((j2 >> 32) & 255);
        bArr[4] = (byte) ((j2 >> 24) & 255);
        bArr[5] = (byte) ((j2 >> 16) & 255);
        bArr[6] = (byte) ((j2 >> 8) & 255);
        bArr[7] = (byte) (j2 & 255);
        this.f3024g.b(bArr, 0, 8);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(double d2) throws p {
        a(Double.doubleToLongBits(d2));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(String str) throws p {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.f3024g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new p("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ByteBuffer byteBuffer) throws p {
        int limit = byteBuffer.limit() - byteBuffer.position();
        a(limit);
        this.f3024g.b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), limit);
    }

    private int a(byte[] bArr, int i2, int i3) throws p {
        d(i3);
        return this.f3024g.d(bArr, i2, i3);
    }
}
