package f.i.a.a.b1.x;

import f.i.a.a.b1.a;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: PsBinarySearchSeeker.java */
/* loaded from: classes.dex */
public final class s extends f.i.a.a.b1.a {

    /* compiled from: PsBinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static final class b implements a.g {
        public final e0 a;
        public final f.i.a.a.m1.u b = new f.i.a.a.m1.u();

        public b(e0 e0Var, a aVar) {
            this.a = e0Var;
        }

        @Override // f.i.a.a.b1.a.g
        public a.f a(f.i.a.a.b1.d dVar, long j2, a.c cVar) throws IOException, InterruptedException {
            int f2;
            long j3 = dVar.f4117d;
            int min = (int) Math.min(20000L, dVar.f4116c - j3);
            this.b.w(min);
            dVar.d(this.b.a, 0, min, false);
            f.i.a.a.m1.u uVar = this.b;
            int i2 = -1;
            long j4 = -9223372036854775807L;
            int i3 = -1;
            while (uVar.a() >= 4) {
                if (s.f(uVar.a, uVar.b) != 442) {
                    uVar.B(1);
                } else {
                    uVar.B(4);
                    long c2 = t.c(uVar);
                    if (c2 != -9223372036854775807L) {
                        long b = this.a.b(c2);
                        if (b > j2) {
                            if (j4 == -9223372036854775807L) {
                                return new a.f(-1, b, j3);
                            }
                            return a.f.a(j3 + i3);
                        } else if (100000 + b > j2) {
                            return a.f.a(j3 + uVar.b);
                        } else {
                            i3 = uVar.b;
                            j4 = b;
                        }
                    }
                    int i4 = uVar.f5776c;
                    if (uVar.a() < 10) {
                        uVar.A(i4);
                    } else {
                        uVar.B(9);
                        int p = uVar.p() & 7;
                        if (uVar.a() < p) {
                            uVar.A(i4);
                        } else {
                            uVar.B(p);
                            if (uVar.a() < 4) {
                                uVar.A(i4);
                            } else {
                                if (s.f(uVar.a, uVar.b) == 443) {
                                    uVar.B(4);
                                    int u = uVar.u();
                                    if (uVar.a() < u) {
                                        uVar.A(i4);
                                    } else {
                                        uVar.B(u);
                                    }
                                }
                                while (true) {
                                    if (uVar.a() < 4 || (f2 = s.f(uVar.a, uVar.b)) == 442 || f2 == 441 || (f2 >>> 8) != 1) {
                                        break;
                                    }
                                    uVar.B(4);
                                    if (uVar.a() < 2) {
                                        uVar.A(i4);
                                        break;
                                    }
                                    uVar.A(Math.min(uVar.f5776c, uVar.b + uVar.u()));
                                }
                            }
                        }
                    }
                    i2 = uVar.b;
                }
            }
            if (j4 != -9223372036854775807L) {
                return new a.f(-2, j4, j3 + i2);
            }
            return a.f.f4106d;
        }

        @Override // f.i.a.a.b1.a.g
        public void b() {
            this.b.x(h0.f5740f);
        }
    }

    public s(e0 e0Var, long j2, long j3) {
        super(new a.b(), new b(e0Var, null), j2, 0L, j2 + 1, 0L, j3, 188L, 1000);
    }

    public static int f(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}
