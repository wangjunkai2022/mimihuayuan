package f.i.a.a.b1.u;

import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.b1.p;
import f.i.a.a.b1.u.a;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.s;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.ArrayDeque;

/* compiled from: Mp4Extractor.java */
/* loaded from: classes.dex */
public final class g implements f.i.a.a.b1.g, n {
    public static final int v = h0.C("qt  ");
    public final int a;

    /* renamed from: g  reason: collision with root package name */
    public int f4278g;

    /* renamed from: h  reason: collision with root package name */
    public int f4279h;

    /* renamed from: i  reason: collision with root package name */
    public long f4280i;

    /* renamed from: j  reason: collision with root package name */
    public int f4281j;

    /* renamed from: k  reason: collision with root package name */
    public u f4282k;

    /* renamed from: m  reason: collision with root package name */
    public int f4284m;
    public int n;
    public boolean o;
    public f.i.a.a.b1.h p;
    public a[] q;
    public long[][] r;
    public int s;
    public long t;
    public boolean u;

    /* renamed from: e  reason: collision with root package name */
    public final u f4276e = new u(16);

    /* renamed from: f  reason: collision with root package name */
    public final ArrayDeque<a.C0063a> f4277f = new ArrayDeque<>();
    public final u b = new u(s.a);

    /* renamed from: c  reason: collision with root package name */
    public final u f4274c = new u(4);

    /* renamed from: d  reason: collision with root package name */
    public final u f4275d = new u();

    /* renamed from: l  reason: collision with root package name */
    public int f4283l = -1;

    /* compiled from: Mp4Extractor.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final j a;
        public final m b;

        /* renamed from: c  reason: collision with root package name */
        public final p f4285c;

        /* renamed from: d  reason: collision with root package name */
        public int f4286d;

        public a(j jVar, m mVar, p pVar) {
            this.a = jVar;
            this.b = mVar;
            this.f4285c = pVar;
        }
    }

    public g(int i2) {
        this.a = i2;
    }

    public static long l(m mVar, long j2, long j3) {
        int a2 = mVar.a(j2);
        if (a2 == -1) {
            a2 = mVar.b(j2);
        }
        return a2 == -1 ? j3 : Math.min(mVar.f4310c[a2], j3);
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:217:0x020f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x038b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0153  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0163 -> B:71:0x014f). Please submit an issue!!! */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(f.i.a.a.b1.d r30, f.i.a.a.b1.m r31) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.g.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.p = hVar;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        this.f4277f.clear();
        this.f4281j = 0;
        this.f4283l = -1;
        this.f4284m = 0;
        this.n = 0;
        this.o = false;
        if (j2 == 0) {
            k();
            return;
        }
        a[] aVarArr = this.q;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                m mVar = aVar.b;
                int a2 = mVar.a(j3);
                if (a2 == -1) {
                    a2 = mVar.b(j3);
                }
                aVar.f4286d = a2;
            }
        }
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        long j3;
        long j4;
        long j5;
        long j6;
        int b;
        long j7 = j2;
        a[] aVarArr = this.q;
        if (aVarArr.length == 0) {
            return new n.a(o.f4134c);
        }
        long j8 = -1;
        int i2 = this.s;
        if (i2 != -1) {
            m mVar = aVarArr[i2].b;
            int a2 = mVar.a(j7);
            if (a2 == -1) {
                a2 = mVar.b(j7);
            }
            if (a2 == -1) {
                return new n.a(o.f4134c);
            }
            long j9 = mVar.f4313f[a2];
            j3 = mVar.f4310c[a2];
            if (j9 >= j7 || a2 >= mVar.b - 1 || (b = mVar.b(j7)) == -1 || b == a2) {
                j6 = -9223372036854775807L;
            } else {
                long j10 = mVar.f4313f[b];
                long j11 = mVar.f4310c[b];
                j6 = j10;
                j8 = j11;
            }
            j4 = j8;
            j5 = j6;
            j7 = j9;
        } else {
            j3 = RecyclerView.FOREVER_NS;
            j4 = -1;
            j5 = -9223372036854775807L;
        }
        int i3 = 0;
        while (true) {
            a[] aVarArr2 = this.q;
            if (i3 >= aVarArr2.length) {
                break;
            }
            if (i3 != this.s) {
                m mVar2 = aVarArr2[i3].b;
                long l2 = l(mVar2, j7, j3);
                if (j5 != -9223372036854775807L) {
                    j4 = l(mVar2, j5, j4);
                }
                j3 = l2;
            }
            i3++;
        }
        o oVar = new o(j7, j3);
        if (j5 == -9223372036854775807L) {
            return new n.a(oVar);
        }
        return new n.a(oVar, new o(j5, j4));
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        return i.a(dVar, false);
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.t;
    }

    public final void k() {
        this.f4278g = 0;
        this.f4281j = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x05e1 A[LOOP:9: B:237:0x0568->B:252:0x05e1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:244:0x0593 -> B:242:0x058a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m(long r70) throws f.i.a.a.h0 {
        /*
            Method dump skipped, instructions count: 2091
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.g.m(long):void");
    }
}
