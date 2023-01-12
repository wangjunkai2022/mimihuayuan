package f.i.a.a.h1;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.p;
import f.i.a.a.h1.i0;
import f.i.a.a.y0.b;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: SampleQueue.java */
/* loaded from: classes.dex */
public class j0 implements f.i.a.a.b1.p {
    public final f.i.a.a.l1.e a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final i0 f4878c = new i0();

    /* renamed from: d  reason: collision with root package name */
    public final i0.a f4879d = new i0.a();

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.m1.u f4880e = new f.i.a.a.m1.u(32);

    /* renamed from: f  reason: collision with root package name */
    public a f4881f;

    /* renamed from: g  reason: collision with root package name */
    public a f4882g;

    /* renamed from: h  reason: collision with root package name */
    public a f4883h;

    /* renamed from: i  reason: collision with root package name */
    public f.i.a.a.b0 f4884i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f4885j;

    /* renamed from: k  reason: collision with root package name */
    public f.i.a.a.b0 f4886k;

    /* renamed from: l  reason: collision with root package name */
    public long f4887l;

    /* renamed from: m  reason: collision with root package name */
    public long f4888m;
    public boolean n;
    public b o;

    /* compiled from: SampleQueue.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final long a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f4889c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public f.i.a.a.l1.d f4890d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public a f4891e;

        public a(long j2, int i2) {
            this.a = j2;
            this.b = j2 + i2;
        }

        public int a(long j2) {
            return ((int) (j2 - this.a)) + this.f4890d.b;
        }
    }

    /* compiled from: SampleQueue.java */
    /* loaded from: classes.dex */
    public interface b {
        void i(f.i.a.a.b0 b0Var);
    }

    public j0(f.i.a.a.l1.e eVar) {
        this.a = eVar;
        this.b = ((f.i.a.a.l1.q) eVar).b;
        a aVar = new a(0L, this.b);
        this.f4881f = aVar;
        this.f4882g = aVar;
        this.f4883h = aVar;
    }

    @Override // f.i.a.a.b1.p
    public void a(f.i.a.a.m1.u uVar, int i2) {
        while (i2 > 0) {
            int r = r(i2);
            a aVar = this.f4883h;
            uVar.c(aVar.f4890d.a, aVar.a(this.f4888m), r);
            i2 -= r;
            q(r);
        }
    }

