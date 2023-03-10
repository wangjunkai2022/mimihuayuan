package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TBinaryProtocol.java */
/* loaded from: classes.dex */
public class ab extends ai {
    public static final int a = -65536;
    public static final int b = -2147418112;

    /* renamed from: h  reason: collision with root package name */
    public static final an f3067h = new an();

    /* renamed from: c  reason: collision with root package name */
    public boolean f3068c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3069d;

    /* renamed from: e  reason: collision with root package name */
    public int f3070e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3071f;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f3072i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f3073j;

    /* renamed from: k  reason: collision with root package name */
    public byte[] f3074k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f3075l;

    /* renamed from: m  reason: collision with root package name */
    public byte[] f3076m;
    public byte[] n;
    public byte[] o;
    public byte[] p;

    /* compiled from: TBinaryProtocol.java */
    /* loaded from: classes.dex */
    public static class a implements ak {
        public boolean a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public int f3077c;

        public a() {
            this(false, true);
        }

        @Override // com.umeng.commonsdk.proguard.ak
        public ai a(aw awVar) {
            ab abVar = new ab(awVar, this.a, this.b);
            int i2 = this.f3077c;
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
            this.f3077c = i2;
        }
    }

    public ab(aw awVar) {
        this(awVar, false, true);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public ByteBuffer A() throws p {
        int w = w();
        d(w);
        if (this.f3103g.h() >= w) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f3103g.f(), this.f3103g.g(), w);
            this.f3103g.a(w);
            return wrap;
        }
        byte[] bArr = new byte[w];
        this.f3103g.d(bArr, 0, w);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a() {
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ag agVar) throws p {
        if (this.f3069d) {
            a((-2147418112) | agVar.b);
            a(agVar.a);
            a(agVar.f3100c);
            return;
        }
        a(agVar.a);
        a(agVar.b);
        a(agVar.f3100c);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(an anVar) {
    }

    public String b(int i2) throws p {
        try {
            d(i2);
            byte[] bArr = new byte[i2];
            this.f3103g.d(bArr, 0, i2);
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
        this.f3070e = i2;
        this.f3071f = true;
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
        } else if (!this.f3068c) {
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
        return f3067h;
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
        if (this.f3103g.h() >= 1) {
            byte b2 = this.f3103g.f()[this.f3103g.g()];
            this.f3103g.a(1);
            return b2;
        }
        a(this.f3076m, 0, 1);
        return this.f3076m[0];
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public short v() throws p {
        byte[] bArr = this.n;
        int i2 = 0;
        if (this.f3103g.h() >= 2) {
            bArr = this.f3103g.f();
            i2 = this.f3103g.g();
            this.f3103g.a(2);
        } else {
            a(this.n, 0, 2);
        }
        return (short) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public int w() throws p {
        byte[] bArr = this.o;
        int i2 = 0;
        if (this.f3103g.h() >= 4) {
            bArr = this.f3103g.f();
            i2 = this.f3103g.g();
            this.f3103g.a(4);
        } else {
            a(this.o, 0, 4);
        }
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public long x() throws p {
        byte[] bArr = this.p;
        int i2 = 0;
        if (this.f3103g.h() >= 8) {
            bArr = this.f3103g.f();
            i2 = this.f3103g.g();
            this.f3103g.a(8);
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
        if (this.f3103g.h() >= w) {
            try {
                String str = new String(this.f3103g.f(), this.f3103g.g(), w, "UTF-8");
                this.f3103g.a(w);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new p("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return b(w);
    }

    public ab(aw awVar, boolean z, boolean z2) {
        super(awVar);
        this.f3068c = false;
        this.f3069d = true;
        this.f3071f = false;
        this.f3072i = new byte[1];
        this.f3073j = new byte[2];
        this.f3074k = new byte[4];
        this.f3075l = new byte[8];
        this.f3076m = new byte[1];
        this.n = new byte[2];
        this.o = new byte[4];
        this.p = new byte[8];
        this.f3068c = z;
        this.f3069d = z2;
    }

    public void d(int i2) throws p {
        if (i2 >= 0) {
            if (this.f3071f) {
                int i3 = this.f3070e - i2;
                this.f3070e = i3;
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
        a(adVar.f3098c);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(af afVar) throws p {
        a(afVar.a);
        a(afVar.b);
        a(afVar.f3099c);
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
        byte[] bArr = this.f3072i;
        bArr[0] = b2;
        this.f3103g.b(bArr, 0, 1);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(short s) throws p {
        byte[] bArr = this.f3073j;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        this.f3103g.b(bArr, 0, 2);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(int i2) throws p {
        byte[] bArr = this.f3074k;
        bArr[0] = (byte) ((i2 >> 24) & 255);
        bArr[1] = (byte) ((i2 >> 16) & 255);
        bArr[2] = (byte) ((i2 >> 8) & 255);
        bArr[3] = (byte) (i2 & 255);
        this.f3103g.b(bArr, 0, 4);
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(long j2) throws p {
        byte[] bArr = this.f3075l;
        bArr[0] = (byte) ((j2 >> 56) & 255);
        bArr[1] = (byte) ((j2 >> 48) & 255);
        bArr[2] = (byte) ((j2 >> 40) & 255);
        bArr[3] = (byte) ((j2 >> 32) & 255);
        bArr[4] = (byte) ((j2 >> 24) & 255);
        bArr[5] = (byte) ((j2 >> 16) & 255);
        bArr[6] = (byte) ((j2 >> 8) & 255);
        bArr[7] = (byte) (j2 & 255);
        this.f3103g.b(bArr, 0, 8);
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
            this.f3103g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new p("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.ai
    public void a(ByteBuffer byteBuffer) throws p {
        int limit = byteBuffer.limit() - byteBuffer.position();
        a(limit);
        this.f3103g.b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), limit);
    }

    private int a(byte[] bArr, int i2, int i3) throws p {
        d(i3);
        return this.f3103g.d(bArr, i2, i3);
    }
}
