package f.i.a.a.b1.x;

import f.i.a.a.b1.a;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import java.io.IOException;
/* compiled from: TsBinarySearchSeeker.java */
/* loaded from: classes.dex */
public final class z extends f.i.a.a.b1.a {

    /* compiled from: TsBinarySearchSeeker.java */
    /* loaded from: classes.dex */
    public static final class a implements a.g {
        public final e0 a;
        public final f.i.a.a.m1.u b = new f.i.a.a.m1.u();

        /* renamed from: c  reason: collision with root package name */
        public final int f4595c;

        public a(int i2, e0 e0Var) {
            this.f4595c = i2;
            this.a = e0Var;
        }

        @Override // f.i.a.a.b1.a.g
        public a.f a(f.i.a.a.b1.d dVar, long j2, a.c cVar) throws IOException, InterruptedException {
            long j3 = dVar.f4126d;
            int min = (int) Math.min(112800L, dVar.f4125c - j3);
            this.b.w(min);
            dVar.d(this.b.a, 0, min, false);
            f.i.a.a.m1.u uVar = this.b;
            int i2 = uVar.f5785c;
            long j4 = -1;
            long j5 = -1;
            long j6 = -9223372036854775807L;
            while (uVar.a() >= 188) {
                byte[] bArr = uVar.a;
                int i3 = uVar.b;
                while (i3 < i2 && bArr[i3] != 71) {
                    i3++;
                }
                int i4 = i3 + 188;
                if (i4 > i2) {
                    break;
                }
                long d1 = c.a.a.b.g.h.d1(uVar, i3, this.f4595c);
                if (d1 != -9223372036854775807L) {
                    long b = this.a.b(d1);
                    if (b > j2) {
                        if (j6 == -9223372036854775807L) {
                            return new a.f(-1, b, j3);
                        }
                        return a.f.a(j3 + j5);
                    } else if (100000 + b > j2) {
                        return a.f.a(j3 + i3);
                    } else {
                        j5 = i3;
                        j6 = b;
                    }
                }
                uVar.A(i4);
                j4 = i4;
            }
            if (j6 != -9223372036854775807L) {
                return new a.f(-2, j6, j3 + j4);
            }
            return a.f.f4115d;
        }

        @Override // f.i.a.a.b1.a.g
        public void b() {
            this.b.x(h0.f5749f);
        }
    }

    public z(e0 e0Var, long j2, long j3, int i2) {
        super(new a.b(), new a(i2, e0Var), j2, 0L, j2 + 1, 0L, j3, 188L, 940);
    }
}
