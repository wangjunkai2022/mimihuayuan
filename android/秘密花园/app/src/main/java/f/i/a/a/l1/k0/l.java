package f.i.a.a.l1.k0;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.l1.k0.b;
import f.i.a.a.l1.p;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CacheUtil.java */
/* loaded from: classes.dex */
public final class l {
    public static final j a = a.a;

    /* compiled from: CacheUtil.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(long j2, long j3, long j4);
    }

    /* compiled from: CacheUtil.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final a a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f5569c;

        public b(a aVar) {
            this.a = aVar;
        }

        public void a(long j2) {
            if (this.b == -1 && j2 != -1) {
                this.b = j2;
                this.a.a(j2, this.f5569c, 0);
            }
        }
    }

    public static String a(p pVar, @Nullable j jVar) {
        if (jVar == null) {
            jVar = a;
        }
        return jVar.a(pVar);
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Code restructure failed: missing block: B:126:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x010f, code lost:
        r21 = -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0113, code lost:
        if (r9 == r6) goto L_0x016e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0115, code lost:
        h(r42);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0118, code lost:
        if (r14 == 0) goto L_0x0124;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x011a, code lost:
        r1 = (int) java.lang.Math.min((long) r3.length, r6 - r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0124, code lost:
        r1 = r3.length;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0125, code lost:
        r0 = r2.read(r3, 0, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x012b, code lost:
        if (r0 != -1) goto L_0x0133;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x012d, code lost:
        if (r5 == null) goto L_0x016e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x012f, code lost:
        r5.a(r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0133, code lost:
        r0 = (long) r0;
        r9 = r9 + r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0135, code lost:
        if (r5 == null) goto L_0x014b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0137, code lost:
        r11 = r5.f5569c + r0;
        r5.f5569c = r11;
        r5.a.a(r5.b, r11, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x014b, code lost:
        r2 = r37;
        r3 = r38;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x016e, code lost:
        f.i.a.a.m1.h0.k(r37);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x0175, code lost:
        if ((r9 - r12) >= r10) goto L_0x0182;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x0177, code lost:
        if (r43 == false) goto L_0x0199;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0179, code lost:
        if (r16 == false) goto L_0x017c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0181, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0182, code lost:
        r6 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0199, code lost:
        return;
     */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00f0 A[Catch: a -> 0x00fb, all -> 0x00da, TRY_LEAVE, TryCatch #0 {a -> 0x00fb, blocks: (B:55:0x00e0, B:57:0x00e6, B:58:0x00ea, B:61:0x00f0), top: B:101:0x00e0 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void b(f.i.a.a.l1.p r34, f.i.a.a.l1.k0.b r35, @androidx.annotation.Nullable f.i.a.a.l1.k0.j r36, f.i.a.a.l1.k0.e r37, byte[] r38, f.i.a.a.m1.x r39, int r40, @androidx.annotation.Nullable f.i.a.a.l1.k0.l.a r41, @androidx.annotation.Nullable java.util.concurrent.atomic.AtomicBoolean r42, boolean r43) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 411
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.l.b(f.i.a.a.l1.p, f.i.a.a.l1.k0.b, f.i.a.a.l1.k0.j, f.i.a.a.l1.k0.e, byte[], f.i.a.a.m1.x, int, f.i.a.a.l1.k0.l$a, java.util.concurrent.atomic.AtomicBoolean, boolean):void");
    }

    public static Pair<Long, Long> c(p pVar, b bVar, @Nullable j jVar) {
        String a2 = a(pVar, jVar);
        long j2 = pVar.f5604d;
        long d2 = d(pVar, bVar, a2);
        long j3 = j2;
        long j4 = d2;
        long j5 = 0;
        while (j4 != 0) {
            int i2 = (j4 > -1 ? 1 : (j4 == -1 ? 0 : -1));
            long k2 = bVar.k(a2, j3, i2 != 0 ? j4 : Long.MAX_VALUE);
            if (k2 <= 0) {
                k2 = -k2;
                if (k2 == RecyclerView.FOREVER_NS) {
                    break;
                }
            } else {
                j5 += k2;
            }
            j3 += k2;
            if (i2 == 0) {
                k2 = 0;
            }
            j4 -= k2;
        }
        return Pair.create(Long.valueOf(d2), Long.valueOf(j5));
    }

    public static long d(p pVar, b bVar, String str) {
        long j2 = pVar.f5606f;
        if (j2 != -1) {
            return j2;
        }
        long a2 = o.a(bVar.c(str));
        if (a2 == -1) {
            return -1;
        }
        return a2 - pVar.f5604d;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:0:?, code lost:
        r1 = r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean e(java.io.IOException r1) {
        /*
        L_0x0000:
            if (r1 == 0) goto L_0x0014
            boolean r0 = r1 instanceof f.i.a.a.l1.n
            if (r0 == 0) goto L_0x000f
            r0 = r1
            f.i.a.a.l1.n r0 = (f.i.a.a.l1.n) r0
            int r0 = r0.a
            if (r0 != 0) goto L_0x000f
            r1 = 1
            return r1
        L_0x000f:
            java.lang.Throwable r1 = r1.getCause()
            goto L_0x0000
        L_0x0014:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.l.e(java.io.IOException):boolean");
    }

    public static String f(p pVar) {
        String str = pVar.f5607g;
        return str != null ? str : pVar.a.toString();
    }

    public static void g(p pVar, b bVar, @Nullable j jVar) {
        for (k kVar : bVar.j(a(pVar, jVar))) {
            try {
                bVar.e(kVar);
            } catch (b.a unused) {
            }
        }
    }

    public static void h(AtomicBoolean atomicBoolean) throws InterruptedException {
        if (Thread.interrupted() || (atomicBoolean != null && atomicBoolean.get())) {
            throw new InterruptedException();
        }
    }
}
