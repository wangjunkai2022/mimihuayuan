package j;

import h.o.c.f;
import h.o.c.g;
import java.io.Serializable;
import java.security.MessageDigest;

/* compiled from: ByteString.kt */
/* loaded from: classes.dex */
public class k implements Serializable, Comparable<k> {
    public transient int a;
    public transient String b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f6980c;

    /* renamed from: e  reason: collision with root package name */
    public static final a f6979e = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public static final k f6978d = j.c0.a.b;

    /* compiled from: ByteString.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }

        public static k c(a aVar, byte[] bArr, int i2, int i3, int i4) {
            if ((i4 & 1) != 0) {
                i2 = 0;
            }
            if ((i4 & 2) != 0) {
                i3 = bArr.length;
            }
            b.i((long) bArr.length, (long) i2, (long) i3);
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            return new k(bArr2);
        }

        public final k a(String str) {
            return j.c0.a.d(str);
        }

        public final k b(String str) {
            if (str != null) {
                return j.c0.a.e(str);
            }
            g.f("$receiver");
            throw null;
        }
    }

    public k(byte[] bArr) {
        if (bArr != null) {
            this.f6980c = bArr;
        } else {
            g.f("data");
            throw null;
        }
    }

    public k a(String str) {
        byte[] digest = MessageDigest.getInstance(str).digest(this.f6980c);
        g.b(digest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new k(digest);
    }

    public int b() {
        return j.c0.a.h(this);
    }

    public String c() {
        return j.c0.a.j(this);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public int compareTo(k kVar) {
        k kVar2 = kVar;
        if (kVar2 != null) {
            return j.c0.a.b(this, kVar2);
        }
        g.f("other");
        throw null;
    }

    public byte[] d() {
        return j.c0.a.k(this);
    }

    public byte e(int i2) {
        return j.c0.a.g(this, i2);
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        return j.c0.a.f(this, obj);
    }

    public boolean f(int i2, k kVar, int i3, int i4) {
        return j.c0.a.m(this, i2, kVar, i3, i4);
    }

    public boolean g(int i2, byte[] bArr, int i3, int i4) {
        if (bArr != null) {
            return j.c0.a.n(this, i2, bArr, i3, i4);
        }
        g.f("other");
        throw null;
    }

    public k h() {
        return j.c0.a.p(this);
    }

    @Override // java.lang.Object
    public int hashCode() {
        return j.c0.a.i(this);
    }

    public void i(g gVar) {
        byte[] bArr = this.f6980c;
        gVar.O(bArr, 0, bArr.length);
    }

    @Override // java.lang.Object
    public String toString() {
        return j.c0.a.q(this);
    }
}
