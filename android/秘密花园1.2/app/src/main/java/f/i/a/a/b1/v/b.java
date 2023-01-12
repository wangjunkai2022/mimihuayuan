package f.i.a.a.b1.v;

import f.i.a.a.b0;
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
        public long f4326c = -1;

        /* renamed from: d  reason: collision with root package name */
        public long f4327d = -1;

        public a() {
        }

        @Override // f.i.a.a.b1.v.f
        public f.i.a.a.b1.n a() {
            return this;
        }

        @Override // f.i.a.a.b1.v.f
        public long c(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
            long j2 = this.f4327d;
            if (j2 >= 0) {
                long j3 = -(j2 + 2);
                this.f4327d = -1L;
                return j3;
            }
            return -1L;
        }

        @Override // f.i.a.a.b1.v.f
        public void d(long j2) {
            this.f4327d = this.a[h0.f(this.a, j2, true, true)];
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            int f2 = h0.f(this.a, (b.this.f4346i * j2) / 1000000, true, true);
            long a = b.this.a(this.a[f2]);
            o oVar = new o(a, this.f4326c + this.b[f2]);
            if (a < j2) {
                long[] jArr = this.a;
                if (f2 != jArr.length - 1) {
                    int i2 = f2 + 1;
                    return new n.a(oVar, new o(b.this.a(jArr[i2]), this.f4326c + this.b[i2]));
                }
            }
            return new n.a(oVar);
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            f.i.a.a.m1.n nVar = b.this.n;
            return (nVar.f5758d * 1000000) / nVar.a;
        }
    }

    @Override // f.i.a.a.b1.v.h
    public long d(u uVar) {
        int i2;
        int i3;
        int i4;
        byte b;
        int i5;
        int i6 = -1;
        if (uVar.a[0] == -1) {
            int i7 = (uVar.a[2] & 255) >> 4;
            switch (i7) {
                case 1:
                    i6 = 192;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    i2 = 576;
                    i3 = i7 - 2;
                    i6 = i2 << i3;
                    break;
                case 6:
                case 7:
                    uVar.B(4);
                    long j2 = uVar.a[uVar.b];
                    int i8 = 7;
                    while (true) {
                        if (i8 >= 0) {
                            if (((1 << i8) & j2) != 0) {
                                i8--;
                            } else if (i8 < 6) {
                                j2 &= i5 - 1;
                                i4 = 7 - i8;
                            } else if (i8 == 7) {
                                i4 = 1;
                            }
                        }
                    }
                    i4 = 0;
                    if (i4 != 0) {
                        for (int i9 = 1; i9 < i4; i9++) {
                            if ((uVar.a[uVar.b + i9] & 192) != 128) {
                                throw new NumberFormatException(f.b.a.a.a.c("Invalid UTF-8 sequence continuation byte: ", j2));
                            }
                            j2 = (j2 << 6) | (b & 63);
                        }
                        uVar.b += i4;
                        int p = i7 == 6 ? uVar.p() : uVar.u();
                        uVar.A(0);
                        i6 = p + 1;
                        break;
                    } else {
                        throw new NumberFormatException(f.b.a.a.a.c("Invalid UTF-8 sequence first byte: ", j2));
                    }
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    i2 = 256;
                    i3 = i7 - 8;
                    i6 = i2 << i3;
                    break;
            }
            return i6;
        }
        return -1L;
    }

    @Override // f.i.a.a.b1.v.h
    public boolean e(u uVar, long j2, h.b bVar) throws IOException, InterruptedException {
        byte[] bArr = uVar.a;
        if (this.n == null) {
            this.n = new f.i.a.a.m1.n(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, uVar.f5776c);
            copyOfRange[4] = Byte.MIN_VALUE;
            List singletonList = Collections.singletonList(copyOfRange);
            f.i.a.a.m1.n nVar = this.n;
            int i2 = nVar.f5757c;
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
                    aVar2.f4326c = j2;
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