    @Override // f.i.a.a.b1.p
    public int b(f.i.a.a.b1.d dVar, int i2, boolean z) throws IOException, InterruptedException {
        int r = r(i2);
        a aVar = this.f4883h;
        int e2 = dVar.e(aVar.f4890d.a, aVar.a(this.f4888m), r);
        if (e2 != -1) {
            q(e2);
            return e2;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // f.i.a.a.b1.p
    public void c(long j2, int i2, int i3, int i4, @Nullable p.a aVar) {
        boolean z;
        if (this.f4885j) {
            d(this.f4886k);
        }
        long j3 = j2 + this.f4887l;
        if (this.n) {
            if ((i2 & 1) == 0) {
                return;
            }
            i0 i0Var = this.f4878c;
            synchronized (i0Var) {
                if (i0Var.f4871i == 0) {
                    z = j3 > i0Var.f4875m;
                } else if (Math.max(i0Var.f4875m, i0Var.d(i0Var.f4874l)) >= j3) {
                    z = false;
                } else {
                    int i5 = i0Var.f4871i;
                    int e2 = i0Var.e(i0Var.f4871i - 1);
                    while (i5 > i0Var.f4874l && i0Var.f4868f[e2] >= j3) {
                        i5--;
                        e2--;
                        if (e2 == -1) {
                            e2 = i0Var.a - 1;
                        }
                    }
                    i0Var.b(i0Var.f4872j + i5);
                    z = true;
                }
            }
            if (!z) {
                return;
            }
            this.n = false;
        }
        long j4 = (this.f4888m - i3) - i4;
        i0 i0Var2 = this.f4878c;
        synchronized (i0Var2) {
            if (i0Var2.p) {
                if ((i2 & 1) == 0) {
                    return;
                }
                i0Var2.p = false;
            }
            c.a.a.b.g.h.v(!i0Var2.q);
            i0Var2.o = (536870912 & i2) != 0;
            i0Var2.n = Math.max(i0Var2.n, j3);
            int e3 = i0Var2.e(i0Var2.f4871i);
            i0Var2.f4868f[e3] = j3;
            i0Var2.f4865c[e3] = j4;
            i0Var2.f4866d[e3] = i3;
            i0Var2.f4867e[e3] = i2;
            i0Var2.f4869g[e3] = aVar;
            i0Var2.f4870h[e3] = i0Var2.r;
            i0Var2.b[e3] = i0Var2.s;
            int i6 = i0Var2.f4871i + 1;
            i0Var2.f4871i = i6;
            if (i6 == i0Var2.a) {
                int i7 = i0Var2.a + 1000;
                int[] iArr = new int[i7];
                long[] jArr = new long[i7];
                long[] jArr2 = new long[i7];
                int[] iArr2 = new int[i7];
                int[] iArr3 = new int[i7];
                p.a[] aVarArr = new p.a[i7];
                f.i.a.a.b0[] b0VarArr = new f.i.a.a.b0[i7];
                int i8 = i0Var2.a - i0Var2.f4873k;
                System.arraycopy(i0Var2.f4865c, i0Var2.f4873k, jArr, 0, i8);
                System.arraycopy(i0Var2.f4868f, i0Var2.f4873k, jArr2, 0, i8);
                System.arraycopy(i0Var2.f4867e, i0Var2.f4873k, iArr2, 0, i8);
                System.arraycopy(i0Var2.f4866d, i0Var2.f4873k, iArr3, 0, i8);
                System.arraycopy(i0Var2.f4869g, i0Var2.f4873k, aVarArr, 0, i8);
                System.arraycopy(i0Var2.f4870h, i0Var2.f4873k, b0VarArr, 0, i8);
                System.arraycopy(i0Var2.b, i0Var2.f4873k, iArr, 0, i8);
                int i9 = i0Var2.f4873k;
                System.arraycopy(i0Var2.f4865c, 0, jArr, i8, i9);
                System.arraycopy(i0Var2.f4868f, 0, jArr2, i8, i9);
                System.arraycopy(i0Var2.f4867e, 0, iArr2, i8, i9);
                System.arraycopy(i0Var2.f4866d, 0, iArr3, i8, i9);
                System.arraycopy(i0Var2.f4869g, 0, aVarArr, i8, i9);
                System.arraycopy(i0Var2.f4870h, 0, b0VarArr, i8, i9);
                System.arraycopy(i0Var2.b, 0, iArr, i8, i9);
                i0Var2.f4865c = jArr;
                i0Var2.f4868f = jArr2;
                i0Var2.f4867e = iArr2;
                i0Var2.f4866d = iArr3;
                i0Var2.f4869g = aVarArr;
                i0Var2.f4870h = b0VarArr;
                i0Var2.b = iArr;
                i0Var2.f4873k = 0;
                i0Var2.f4871i = i0Var2.a;
                i0Var2.a = i7;
            }
        }
    }

    @Override // f.i.a.a.b1.p
    public void d(f.i.a.a.b0 b0Var) {
        f.i.a.a.b0 b0Var2;
        boolean z;
        long j2 = this.f4887l;
        if (b0Var == null) {
            b0Var2 = null;
        } else {
            if (j2 != 0) {
                long j3 = b0Var.f4092m;
                if (j3 != RecyclerView.FOREVER_NS) {
                    b0Var2 = b0Var.f(j3 + j2);
                }
            }
            b0Var2 = b0Var;
        }
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            z = true;
            if (b0Var2 == null) {
                i0Var.q = true;
            } else {
                i0Var.q = false;
                if (!f.i.a.a.m1.h0.b(b0Var2, i0Var.r)) {
                    i0Var.r = b0Var2;
                }
            }
            z = false;
        }
        this.f4886k = b0Var;
        this.f4885j = false;
        b bVar = this.o;
        if (bVar == null || !z) {
            return;
        }
        bVar.i(b0Var2);
    }

    public int e(long j2, boolean z, boolean z2) {
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            int e2 = i0Var.e(i0Var.f4874l);
            if (i0Var.f() && j2 >= i0Var.f4868f[e2] && (j2 <= i0Var.n || z2)) {
                int c2 = i0Var.c(e2, i0Var.f4871i - i0Var.f4874l, j2, z);
                if (c2 == -1) {
                    return -1;
                }
                i0Var.f4874l += c2;
                return c2;
            }
            return -1;
        }
    }

