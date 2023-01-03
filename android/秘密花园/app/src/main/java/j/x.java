package j;

import h.o.c.f;
import h.o.c.g;
import j.c0.a;
import java.security.MessageDigest;
import java.util.Arrays;

/* compiled from: SegmentedByteString.kt */
/* loaded from: classes.dex */
public final class x extends k {

    /* renamed from: f  reason: collision with root package name */
    public final transient byte[][] f6996f;

    /* renamed from: g  reason: collision with root package name */
    public final transient int[] f6997g;

    public x(byte[][] bArr, int[] iArr, f fVar) {
        super(k.f6978d.f6980c);
        this.f6996f = bArr;
        this.f6997g = iArr;
    }

    @Override // j.k
    public k a(String str) {
        MessageDigest instance = MessageDigest.getInstance(str);
        int length = this.f6996f.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f6997g;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            instance.update(this.f6996f[i2], i4, i5 - i3);
            i2++;
            i3 = i5;
        }
        byte[] digest = instance.digest();
        g.b(digest, "digest.digest()");
        return new k(digest);
    }

    @Override // j.k
    public int b() {
        return this.f6997g[this.f6996f.length - 1];
    }

    @Override // j.k
    public String c() {
        return a.j(l());
    }

    @Override // j.k
    public byte[] d() {
        return k();
    }

    @Override // j.k
    public byte e(int i2) {
        int i3;
        b.i((long) this.f6997g[this.f6996f.length - 1], (long) i2, 1);
        int j2 = j(i2);
        if (j2 == 0) {
            i3 = 0;
        } else {
            i3 = this.f6997g[j2 - 1];
        }
        int[] iArr = this.f6997g;
        byte[][] bArr = this.f6996f;
        return bArr[j2][(i2 - i3) + iArr[bArr.length + j2]];
    }

    @Override // j.k, java.lang.Object
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (kVar.b() == b() && f(0, kVar, 0, b())) {
                return true;
            }
        }
        return false;
    }

    @Override // j.k
    public boolean f(int i2, k kVar, int i3, int i4) {
        int i5;
        if (kVar == null) {
            g.f("other");
            throw null;
        } else if (i2 < 0 || i2 > b() - i4) {
            return false;
        } else {
            int i6 = i4 + i2;
            int j2 = j(i2);
            while (i2 < i6) {
                if (j2 == 0) {
                    i5 = 0;
                } else {
                    i5 = this.f6997g[j2 - 1];
                }
                int[] iArr = this.f6997g;
                int i7 = iArr[this.f6996f.length + j2];
                int min = Math.min(i6, (iArr[j2] - i5) + i5) - i2;
                if (!kVar.g(i3, this.f6996f[j2], (i2 - i5) + i7, min)) {
                    return false;
                }
                i3 += min;
                i2 += min;
                j2++;
            }
            return true;
        }
    }

    @Override // j.k
    public boolean g(int i2, byte[] bArr, int i3, int i4) {
        int i5;
        if (bArr == null) {
            g.f("other");
            throw null;
        } else if (i2 < 0 || i2 > b() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        } else {
            int i6 = i4 + i2;
            int j2 = j(i2);
            while (i2 < i6) {
                if (j2 == 0) {
                    i5 = 0;
                } else {
                    i5 = this.f6997g[j2 - 1];
                }
                int[] iArr = this.f6997g;
                int i7 = iArr[this.f6996f.length + j2];
                int min = Math.min(i6, (iArr[j2] - i5) + i5) - i2;
                if (!b.b(this.f6996f[j2], (i2 - i5) + i7, bArr, i3, min)) {
                    return false;
                }
                i3 += min;
                i2 += min;
                j2++;
            }
            return true;
        }
    }

    @Override // j.k
    public k h() {
        return a.p(l());
    }

    @Override // j.k, java.lang.Object
    public int hashCode() {
        int i2 = this.a;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f6996f.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < length) {
            int[] iArr = this.f6997g;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            byte[] bArr = this.f6996f[i3];
            int i8 = (i7 - i4) + i6;
            while (i6 < i8) {
                i5 = (i5 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i4 = i7;
        }
        this.a = i5;
        return i5;
    }

    @Override // j.k
    public void i(g gVar) {
        int length = this.f6996f.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f6997g;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            v vVar = new v(this.f6996f[i2], i4, i4 + (i5 - i3), true, false);
            v vVar2 = gVar.a;
            if (vVar2 == null) {
                vVar.f6994g = vVar;
                vVar.f6993f = vVar;
                gVar.a = vVar;
            } else {
                v vVar3 = vVar2.f6994g;
                if (vVar3 != null) {
                    vVar3.b(vVar);
                } else {
                    g.e();
                    throw null;
                }
            }
            i2++;
            i3 = i5;
        }
        gVar.b += (long) b();
    }

    public final int j(int i2) {
        int binarySearch = Arrays.binarySearch(this.f6997g, 0, this.f6996f.length, i2 + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    public byte[] k() {
        byte[] bArr = new byte[b()];
        int length = this.f6996f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.f6997g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = i6 - i3;
            b.c(this.f6996f[i2], i5, bArr, i4, i7);
            i4 += i7;
            i2++;
            i3 = i6;
        }
        return bArr;
    }

    public final k l() {
        return new k(k());
    }

    @Override // j.k, java.lang.Object
    public String toString() {
        return a.q(l());
    }
}
