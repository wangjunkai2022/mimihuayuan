package f.i.a.a.h1;

import android.net.Uri;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: IcyDataSource.java */
/* loaded from: classes.dex */
public final class a0 implements m {
    public final m a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final a f4724c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f4725d;

    /* renamed from: e  reason: collision with root package name */
    public int f4726e;

    /* compiled from: IcyDataSource.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    public a0(m mVar, int i2, a aVar) {
        h.m(i2 > 0);
        this.a = mVar;
        this.b = i2;
        this.f4724c = aVar;
        this.f4725d = new byte[1];
        this.f4726e = i2;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        return this.a.a();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
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

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0076 A[RETURN] */
    @Override // f.i.a.a.l1.m
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read(byte[] r17, int r18, int r19) throws java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            int r1 = r0.f4726e
            r2 = -1
            if (r1 != 0) goto L_0x0077
            f.i.a.a.l1.m r1 = r0.a
            byte[] r3 = r0.f4725d
            r4 = 1
            r5 = 0
            int r1 = r1.read(r3, r5, r4)
            if (r1 != r2) goto L_0x0015
        L_0x0013:
            r4 = 0
            goto L_0x006f
        L_0x0015:
            byte[] r1 = r0.f4725d
            byte r1 = r1[r5]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 4
            if (r1 != 0) goto L_0x0020
            goto L_0x006f
        L_0x0020:
            byte[] r3 = new byte[r1]
            r6 = r1
            r7 = 0
        L_0x0024:
            if (r6 <= 0) goto L_0x0032
            f.i.a.a.l1.m r8 = r0.a
            int r8 = r8.read(r3, r7, r6)
            if (r8 != r2) goto L_0x002f
            goto L_0x0013
        L_0x002f:
            int r7 = r7 + r8
            int r6 = r6 - r8
            goto L_0x0024
        L_0x0032:
            if (r1 <= 0) goto L_0x003c
            int r5 = r1 + -1
            byte r6 = r3[r5]
            if (r6 != 0) goto L_0x003c
            r1 = r5
            goto L_0x0032
        L_0x003c:
            if (r1 <= 0) goto L_0x006f
            f.i.a.a.h1.a0$a r5 = r0.f4724c
            f.i.a.a.m1.u r6 = new f.i.a.a.m1.u
            r6.<init>(r3, r1)
            f.i.a.a.h1.g0$a r5 = (f.i.a.a.h1.g0.a) r5
            boolean r1 = r5.f4775m
            if (r1 != 0) goto L_0x004e
            long r7 = r5.f4771i
            goto L_0x005a
        L_0x004e:
            f.i.a.a.h1.g0 r1 = f.i.a.a.h1.g0.this
            long r7 = f.i.a.a.h1.g0.v(r1)
            long r9 = r5.f4771i
            long r7 = java.lang.Math.max(r7, r9)
        L_0x005a:
            r10 = r7
            int r13 = r6.a()
            f.i.a.a.b1.p r9 = r5.f4774l
            c.a.a.b.g.h.t(r9)
            r9.a(r6, r13)
            r12 = 1
            r14 = 0
            r15 = 0
            r9.c(r10, r12, r13, r14, r15)
            r5.f4775m = r4
        L_0x006f:
            if (r4 == 0) goto L_0x0076
            int r1 = r0.b
            r0.f4726e = r1
            goto L_0x0077
        L_0x0076:
            return r2
        L_0x0077:
            f.i.a.a.l1.m r1 = r0.a
            int r3 = r0.f4726e
            r4 = r19
            int r3 = java.lang.Math.min(r3, r4)
            r4 = r17
            r5 = r18
            int r1 = r1.read(r4, r5, r3)
            if (r1 == r2) goto L_0x0090
            int r2 = r0.f4726e
            int r2 = r2 - r1
            r0.f4726e = r2
        L_0x0090:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.a0.read(byte[], int, int):int");
    }
}
