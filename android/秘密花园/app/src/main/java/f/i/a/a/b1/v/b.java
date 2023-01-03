package f.i.a.a.b1.v;

import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.b1.v.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.n;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: FlacReader.java */
/* loaded from: classes.dex */
public final class b extends h {
    public n n;
    public a o;

    /* compiled from: FlacReader.java */
    /* loaded from: classes.dex */
    public class a implements f, f.i.a.a.b1.n {
        public long[] a;
        public long[] b;

        /* renamed from: c  reason: collision with root package name */
        public long f4251c = -1;

        /* renamed from: d  reason: collision with root package name */
        public long f4252d = -1;

        public a() {
        }

        @Override // f.i.a.a.b1.v.f
        public f.i.a.a.b1.n a() {
            return this;
        }

        @Override // f.i.a.a.b1.v.f
        public long c(d dVar) throws IOException, InterruptedException {
            long j2 = this.f4252d;
            if (j2 < 0) {
                return -1;
            }
            long j3 = -(j2 + 2);
            this.f4252d = -1;
            return j3;
        }

        @Override // f.i.a.a.b1.v.f
        public void d(long j2) {
            this.f4252d = this.a[h0.f(this.a, j2, true, true)];
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            int f2 = h0.f(this.a, (((long) b.this.f4271i) * j2) / 1000000, true, true);
            long a = b.this.a(this.a[f2]);
            o oVar = new o(a, this.f4251c + this.b[f2]);
            if (a < j2) {
                long[] jArr = this.a;
                if (f2 != jArr.length - 1) {
                    int i2 = f2 + 1;
                    return new n.a(oVar, new o(b.this.a(jArr[i2]), this.f4251c + this.b[i2]));
                }
            }
            return new n.a(oVar);
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            f.i.a.a.m1.n nVar = b.this.n;
            return (nVar.f5683d * 1000000) / ((long) nVar.a);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004c, code lost:
        r2 = 0;
     */
    @Override // f.i.a.a.b1.v.h
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long d(f.i.a.a.m1.u r15) {
        /*
            r14 = this;
            byte[] r0 = r15.a
            r1 = 0
            byte r0 = r0[r1]
            r2 = -1
            r3 = 1
            if (r0 != r2) goto L_0x000b
            r0 = 1
            goto L_0x000c
        L_0x000b:
            r0 = 0
        L_0x000c:
            if (r0 != 0) goto L_0x0011
            r0 = -1
            return r0
        L_0x0011:
            byte[] r0 = r15.a
            r4 = 2
            byte r0 = r0[r4]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r5 = 4
            int r0 = r0 >> r5
            switch(r0) {
                case 1: goto L_0x009b;
                case 2: goto L_0x0095;
                case 3: goto L_0x0095;
                case 4: goto L_0x0095;
                case 5: goto L_0x0095;
                case 6: goto L_0x0025;
                case 7: goto L_0x0025;
                case 8: goto L_0x001f;
                case 9: goto L_0x001f;
                case 10: goto L_0x001f;
                case 11: goto L_0x001f;
                case 12: goto L_0x001f;
                case 13: goto L_0x001f;
                case 14: goto L_0x001f;
                case 15: goto L_0x001f;
                default: goto L_0x001d;
            }
        L_0x001d:
            goto L_0x009d
        L_0x001f:
            r15 = 256(0x100, float:3.59E-43)
            int r0 = r0 + -8
            goto L_0x0098
        L_0x0025:
            r15.B(r5)
            byte[] r2 = r15.a
            int r4 = r15.b
            byte r2 = r2[r4]
            long r4 = (long) r2
            r2 = 7
            r6 = 7
        L_0x0031:
            r7 = 6
            if (r6 < 0) goto L_0x004c
            int r8 = r3 << r6
            long r9 = (long) r8
            long r9 = r9 & r4
            r11 = 0
            int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r13 != 0) goto L_0x0049
            if (r6 >= r7) goto L_0x0045
            int r8 = r8 - r3
            long r8 = (long) r8
            long r4 = r4 & r8
            int r2 = r2 - r6
            goto L_0x004d
        L_0x0045:
            if (r6 != r2) goto L_0x004c
            r2 = 1
            goto L_0x004d
        L_0x0049:
            int r6 = r6 + -1
            goto L_0x0031
        L_0x004c:
            r2 = 0
        L_0x004d:
            if (r2 == 0) goto L_0x0089
            r3 = 1
        L_0x0050:
            if (r3 >= r2) goto L_0x0073
            byte[] r6 = r15.a
            int r8 = r15.b
            int r8 = r8 + r3
            byte r6 = r6[r8]
            r8 = r6 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 != r9) goto L_0x0067
            long r4 = r4 << r7
            r6 = r6 & 63
            long r8 = (long) r6
            long r4 = r4 | r8
            int r3 = r3 + 1
            goto L_0x0050
        L_0x0067:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.String r0 = "Invalid UTF-8 sequence continuation byte: "
            java.lang.String r0 = f.b.a.a.a.c(r0, r4)
            r15.<init>(r0)
            throw r15
        L_0x0073:
            int r3 = r15.b
            int r3 = r3 + r2
            r15.b = r3
            if (r0 != r7) goto L_0x007f
            int r0 = r15.p()
            goto L_0x0083
        L_0x007f:
            int r0 = r15.u()
        L_0x0083:
            r15.A(r1)
            int r2 = r0 + 1
            goto L_0x009d
        L_0x0089:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.String r0 = "Invalid UTF-8 sequence first byte: "
            java.lang.String r0 = f.b.a.a.a.c(r0, r4)
            r15.<init>(r0)
            throw r15
        L_0x0095:
            r15 = 576(0x240, float:8.07E-43)
            int r0 = r0 - r4
        L_0x0098:
            int r2 = r15 << r0
            goto L_0x009d
        L_0x009b:
            r2 = 192(0xc0, float:2.69E-43)
        L_0x009d:
            long r0 = (long) r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.v.b.d(f.i.a.a.m1.u):long");
    }

    @Override // f.i.a.a.b1.v.h
    public boolean e(u uVar, long j2, h.b bVar) throws IOException, InterruptedException {
        byte[] bArr = uVar.a;
        if (this.n == null) {
            this.n = new f.i.a.a.m1.n(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, uVar.f5701c);
            copyOfRange[4] = Byte.MIN_VALUE;
            List singletonList = Collections.singletonList(copyOfRange);
            f.i.a.a.m1.n nVar = this.n;
            int i2 = nVar.f5682c;
            int i3 = nVar.a;
            bVar.a = b0.j(null, "audio/flac", null, -1, i2 * i3, nVar.b, i3, singletonList, null, 0, null);
        } else {
            if ((bArr[0] & Byte.MAX_VALUE) == 3) {
                a aVar = new a();
                this.o = aVar;
                uVar.B(1);
                int r = uVar.r() / 18;
                aVar.a = new long[r];
                aVar.b = new long[r];
                for (int i4 = 0; i4 < r; i4++) {
                    aVar.a[i4] = uVar.j();
                    aVar.b[i4] = uVar.j();
                    uVar.B(2);
                }
            } else if (bArr[0] == -1) {
                a aVar2 = this.o;
                if (aVar2 != null) {
                    aVar2.f4251c = j2;
                    bVar.b = aVar2;
                }
                return false;
            }
        }
        return true;
    }

    @Override // f.i.a.a.b1.v.h
    public void f(boolean z) {
        super.f(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
