package f.i.a.a.h1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: IcyDataSource.java */
/* loaded from: classes.dex */
public final class a0 implements f.i.a.a.l1.m {
    public final f.i.a.a.l1.m a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final a f4799c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f4800d;

    /* renamed from: e  reason: collision with root package name */
    public int f4801e;

    /* compiled from: IcyDataSource.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    public a0(f.i.a.a.l1.m mVar, int i2, a aVar) {
        c.a.a.b.g.h.m(i2 > 0);
        this.a = mVar;
        this.b = i2;
        this.f4799c = aVar;
        this.f4800d = new byte[1];
        this.f4801e = i2;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        return this.a.a();
    }

    @Override // f.i.a.a.l1.m
    public long b(f.i.a.a.l1.p pVar) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // f.i.a.a.l1.m
    public void c(f.i.a.a.l1.i0 i0Var) {
        this.a.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.a.d();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076 A[RETURN] */
    @Override // f.i.a.a.l1.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int read(byte[] r17, int r18, int r19) throws java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            int r1 = r0.f4801e
            r2 = -1
            if (r1 != 0) goto L77
            f.i.a.a.l1.m r1 = r0.a
            byte[] r3 = r0.f4800d
            r4 = 1
            r5 = 0
            int r1 = r1.read(r3, r5, r4)
            if (r1 != r2) goto L15
        L13:
            r4 = 0
            goto L6f
        L15:
            byte[] r1 = r0.f4800d
            r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 4
            if (r1 != 0) goto L20
            goto L6f
        L20:
            byte[] r3 = new byte[r1]
            r6 = r1
            r7 = 0
        L24:
            if (r6 <= 0) goto L32
            f.i.a.a.l1.m r8 = r0.a
            int r8 = r8.read(r3, r7, r6)
            if (r8 != r2) goto L2f
            goto L13
        L2f:
            int r7 = r7 + r8
            int r6 = r6 - r8
            goto L24
        L32:
            if (r1 <= 0) goto L3c
            int r5 = r1 + (-1)
            r6 = r3[r5]
            if (r6 != 0) goto L3c
            r1 = r5
            goto L32
        L3c:
            if (r1 <= 0) goto L6f
            f.i.a.a.h1.a0$a r5 = r0.f4799c
            f.i.a.a.m1.u r6 = new f.i.a.a.m1.u
            r6.<init>(r3, r1)
            f.i.a.a.h1.g0$a r5 = (f.i.a.a.h1.g0.a) r5
            boolean r1 = r5.f4850m
            if (r1 != 0) goto L4e
            long r7 = r5.f4846i
            goto L5a
        L4e:
            f.i.a.a.h1.g0 r1 = f.i.a.a.h1.g0.this
            long r7 = f.i.a.a.h1.g0.v(r1)
            long r9 = r5.f4846i
            long r7 = java.lang.Math.max(r7, r9)
        L5a:
            r10 = r7
            int r13 = r6.a()
            f.i.a.a.b1.p r9 = r5.f4849l
            c.a.a.b.g.h.t(r9)
            r9.a(r6, r13)
            r12 = 1
            r14 = 0
            r15 = 0
            r9.c(r10, r12, r13, r14, r15)
            r5.f4850m = r4
        L6f:
            if (r4 == 0) goto L76
            int r1 = r0.b
            r0.f4801e = r1
            goto L77
        L76:
            return r2
        L77:
            f.i.a.a.l1.m r1 = r0.a
            int r3 = r0.f4801e
            r4 = r19
            int r3 = java.lang.Math.min(r3, r4)
            r4 = r17
            r5 = r18
            int r1 = r1.read(r4, r5, r3)
            if (r1 == r2) goto L90
            int r2 = r0.f4801e
            int r2 = r2 - r1
            r0.f4801e = r2
        L90:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.a0.read(byte[], int, int):int");
    }
}
