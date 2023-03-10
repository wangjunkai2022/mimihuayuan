package f.i.a.a.b1.u;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.tencent.smtt.sdk.TbsListener;
import f.i.a.a.b1.u.a;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import f.i.a.a.m1.u;
import java.util.ArrayList;
/* compiled from: AtomParsers.java */
/* loaded from: classes.dex */
public final class b {
    public static final int a = h0.C("vide");
    public static final int b = h0.C("soun");

    /* renamed from: c  reason: collision with root package name */
    public static final int f4238c = h0.C("text");

    /* renamed from: d  reason: collision with root package name */
    public static final int f4239d = h0.C("sbtl");

    /* renamed from: e  reason: collision with root package name */
    public static final int f4240e = h0.C("subt");

    /* renamed from: f  reason: collision with root package name */
    public static final int f4241f = h0.C("clcp");

    /* renamed from: g  reason: collision with root package name */
    public static final int f4242g = h0.C("meta");

    /* renamed from: h  reason: collision with root package name */
    public static final int f4243h = h0.C("mdta");

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f4244i = h0.O("OpusHead");

    /* compiled from: AtomParsers.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a();

        int b();

        int c();
    }

    /* compiled from: AtomParsers.java */
    /* renamed from: f.i.a.a.b1.u.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0064b implements a {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final u f4245c;

        public C0064b(a.b bVar) {
            u uVar = bVar.g1;
            this.f4245c = uVar;
            uVar.A(12);
            this.a = this.f4245c.s();
            this.b = this.f4245c.s();
        }

        @Override // f.i.a.a.b1.u.b.a
        public boolean a() {
            return this.a != 0;
        }

        @Override // f.i.a.a.b1.u.b.a
        public int b() {
            return this.b;
        }

        @Override // f.i.a.a.b1.u.b.a
        public int c() {
            int i2 = this.a;
            return i2 == 0 ? this.f4245c.s() : i2;
        }
    }

    /* compiled from: AtomParsers.java */
    /* loaded from: classes.dex */
    public static final class c implements a {
        public final u a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4246c;

        /* renamed from: d  reason: collision with root package name */
        public int f4247d;

        /* renamed from: e  reason: collision with root package name */
        public int f4248e;

        public c(a.b bVar) {
            u uVar = bVar.g1;
            this.a = uVar;
            uVar.A(12);
            this.f4246c = this.a.s() & 255;
            this.b = this.a.s();
        }

        @Override // f.i.a.a.b1.u.b.a
        public boolean a() {
            return false;
        }

        @Override // f.i.a.a.b1.u.b.a
        public int b() {
            return this.b;
        }

        @Override // f.i.a.a.b1.u.b.a
        public int c() {
            int i2 = this.f4246c;
            if (i2 == 8) {
                return this.a.p();
            }
            if (i2 == 16) {
                return this.a.u();
            }
            int i3 = this.f4247d;
            this.f4247d = i3 + 1;
            if (i3 % 2 == 0) {
                int p = this.a.p();
                this.f4248e = p;
                return (p & TbsListener.ErrorCode.TPATCH_VERSION_FAILED) >> 4;
            }
            return this.f4248e & 15;
        }
    }

    public static Pair<String, byte[]> a(u uVar, int i2) {
        uVar.A(i2 + 8 + 4);
        uVar.B(1);
        b(uVar);
        uVar.B(2);
        int p = uVar.p();
        if ((p & 128) != 0) {
            uVar.B(2);
        }
        if ((p & 64) != 0) {
            uVar.B(uVar.u());
        }
        if ((p & 32) != 0) {
            uVar.B(2);
        }
        uVar.B(1);
        b(uVar);
        String d2 = r.d(uVar.p());
        if (!"audio/mpeg".equals(d2) && !"audio/vnd.dts".equals(d2) && !"audio/vnd.dts.hd".equals(d2)) {
            uVar.B(12);
            uVar.B(1);
            int b2 = b(uVar);
            byte[] bArr = new byte[b2];
            System.arraycopy(uVar.a, uVar.b, bArr, 0, b2);
            uVar.b += b2;
            return Pair.create(d2, bArr);
        }
        return Pair.create(d2, null);
    }

    public static int b(u uVar) {
        int p = uVar.p();
        int i2 = p & 127;
        while ((p & 128) == 128) {
            p = uVar.p();
            i2 = (i2 << 7) | (p & 127);
        }
        return i2;
    }

    @Nullable
    public static f.i.a.a.d1.a c(a.C0063a c0063a) {
        a.b e2 = c0063a.e(f.i.a.a.b1.u.a.g0);
        a.b e3 = c0063a.e(f.i.a.a.b1.u.a.P0);
        a.b e4 = c0063a.e(f.i.a.a.b1.u.a.Q0);
        if (e2 != null && e3 != null && e4 != null) {
            u uVar = e2.g1;
            uVar.A(16);
            if (uVar.d() == f4243h) {
                u uVar2 = e3.g1;
                uVar2.A(12);
                int d2 = uVar2.d();
                String[] strArr = new String[d2];
                for (int i2 = 0; i2 < d2; i2++) {
                    int d3 = uVar2.d();
                    uVar2.B(4);
                    strArr[i2] = uVar2.m(d3 - 8);
                }
                u uVar3 = e4.g1;
                uVar3.A(8);
                ArrayList arrayList = new ArrayList();
                while (uVar3.a() > 8) {
                    int i3 = uVar3.b;
                    int d4 = uVar3.d();
                    int d5 = uVar3.d() - 1;
                    if (d5 >= 0 && d5 < d2) {
                        e f2 = f.f(uVar3, i3 + d4, strArr[d5]);
                        if (f2 != null) {
                            arrayList.add(f2);
                        }
                    }
                    uVar3.A(i3 + d4);
                }
                if (!arrayList.isEmpty()) {
                    return new f.i.a.a.d1.a(arrayList);
                }
            }
        }
        return null;
    }

