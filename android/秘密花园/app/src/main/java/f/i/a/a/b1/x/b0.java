package f.i.a.a.b1.x;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: TsExtractor.java */
/* loaded from: classes.dex */
public final class b0 implements g {
    public static final long s = (long) h0.C("AC-3");
    public static final long t = (long) h0.C("EAC3");
    public static final long u = (long) h0.C("AC-4");
    public static final long v = (long) h0.C("HEVC");
    public final int a;
    public final List<e0> b;

    /* renamed from: c  reason: collision with root package name */
    public final u f4310c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseIntArray f4311d;

    /* renamed from: e  reason: collision with root package name */
    public final c0.c f4312e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray<c0> f4313f;

    /* renamed from: g  reason: collision with root package name */
    public final SparseBooleanArray f4314g;

    /* renamed from: h  reason: collision with root package name */
    public final SparseBooleanArray f4315h;

    /* renamed from: i  reason: collision with root package name */
    public final a0 f4316i;

    /* renamed from: j  reason: collision with root package name */
    public z f4317j;

    /* renamed from: k  reason: collision with root package name */
    public h f4318k;

    /* renamed from: l  reason: collision with root package name */
    public int f4319l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f4320m;
    public boolean n;
    public boolean o;
    public c0 p;
    public int q;
    public int r;

    /* compiled from: TsExtractor.java */
    /* loaded from: classes.dex */
    public class a implements v {
        public final t a = new t(new byte[4]);

        public a() {
        }

        @Override // f.i.a.a.b1.x.v
        public void b(e0 e0Var, h hVar, c0.d dVar) {
        }

        @Override // f.i.a.a.b1.x.v
        public void c(u uVar) {
            if (uVar.p() == 0) {
                uVar.B(7);
                int a = uVar.a() / 4;
                for (int i2 = 0; i2 < a; i2++) {
                    uVar.b(this.a, 4);
                    int f2 = this.a.f(16);
                    this.a.l(3);
                    if (f2 == 0) {
                        this.a.l(13);
                    } else {
                        int f3 = this.a.f(13);
                        b0 b0Var = b0.this;
                        b0Var.f4313f.put(f3, new w(new b(f3)));
                        b0.this.f4319l++;
                    }
                }
                b0 b0Var2 = b0.this;
                if (b0Var2.a != 2) {
                    b0Var2.f4313f.remove(0);
                }
            }
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes.dex */
    public class b implements v {
        public final t a = new t(new byte[5]);
        public final SparseArray<c0> b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        public final SparseIntArray f4321c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        public final int f4322d;

        public b(int i2) {
            this.f4322d = i2;
        }

        @Override // f.i.a.a.b1.x.v
        public void b(e0 e0Var, h hVar, c0.d dVar) {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:42:0x012b, code lost:
            if (r24.p() == r13) goto L_0x012d;
         */
        /* JADX WARNING: Removed duplicated region for block: B:78:0x0203  */
        /* JADX WARNING: Removed duplicated region for block: B:80:0x0210  */
        @Override // f.i.a.a.b1.x.v
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void c(f.i.a.a.m1.u r24) {
            /*
            // Method dump skipped, instructions count: 725
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.b0.b.c(f.i.a.a.m1.u):void");
        }
    }

    public b0(int i2, e0 e0Var, c0.c cVar) {
        this.f4312e = cVar;
        this.a = i2;
        if (i2 == 1 || i2 == 2) {
            this.b = Collections.singletonList(e0Var);
        } else {
            ArrayList arrayList = new ArrayList();
            this.b = arrayList;
            arrayList.add(e0Var);
        }
        this.f4310c = new u(new byte[9400], 0);
        this.f4314g = new SparseBooleanArray();
        this.f4315h = new SparseBooleanArray();
        this.f4313f = new SparseArray<>();
        this.f4311d = new SparseIntArray();
        this.f4316i = new a0();
        this.r = -1;
        this.f4314g.clear();
        this.f4313f.clear();
        SparseArray<c0> a2 = this.f4312e.a();
        int size = a2.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f4313f.put(a2.keyAt(i3), a2.valueAt(i3));
        }
        this.f4313f.put(0, new w(new a()));
        this.p = null;
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v9, resolved type: android.util.SparseBooleanArray */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int c(f.i.a.a.b1.d r19, f.i.a.a.b1.m r20) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 655
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.b0.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4318k = hVar;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        z zVar;
        c.a.a.b.g.h.v(this.a != 2);
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            e0 e0Var = this.b.get(i2);
            if ((e0Var.c() == -9223372036854775807L) || !(e0Var.c() == 0 || e0Var.a == j3)) {
                e0Var.f5661c = -9223372036854775807L;
                e0Var.d(j3);
            }
        }
        if (!(j3 == 0 || (zVar = this.f4317j) == null)) {
            zVar.d(j3);
        }
        this.f4310c.v();
        this.f4311d.clear();
        for (int i3 = 0; i3 < this.f4313f.size(); i3++) {
            this.f4313f.valueAt(i3).a();
        }
        this.q = 0;
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f4310c.a;
        dVar.d(bArr, 0, 940, false);
        for (int i2 = 0; i2 < 188; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i3 * 188) + i2] != 71) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                dVar.h(i2);
                return true;
            }
        }
        return false;
    }
}
