package f.i.a.a.b1.x;

import android.util.SparseArray;
import f.i.a.a.m1.e0;
import java.io.IOException;
/* compiled from: PsExtractor.java */
/* loaded from: classes.dex */
public final class u implements f.i.a.a.b1.g {

    /* renamed from: e  reason: collision with root package name */
    public boolean f4577e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4578f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4579g;

    /* renamed from: h  reason: collision with root package name */
    public long f4580h;

    /* renamed from: i  reason: collision with root package name */
    public s f4581i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.b1.h f4582j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4583k;
    public final e0 a = new e0(0);

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.m1.u f4575c = new f.i.a.a.m1.u(4096);
    public final SparseArray<a> b = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    public final t f4576d = new t();

    /* compiled from: PsExtractor.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final j a;
        public final e0 b;

        /* renamed from: c  reason: collision with root package name */
        public final f.i.a.a.m1.t f4584c = new f.i.a.a.m1.t(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        public boolean f4585d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f4586e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f4587f;

        /* renamed from: g  reason: collision with root package name */
        public int f4588g;

        /* renamed from: h  reason: collision with root package name */
        public long f4589h;

        public a(j jVar, e0 e0Var) {
            this.a = jVar;
            this.b = e0Var;
        }
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01f8  */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int c(f.i.a.a.b1.d r17, f.i.a.a.b1.m r18) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.u.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.f4582j = hVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r7 != r9) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[LOOP:0: B:16:0x0034->B:18:0x003c, LOOP_END] */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(long r7, long r9) {
        /*
            r6 = this;
            f.i.a.a.m1.e0 r7 = r6.a
            long r7 = r7.c()
            r0 = 0
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r3 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r3 != 0) goto L12
            r7 = 1
            goto L13
        L12:
            r7 = 0
        L13:
            if (r7 != 0) goto L23
            f.i.a.a.m1.e0 r7 = r6.a
            long r7 = r7.a
            r3 = 0
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L2c
            int r3 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r3 == 0) goto L2c
        L23:
            f.i.a.a.m1.e0 r7 = r6.a
            r7.f5745c = r1
            f.i.a.a.m1.e0 r7 = r6.a
            r7.d(r9)
        L2c:
            f.i.a.a.b1.x.s r7 = r6.f4581i
            if (r7 == 0) goto L33
            r7.d(r9)
        L33:
            r7 = 0
        L34:
            android.util.SparseArray<f.i.a.a.b1.x.u$a> r8 = r6.b
            int r8 = r8.size()
            if (r7 >= r8) goto L4e
            android.util.SparseArray<f.i.a.a.b1.x.u$a> r8 = r6.b
            java.lang.Object r8 = r8.valueAt(r7)
            f.i.a.a.b1.x.u$a r8 = (f.i.a.a.b1.x.u.a) r8
            r8.f4587f = r0
            f.i.a.a.b1.x.j r8 = r8.a
            r8.a()
            int r7 = r7 + 1
            goto L34
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.u.f(long, long):void");
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        dVar.d(bArr, 0, 14, false);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            dVar.a(bArr[13] & 7, false);
            dVar.d(bArr, 0, 3, false);
            return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
        }
        return false;
    }
}
