package f.i.a.a.b1.u;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.b1.u.a;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import f.i.a.a.z0.e;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: FragmentedMp4Extractor.java */
/* loaded from: classes.dex */
public class d implements f.i.a.a.b1.g {
    public static final int J = h0.C("seig");
    public static final byte[] K = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final b0 L = b0.m(null, "application/x-emsg", RecyclerView.FOREVER_NS);
    public int A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public f.i.a.a.b1.h F;
    public p[] G;
    public p[] H;
    public boolean I;
    public final int a;
    @Nullable
    public final j b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b0> f4242c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.z0.e f4243d;

    /* renamed from: e  reason: collision with root package name */
    public final SparseArray<b> f4244e;

    /* renamed from: f  reason: collision with root package name */
    public final u f4245f;

    /* renamed from: g  reason: collision with root package name */
    public final u f4246g;

    /* renamed from: h  reason: collision with root package name */
    public final u f4247h;

    /* renamed from: i  reason: collision with root package name */
    public final byte[] f4248i;

    /* renamed from: j  reason: collision with root package name */
    public final u f4249j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final e0 f4250k;

    /* renamed from: l  reason: collision with root package name */
    public final u f4251l;

    /* renamed from: m  reason: collision with root package name */
    public final ArrayDeque<a.C0063a> f4252m;
    public final ArrayDeque<a> n;
    @Nullable
    public final p o;
    public int p;
    public int q;
    public long r;
    public int s;
    public u t;
    public long u;
    public int v;
    public long w;
    public long x;
    public long y;
    public b z;

    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final long a;
        public final int b;

