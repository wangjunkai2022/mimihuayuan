package f.i.a.a.h1.u0;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.d1.a;
import f.i.a.a.h1.j0;
import f.i.a.a.h1.u0.i;
import f.i.a.a.h1.u0.t.f;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: HlsMediaChunk.java */
/* loaded from: classes.dex */
public final class k extends f.i.a.a.h1.s0.l {
    public static final AtomicInteger H = new AtomicInteger();
    public f.i.a.a.b1.g A;
    public boolean B;
    public n C;
    public int D;
    public boolean E;
    public volatile boolean F;
    public boolean G;

    /* renamed from: j  reason: collision with root package name */
    public final int f5043j;

    /* renamed from: k  reason: collision with root package name */
    public final int f5044k;

    /* renamed from: l  reason: collision with root package name */
    public final Uri f5045l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public final f.i.a.a.l1.m f5046m;
    @Nullable
    public final f.i.a.a.l1.p n;
    public final boolean o;
    public final boolean p;
    public final e0 q;
    public final boolean r;
    public final i s;
    @Nullable
    public final List<b0> t;
    @Nullable
    public final f.i.a.a.z0.e u;
    @Nullable
    public final f.i.a.a.b1.g v;
    public final f.i.a.a.d1.i.g w;
    public final u x;
    public final boolean y;
    public final boolean z;

    public k(i iVar, f.i.a.a.l1.m mVar, f.i.a.a.l1.p pVar, b0 b0Var, boolean z, f.i.a.a.l1.m mVar2, @Nullable f.i.a.a.l1.p pVar2, boolean z2, Uri uri, @Nullable List<b0> list, int i2, Object obj, long j2, long j3, long j4, int i3, boolean z3, boolean z4, e0 e0Var, @Nullable f.i.a.a.z0.e eVar, @Nullable f.i.a.a.b1.g gVar, f.i.a.a.d1.i.g gVar2, u uVar, boolean z5) {
        super(mVar, pVar, b0Var, i2, obj, j2, j3, j4);
        this.y = z;
        this.f5044k = i3;
        this.f5046m = mVar2;
        this.n = pVar2;
        this.z = z2;
        this.f5045l = uri;
        this.o = z4;
        this.q = e0Var;
        this.p = z3;
        this.s = iVar;
        this.t = list;
        this.u = eVar;
        this.v = gVar;
        this.w = gVar2;
        this.x = uVar;
        this.r = z5;
        this.E = pVar2 != null;
        this.f5043j = H.getAndIncrement();
    }

    public static k e(i iVar, f.i.a.a.l1.m mVar, b0 b0Var, long j2, f.i.a.a.h1.u0.t.f fVar, int i2, Uri uri, @Nullable List<b0> list, int i3, @Nullable Object obj, boolean z, q qVar, @Nullable k kVar, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        f.i.a.a.l1.p pVar;
        boolean z2;
        f.i.a.a.l1.m mVar2;
        f.i.a.a.d1.i.g gVar;
        u uVar;
        f.i.a.a.b1.g gVar2;
        boolean z3;
        d dVar = mVar;
        f.a aVar = fVar.o.get(i2);
        f.i.a.a.l1.p pVar2 = new f.i.a.a.l1.p(c.a.a.b.g.h.e1(fVar.a, aVar.a), aVar.f5130i, aVar.f5131j, null);
        boolean z4 = bArr != null;
        f.i.a.a.l1.m dVar2 = bArr != null ? new d(dVar, bArr, z4 ? g(aVar.f5129h) : null) : dVar;
        f.a aVar2 = aVar.b;
        if (aVar2 != null) {
            boolean z5 = bArr2 != null;
            byte[] g2 = z5 ? g(aVar2.f5129h) : null;
            boolean z6 = z5;
            f.i.a.a.l1.p pVar3 = new f.i.a.a.l1.p(c.a.a.b.g.h.e1(fVar.a, aVar2.a), aVar2.f5130i, aVar2.f5131j, null);
            if (bArr2 != null) {
                dVar = new d(dVar, bArr2, g2);
            }
            z2 = z6;
            mVar2 = dVar;
            pVar = pVar3;
        } else {
            pVar = null;
            z2 = false;
            mVar2 = null;
        }
        long j3 = j2 + aVar.f5126e;
        long j4 = j3 + aVar.f5124c;
        int i4 = fVar.f5118h + aVar.f5125d;
        if (kVar != null) {
            f.i.a.a.d1.i.g gVar3 = kVar.w;
            u uVar2 = kVar.x;
            boolean z7 = (uri.equals(kVar.f5045l) && kVar.G) ? false : true;
            gVar = gVar3;
            uVar = uVar2;
            gVar2 = (kVar.B && kVar.f5044k == i4 && !z7) ? kVar.A : null;
            z3 = z7;
        } else {
            gVar = new f.i.a.a.d1.i.g();
            uVar = new u(10);
            gVar2 = null;
            z3 = false;
        }
        long j5 = fVar.f5119i + i2;
        boolean z8 = aVar.f5132k;
        e0 e0Var = qVar.a.get(i4);
        if (e0Var == null) {
            e0Var = new e0(RecyclerView.FOREVER_NS);
            qVar.a.put(i4, e0Var);
        }
        return new k(iVar, dVar2, pVar2, b0Var, z4, mVar2, pVar, z2, uri, list, i3, obj, j3, j4, j5, i4, z8, z, e0Var, aVar.f5127f, gVar2, gVar, uVar, z3);
    }

