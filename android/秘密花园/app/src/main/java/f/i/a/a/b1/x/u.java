package f.i.a.a.b1.x;

import android.util.SparseArray;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.t;
import java.io.IOException;

/* compiled from: PsExtractor.java */
/* loaded from: classes.dex */
public final class u implements g {

    /* renamed from: e  reason: collision with root package name */
    public boolean f4493e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4494f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4495g;

    /* renamed from: h  reason: collision with root package name */
    public long f4496h;

    /* renamed from: i  reason: collision with root package name */
    public s f4497i;

    /* renamed from: j  reason: collision with root package name */
    public h f4498j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4499k;
    public final e0 a = new e0(0);

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.u f4491c = new f.i.a.a.m1.u(4096);
    public final SparseArray<a> b = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    public final t f4492d = new t();

    /* compiled from: PsExtractor.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final j a;
        public final e0 b;

        /* renamed from: c  reason: collision with root package name */
        public final t f4500c = new t(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        public boolean f4501d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f4502e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4503f;

        /* renamed from: g  reason: collision with root package name */
        public int f4504g;

        /* renamed from: h  reason: collision with root package name */
        public long f4505h;

        public a(j jVar, e0 e0Var) {
            this.a = jVar;
            this.b = e0Var;
        }
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:104:0x01f8  */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int c(f.i.a.a.b1.d r17, f.i.a.a.b1.m r18) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 816
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.u.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f4498j = hVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r7 != r9) goto L_0x0023;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003c A[LOOP:0: B:16:0x0034->B:18:0x003c, LOOP_END] */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f(long r7, long r9) {
        /*
            r6 = this;
            f.i.a.a.m1.e0 r7 = r6.a
            long r7 = r7.c()
            r0 = 0
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r3 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x0012
            r7 = 1
            goto L_0x0013
        L_0x0012:
            r7 = 0
        L_0x0013:
            if (r7 != 0) goto L_0x0023
            f.i.a.a.m1.e0 r7 = r6.a
            long r7 = r7.a
            r3 = 0
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x002c
            int r3 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r3 == 0) goto L_0x002c
        L_0x0023:
            f.i.a.a.m1.e0 r7 = r6.a
            r7.f5661c = r1
            f.i.a.a.m1.e0 r7 = r6.a
            r7.d(r9)
        L_0x002c:
            f.i.a.a.b1.x.s r7 = r6.f4497i
            if (r7 == 0) goto L_0x0033
            r7.d(r9)
        L_0x0033:
            r7 = 0
        L_0x0034:
            android.util.SparseArray<f.i.a.a.b1.x.u$a> r8 = r6.b
            int r8 = r8.size()
            if (r7 >= r8) goto L_0x004e
            android.util.SparseArray<f.i.a.a.b1.x.u$a> r8 = r6.b
            java.lang.Object r8 = r8.valueAt(r7)
            f.i.a.a.b1.x.u$a r8 = (f.i.a.a.b1.x.u.a) r8
            r8.f4503f = r0
            f.i.a.a.b1.x.j r8 = r8.a
            r8.a()
            int r7 = r7 + 1
            goto L_0x0034
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.u.f(long, long):void");
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        dVar.d(bArr, 0, 14, false);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        dVar.a(bArr[13] & 7, false);
        dVar.d(bArr, 0, 3, false);
        if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
            return true;
        }
        return false;
    }
}