    public int f() {
        int i2;
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            i2 = i0Var.f4871i - i0Var.f4874l;
            i0Var.f4874l = i0Var.f4871i;
        }
        return i2;
    }

    public final void g(a aVar) {
        if (aVar.f4889c) {
            a aVar2 = this.f4883h;
            int i2 = (((int) (aVar2.a - aVar.a)) / this.b) + (aVar2.f4889c ? 1 : 0);
            f.i.a.a.l1.d[] dVarArr = new f.i.a.a.l1.d[i2];
            int i3 = 0;
            while (i3 < i2) {
                dVarArr[i3] = aVar.f4890d;
                aVar.f4890d = null;
                a aVar3 = aVar.f4891e;
                aVar.f4891e = null;
                i3++;
                aVar = aVar3;
            }
            ((f.i.a.a.l1.q) this.a).a(dVarArr);
        }
    }

    public final void h(long j2) {
        a aVar;
        if (j2 == -1) {
            return;
        }
        while (true) {
            aVar = this.f4881f;
            if (j2 < aVar.b) {
                break;
            }
            f.i.a.a.l1.e eVar = this.a;
            f.i.a.a.l1.d dVar = aVar.f4890d;
            f.i.a.a.l1.q qVar = (f.i.a.a.l1.q) eVar;
            synchronized (qVar) {
                qVar.f5685d[0] = dVar;
                qVar.a(qVar.f5685d);
            }
            a aVar2 = this.f4881f;
            aVar2.f4890d = null;
            a aVar3 = aVar2.f4891e;
            aVar2.f4891e = null;
            this.f4881f = aVar3;
        }
        if (this.f4882g.a < aVar.a) {
            this.f4882g = aVar;
        }
    }

    public void i(long j2, boolean z, boolean z2) {
        long j3;
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            j3 = -1;
            if (i0Var.f4871i != 0 && j2 >= i0Var.f4868f[i0Var.f4873k]) {
                int c2 = i0Var.c(i0Var.f4873k, (!z2 || i0Var.f4874l == i0Var.f4871i) ? i0Var.f4871i : i0Var.f4874l + 1, j2, z);
                if (c2 != -1) {
                    j3 = i0Var.a(c2);
                }
            }
        }
        h(j3);
    }

    public void j() {
        long a2;
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            a2 = i0Var.f4871i == 0 ? -1L : i0Var.a(i0Var.f4871i);
        }
        h(a2);
    }

    public void k(int i2) {
        long b2 = this.f4878c.b(i2);
        this.f4888m = b2;
        if (b2 != 0) {
            a aVar = this.f4881f;
            if (b2 != aVar.a) {
                while (this.f4888m > aVar.b) {
                    aVar = aVar.f4891e;
                }
                a aVar2 = aVar.f4891e;
                g(aVar2);
                a aVar3 = new a(aVar.b, this.b);
                aVar.f4891e = aVar3;
                if (this.f4888m != aVar.b) {
                    aVar3 = aVar;
                }
                this.f4883h = aVar3;
                if (this.f4882g == aVar2) {
                    this.f4882g = aVar.f4891e;
                    return;
                }
                return;
            }
        }
        g(this.f4881f);
        a aVar4 = new a(this.f4888m, this.b);
        this.f4881f = aVar4;
        this.f4882g = aVar4;
        this.f4883h = aVar4;
    }

    public long l() {
        long j2;
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            j2 = i0Var.n;
        }
        return j2;
    }

    public int m() {
        i0 i0Var = this.f4878c;
        return i0Var.f4872j + i0Var.f4874l;
    }

    public f.i.a.a.b0 n() {
        f.i.a.a.b0 b0Var;
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            b0Var = i0Var.q ? null : i0Var.r;
        }
        return b0Var;
    }

    public boolean o() {
        return this.f4878c.f();
    }

    public int p() {
        i0 i0Var = this.f4878c;
        return i0Var.f() ? i0Var.b[i0Var.e(i0Var.f4874l)] : i0Var.s;
    }

    public final void q(int i2) {
        long j2 = this.f4888m + i2;
        this.f4888m = j2;
        a aVar = this.f4883h;
        if (j2 == aVar.b) {
            this.f4883h = aVar.f4891e;
        }
    }

    public final int r(int i2) {
        f.i.a.a.l1.d dVar;
        a aVar = this.f4883h;
        if (!aVar.f4889c) {
            f.i.a.a.l1.q qVar = (f.i.a.a.l1.q) this.a;
            synchronized (qVar) {
                qVar.f5687f++;
                if (qVar.f5688g > 0) {
                    f.i.a.a.l1.d[] dVarArr = qVar.f5689h;
                    int i3 = qVar.f5688g - 1;
                    qVar.f5688g = i3;
                    dVar = dVarArr[i3];
                    qVar.f5689h[i3] = null;
                } else {
                    dVar = new f.i.a.a.l1.d(new byte[qVar.b], 0);
                }
            }
            a aVar2 = new a(this.f4883h.b, this.b);
            aVar.f4890d = dVar;
            aVar.f4891e = aVar2;
            aVar.f4889c = true;
        }
        return Math.min(i2, (int) (this.f4883h.b - this.f4888m));
    }

    public int s(f.i.a.a.c0 c0Var, f.i.a.a.y0.e eVar, boolean z, boolean z2, long j2) {
        int i2;
        int i3;
        char c2;
        i0 i0Var = this.f4878c;
        f.i.a.a.b0 b0Var = this.f4884i;
        i0.a aVar = this.f4879d;
        synchronized (i0Var) {
            i3 = 1;
            if (!i0Var.f()) {
                if (!z2 && !i0Var.o) {
                    if (i0Var.r == null || (!z && i0Var.r == b0Var)) {
                        c2 = 65533;
                    } else {
                        c0Var.a = i0Var.r;
                        c2 = 65531;
                    }
                }
                eVar.a = 4;
                c2 = 65532;
            } else {
                int e2 = i0Var.e(i0Var.f4874l);
                if (!z && i0Var.f4870h[e2] == b0Var) {
                    eVar.a = i0Var.f4867e[e2];
                    eVar.f6031d = i0Var.f4868f[e2];
                    if (!(eVar.f6030c == null && eVar.f6032e == 0)) {
                        aVar.a = i0Var.f4866d[e2];
                        aVar.b = i0Var.f4865c[e2];
                        aVar.f4876c = i0Var.f4869g[e2];
                        i0Var.f4874l++;
                    }
                    c2 = 65532;
                }
                c0Var.a = i0Var.f4870h[e2];
                c2 = 65531;
            }
        }
        if (c2 == 65531) {
            this.f4884i = c0Var.a;
            return -5;
        } else if (c2 != 65532) {
            if (c2 == 65533) {
                return -3;
            }
            throw new IllegalStateException();
        } else {
            if (!eVar.h()) {
                if (eVar.f6031d < j2) {
                    eVar.e(Integer.MIN_VALUE);
                }
                if (!(eVar.f6030c == null && eVar.f6032e == 0)) {
                    if (eVar.f(1073741824)) {
                        i0.a aVar2 = this.f4879d;
                        long j3 = aVar2.b;
                        this.f4880e.w(1);
                        t(j3, this.f4880e.a, 1);
                        long j4 = j3 + 1;
                        byte b2 = this.f4880e.a[0];
                        boolean z3 = (b2 & 128) != 0;
                        int i4 = b2 & Byte.MAX_VALUE;
                        f.i.a.a.y0.b bVar = eVar.b;
                        if (bVar.a == null) {
                            bVar.a = new byte[16];
                        }
                        t(j4, eVar.b.a, i4);
                        long j5 = j4 + i4;
                        if (z3) {
                            this.f4880e.w(2);
                            t(j5, this.f4880e.a, 2);
                            j5 += 2;
                            i3 = this.f4880e.u();
                        }
                        int[] iArr = eVar.b.b;
                        if (iArr == null || iArr.length < i3) {
                            iArr = new int[i3];
                        }
                        int[] iArr2 = eVar.b.f6020c;
                        if (iArr2 == null || iArr2.length < i3) {
                            iArr2 = new int[i3];
                        }
                        if (z3) {
                            int i5 = i3 * 6;
                            this.f4880e.w(i5);
                            t(j5, this.f4880e.a, i5);
                            j5 += i5;
                            this.f4880e.A(0);
                            for (i2 = 0; i2 < i3; i2++) {
                                iArr[i2] = this.f4880e.u();
                                iArr2[i2] = this.f4880e.s();
                            }
                        } else {
                            iArr[0] = 0;
                            iArr2[0] = aVar2.a - ((int) (j5 - aVar2.b));
                        }
                        p.a aVar3 = aVar2.f4876c;
                        f.i.a.a.y0.b bVar2 = eVar.b;
                        byte[] bArr = aVar3.b;
                        byte[] bArr2 = bVar2.a;
                        int i6 = aVar3.a;
                        int i7 = aVar3.f4135c;
                        int i8 = aVar3.f4136d;
                        bVar2.b = iArr;
                        bVar2.f6020c = iArr2;
                        bVar2.a = bArr2;
                        MediaCodec.CryptoInfo cryptoInfo = bVar2.f6021d;
                        cryptoInfo.numSubSamples = i3;
                        cryptoInfo.numBytesOfClearData = iArr;
                        cryptoInfo.numBytesOfEncryptedData = iArr2;
                        cryptoInfo.key = bArr;
                        cryptoInfo.iv = bArr2;
                        cryptoInfo.mode = i6;
                        if (f.i.a.a.m1.h0.a >= 24) {
                            b.C0090b c0090b = bVar2.f6022e;
                            c0090b.b.set(i7, i8);
                            c0090b.a.setPattern(c0090b.b);
                        }
                        long j6 = aVar2.b;
                        int i9 = (int) (j5 - j6);
                        aVar2.b = j6 + i9;
                        aVar2.a -= i9;
                    }
                    eVar.k(this.f4879d.a);
                    i0.a aVar4 = this.f4879d;
                    long j7 = aVar4.b;
                    ByteBuffer byteBuffer = eVar.f6030c;
                    int i10 = aVar4.a;
                    while (true) {
                        a aVar5 = this.f4882g;
                        if (j7 < aVar5.b) {
                            break;
                        }
                        this.f4882g = aVar5.f4891e;
                    }
                    while (i10 > 0) {
                        int min = Math.min(i10, (int) (this.f4882g.b - j7));
                        a aVar6 = this.f4882g;
                        byteBuffer.put(aVar6.f4890d.a, aVar6.a(j7), min);
                        i10 -= min;
                        j7 += min;
                        a aVar7 = this.f4882g;
                        if (j7 == aVar7.b) {
                            this.f4882g = aVar7.f4891e;
                        }
                    }
                }
            }
            return -4;
        }
    }

    public final void t(long j2, byte[] bArr, int i2) {
        while (true) {
            a aVar = this.f4882g;
            if (j2 < aVar.b) {
                break;
            }
            this.f4882g = aVar.f4891e;
        }
        int i3 = i2;
        while (i3 > 0) {
            int min = Math.min(i3, (int) (this.f4882g.b - j2));
            a aVar2 = this.f4882g;
            System.arraycopy(aVar2.f4890d.a, aVar2.a(j2), bArr, i2 - i3, min);
            i3 -= min;
            j2 += min;
            a aVar3 = this.f4882g;
            if (j2 == aVar3.b) {
                this.f4882g = aVar3.f4891e;
            }
        }
    }

    public void u(boolean z) {
        i0 i0Var = this.f4878c;
        i0Var.f4871i = 0;
        i0Var.f4872j = 0;
        i0Var.f4873k = 0;
        i0Var.f4874l = 0;
        i0Var.p = true;
        i0Var.f4875m = Long.MIN_VALUE;
        i0Var.n = Long.MIN_VALUE;
        i0Var.o = false;
        if (z) {
            i0Var.r = null;
            i0Var.q = true;
        }
        g(this.f4881f);
        a aVar = new a(0L, this.b);
        this.f4881f = aVar;
        this.f4882g = aVar;
        this.f4883h = aVar;
        this.f4888m = 0L;
        ((f.i.a.a.l1.q) this.a).c();
    }

    public void v() {
        i0 i0Var = this.f4878c;
        synchronized (i0Var) {
            i0Var.f4874l = 0;
        }
        this.f4882g = this.f4881f;
    }

    public void w(long j2) {
        if (this.f4887l != j2) {
            this.f4887l = j2;
            this.f4885j = true;
        }
    }
}