    public static byte[] g(String str) {
        if (h0.p0(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // f.i.a.a.l1.c0.e
    public void a() throws IOException, InterruptedException {
        f.i.a.a.b1.g gVar;
        if (this.A == null && (gVar = this.v) != null) {
            this.A = gVar;
            this.B = true;
            this.E = false;
            this.C.y(this.f5043j, this.r, true);
        }
        if (this.E) {
            f(this.f5046m, this.n, this.z);
            this.D = 0;
            this.E = false;
        }
        if (this.F) {
            return;
        }
        if (!this.p) {
            if (!this.o) {
                e0 e0Var = this.q;
                synchronized (e0Var) {
                    while (e0Var.f5661c == -9223372036854775807L) {
                        e0Var.wait();
                    }
                }
            } else {
                e0 e0Var2 = this.q;
                if (e0Var2.a == RecyclerView.FOREVER_NS) {
                    e0Var2.d(this.f4870f);
                }
            }
            f(this.f4872h, this.a, this.y);
        }
        this.G = true;
    }

    @Override // f.i.a.a.l1.c0.e
    public void b() {
        this.F = true;
    }

    @Override // f.i.a.a.h1.s0.l
    public boolean d() {
        return this.G;
    }

    public final void f(f.i.a.a.l1.m mVar, f.i.a.a.l1.p pVar, boolean z) throws IOException, InterruptedException {
        f.i.a.a.l1.p c2;
        boolean z2;
        int i2 = 0;
        if (z) {
            z2 = this.D != 0;
            c2 = pVar;
        } else {
            c2 = pVar.c(this.D);
            z2 = false;
        }
        try {
            f.i.a.a.b1.d h2 = h(mVar, c2);
            if (z2) {
                h2.h(this.D);
            }
            while (i2 == 0 && !this.F) {
                i2 = this.A.c(h2, null);
            }
            this.D = (int) (h2.f4042d - pVar.f5604d);
        } finally {
            h0.k(mVar);
        }
    }

    public final f.i.a.a.b1.d h(f.i.a.a.l1.m mVar, f.i.a.a.l1.p pVar) throws IOException, InterruptedException {
        long j2;
        j0[] j0VarArr;
        f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(mVar, pVar.f5604d, mVar.b(pVar));
        if (this.A == null) {
            dVar.f4044f = 0;
            try {
                dVar.d(this.x.a, 0, 10, false);
                this.x.w(10);
                if (this.x.r() == f.i.a.a.d1.i.g.b) {
                    this.x.B(3);
                    int o = this.x.o();
                    int i2 = o + 10;
                    u uVar = this.x;
                    byte[] bArr = uVar.a;
                    if (i2 > bArr.length) {
                        uVar.w(i2);
                        System.arraycopy(bArr, 0, this.x.a, 0, 10);
                    }
                    dVar.d(this.x.a, 10, o, false);
                    f.i.a.a.d1.a c2 = this.w.c(this.x.a, o);
                    if (c2 != null) {
                        int length = c2.a.length;
                        for (int i3 = 0; i3 < length; i3++) {
                            a.b bVar = c2.a[i3];
                            if (bVar instanceof f.i.a.a.d1.i.k) {
                                f.i.a.a.d1.i.k kVar = (f.i.a.a.d1.i.k) bVar;
                                if ("com.apple.streaming.transportStreamTimestamp".equals(kVar.b)) {
                                    System.arraycopy(kVar.f4578c, 0, this.x.a, 0, 8);
                                    this.x.w(8);
                                    j2 = this.x.j() & 8589934591L;
                                    break;
                                }
                            }
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            j2 = -9223372036854775807L;
            dVar.f4044f = 0;
            i.a a = this.s.a(this.v, pVar.a, this.f4867c, this.t, this.u, this.q, mVar.a(), dVar);
            this.A = a.a;
            this.B = a.f5042c;
            if (a.b) {
                n nVar = this.C;
                long b = j2 != -9223372036854775807L ? this.q.b(j2) : this.f4870f;
                nVar.R = b;
                for (j0 j0Var : nVar.q) {
                    if (j0Var.f4812l != b) {
                        j0Var.f4812l = b;
                        j0Var.f4810j = true;
                    }
                }
            }
            this.C.y(this.f5043j, this.r, false);
            this.A.d(this.C);
            return dVar;
        }
        return dVar;
    }
}