        public a(long j2, int i2) {
            this.a = j2;
            this.b = i2;
        }
    }

    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final p a;

        /* renamed from: c  reason: collision with root package name */
        public j f4253c;

        /* renamed from: d  reason: collision with root package name */
        public c f4254d;

        /* renamed from: e  reason: collision with root package name */
        public int f4255e;

        /* renamed from: f  reason: collision with root package name */
        public int f4256f;

        /* renamed from: g  reason: collision with root package name */
        public int f4257g;

        /* renamed from: h  reason: collision with root package name */
        public int f4258h;
        public final l b = new l();

        /* renamed from: i  reason: collision with root package name */
        public final u f4259i = new u(1);

        /* renamed from: j  reason: collision with root package name */
        public final u f4260j = new u();

        public b(p pVar) {
            this.a = pVar;
        }

        public final k a() {
            l lVar = this.b;
            int i2 = lVar.a.a;
            k kVar = lVar.o;
            if (kVar == null) {
                kVar = this.f4253c.a(i2);
            }
            if (kVar == null || !kVar.a) {
                return null;
            }
            return kVar;
        }

        public void b(j jVar, c cVar) {
            if (jVar != null) {
                this.f4253c = jVar;
                if (cVar != null) {
                    this.f4254d = cVar;
                    this.a.d(jVar.f4290f);
                    d();
                    return;
                }
                throw null;
            }
            throw null;
        }

        public boolean c() {
            this.f4255e++;
            int i2 = this.f4256f + 1;
            this.f4256f = i2;
            int[] iArr = this.b.f4304h;
            int i3 = this.f4257g;
            if (i2 == iArr[i3]) {
                this.f4257g = i3 + 1;
                this.f4256f = 0;
                return false;
            }
            return true;
        }

        public void d() {
            l lVar = this.b;
            lVar.f4301e = 0;
            lVar.s = 0L;
            lVar.f4309m = false;
            lVar.r = false;
            lVar.o = null;
            this.f4255e = 0;
            this.f4257g = 0;
            this.f4256f = 0;
            this.f4258h = 0;
        }
    }

    public d(int i2, @Nullable e0 e0Var, @Nullable j jVar, @Nullable f.i.a.a.z0.e eVar, List<b0> list, @Nullable p pVar) {
        this.a = i2 | (jVar != null ? 8 : 0);
        this.f4250k = e0Var;
        this.b = jVar;
        this.f4243d = eVar;
        this.f4242c = Collections.unmodifiableList(list);
        this.o = pVar;
        this.f4251l = new u(16);
        this.f4245f = new u(s.a);
        this.f4246g = new u(5);
        this.f4247h = new u();
        byte[] bArr = new byte[16];
        this.f4248i = bArr;
        this.f4249j = new u(bArr);
        this.f4252m = new ArrayDeque<>();
        this.n = new ArrayDeque<>();
        this.f4244e = new SparseArray<>();
        this.x = -9223372036854775807L;
        this.w = -9223372036854775807L;
        this.y = -9223372036854775807L;
        b();
    }

    public static f.i.a.a.z0.e g(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = list.get(i2);
            if (bVar.a == f.i.a.a.b1.u.a.i0) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.g1.a;
                UUID Y0 = c.a.a.b.g.h.Y0(bArr);
                if (Y0 != null) {
                    arrayList.add(new e.b(Y0, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new f.i.a.a.z0.e(null, false, (e.b[]) arrayList.toArray(new e.b[0]));
    }

    public static void j(u uVar, int i2, l lVar) throws f.i.a.a.h0 {
        uVar.A(i2 + 8);
        int b2 = f.i.a.a.b1.u.a.b(uVar.d());
        if ((b2 & 1) == 0) {
            boolean z = (b2 & 2) != 0;
            int s = uVar.s();
            if (s == lVar.f4302f) {
                Arrays.fill(lVar.n, 0, s, z);
                lVar.a(uVar.a());
                uVar.c(lVar.q.a, 0, lVar.p);
                lVar.q.A(0);
                lVar.r = false;
                return;
            }
            StringBuilder p = f.b.a.a.a.p("Length mismatch: ", s, ", ");
            p.append(lVar.f4302f);
            throw new f.i.a.a.h0(p.toString());
        }
        throw new f.i.a.a.h0("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final void b() {
        this.p = 0;
        this.s = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0310 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x06c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r6v15, types: [f.i.a.a.b1.p] */
    /* JADX WARN: Type inference failed for: r6v26, types: [f.i.a.a.m1.u] */
    /* JADX WARN: Type inference failed for: r6v30, types: [f.i.a.a.m1.u] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23, types: [int] */
    /* JADX WARN: Type inference failed for: r9v27 */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(f.i.a.a.b1.d r28, f.i.a.a.b1.m r29) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1756
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.d.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.F = hVar;
        j jVar = this.b;
        if (jVar != null) {
            b bVar = new b(hVar.q(0, jVar.b));
            bVar.b(this.b, new c(0, 0, 0, 0));
            this.f4244e.put(0, bVar);
            h();
            this.F.d();
        }
    }

    public final c e(SparseArray<c> sparseArray, int i2) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        c cVar = sparseArray.get(i2);
        c.a.a.b.g.h.t(cVar);
        return cVar;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        int size = this.f4244e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f4244e.valueAt(i2).d();
        }
        this.n.clear();
        this.v = 0;
        this.w = j3;
        this.f4252m.clear();
        this.E = false;
        b();
    }

    public final void h() {
        int i2;
        if (this.G == null) {
            p[] pVarArr = new p[2];
            this.G = pVarArr;
            p pVar = this.o;
            if (pVar != null) {
                pVarArr[0] = pVar;
                i2 = 1;
            } else {
                i2 = 0;
            }
            if ((this.a & 4) != 0) {
                this.G[i2] = this.F.q(this.f4244e.size(), 4);
                i2++;
            }
            p[] pVarArr2 = (p[]) Arrays.copyOf(this.G, i2);
            this.G = pVarArr2;
            for (p pVar2 : pVarArr2) {
                pVar2.d(L);
            }
        }
        if (this.H == null) {
            this.H = new p[this.f4242c.size()];
            for (int i3 = 0; i3 < this.H.length; i3++) {
                p q = this.F.q(this.f4244e.size() + 1 + i3, 3);
                q.d(this.f4242c.get(i3));
                this.H[i3] = q;
            }
        }
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        return i.a(dVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x039f  */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void k(long r49) throws f.i.a.a.h0 {
        /*
            Method dump skipped, instructions count: 1826
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.d.k(long):void");
    }
}