    public static Pair<Integer, k> d(u uVar, int i2, int i3) {
        Integer num;
        k kVar;
        Pair<Integer, k> create;
        int i4;
        int i5;
        byte[] bArr;
        int i6 = uVar.b;
        while (i6 - i2 < i3) {
            uVar.A(i6);
            int d2 = uVar.d();
            int i7 = 1;
            c.a.a.b.g.h.n(d2 > 0, "childAtomSize should be positive");
            if (uVar.d() == f.i.a.a.b1.u.a.j0) {
                int i8 = i6 + 8;
                int i9 = -1;
                int i10 = 0;
                String str = null;
                Integer num2 = null;
                while (i8 - i6 < d2) {
                    uVar.A(i8);
                    int d3 = uVar.d();
                    int d4 = uVar.d();
                    if (d4 == f.i.a.a.b1.u.a.p0) {
                        num2 = Integer.valueOf(uVar.d());
                    } else if (d4 == f.i.a.a.b1.u.a.k0) {
                        uVar.B(4);
                        str = uVar.m(4);
                    } else if (d4 == f.i.a.a.b1.u.a.l0) {
                        i9 = i8;
                        i10 = d3;
                    }
                    i8 += d3;
                }
                if ("cenc".equals(str) || "cbc1".equals(str) || "cens".equals(str) || "cbcs".equals(str)) {
                    c.a.a.b.g.h.n(num2 != null, "frma atom is mandatory");
                    c.a.a.b.g.h.n(i9 != -1, "schi atom is mandatory");
                    int i11 = i9 + 8;
                    while (true) {
                        if (i11 - i9 >= i10) {
                            num = num2;
                            kVar = null;
                            break;
                        }
                        uVar.A(i11);
                        int d5 = uVar.d();
                        if (uVar.d() == f.i.a.a.b1.u.a.m0) {
                            int d6 = (uVar.d() >> 24) & 255;
                            uVar.B(i7);
                            if (d6 == 0) {
                                uVar.B(i7);
                                i4 = 0;
                                i5 = 0;
                            } else {
                                int p = uVar.p();
                                i4 = p & 15;
                                i5 = (p & TbsListener.ErrorCode.TPATCH_VERSION_FAILED) >> 4;
                            }
                            boolean z = uVar.p() == i7;
                            int p2 = uVar.p();
                            byte[] bArr2 = new byte[16];
                            System.arraycopy(uVar.a, uVar.b, bArr2, 0, 16);
                            uVar.b += 16;
                            if (z && p2 == 0) {
                                int p3 = uVar.p();
                                byte[] bArr3 = new byte[p3];
                                System.arraycopy(uVar.a, uVar.b, bArr3, 0, p3);
                                uVar.b += p3;
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = num2;
                            kVar = new k(z, str, p2, bArr2, i5, i4, bArr);
                        } else {
                            i11 += d5;
                            i7 = 1;
                        }
                    }
                    c.a.a.b.g.h.n(kVar != null, "tenc atom is mandatory");
                    create = Pair.create(num, kVar);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            i6 += d2;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
        if (r12 == 0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static f.i.a.a.b1.u.j e(f.i.a.a.b1.u.a.C0063a r43, f.i.a.a.b1.u.a.b r44, long r45, f.i.a.a.z0.e r47, boolean r48, boolean r49) throws f.i.a.a.h0 {
        /*
            Method dump skipped, instructions count: 2431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.b.e(f.i.a.a.b1.u.a$a, f.i.a.a.b1.u.a$b, long, f.i.a.a.z0.e, boolean, boolean):f.i.a.a.b1.u.j");
    }

    @Nullable
    public static f.i.a.a.d1.a f(a.b bVar, boolean z) {
        if (z) {
            return null;
        }
        u uVar = bVar.g1;
        uVar.A(8);
        while (uVar.a() >= 8) {
            int i2 = uVar.b;
            int d2 = uVar.d();
            if (uVar.d() == f.i.a.a.b1.u.a.O0) {
                uVar.A(i2);
                int i3 = i2 + d2;
                uVar.B(12);
                while (true) {
                    int i4 = uVar.b;
                    if (i4 >= i3) {
                        return null;
                    }
                    int d3 = uVar.d();
                    if (uVar.d() == f.i.a.a.b1.u.a.Q0) {
                        uVar.A(i4);
                        int i5 = i4 + d3;
                        uVar.B(8);
                        ArrayList arrayList = new ArrayList();
                        while (uVar.b < i5) {
                            a.b c2 = f.c(uVar);
                            if (c2 != null) {
                                arrayList.add(c2);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        return new f.i.a.a.d1.a(arrayList);
                    }
                    uVar.A(i4 + d3);
                }
            } else {
                uVar.A(i2 + d2);
            }
        }
        return null;
    }
}
