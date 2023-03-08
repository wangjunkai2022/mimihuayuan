package f.i.a.a.h1;

import androidx.annotation.Nullable;
import f.i.a.a.u0;

/* compiled from: SinglePeriodTimeline.java */
/* loaded from: classes.dex */
public final class n0 extends u0 {

    /* renamed from: k  reason: collision with root package name */
    public static final Object f4898k = new Object();
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4899c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4900d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4901e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4902f;

    /* renamed from: g  reason: collision with root package name */
    public final long f4903g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f4904h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f4905i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final Object f4906j;

    public n0(long j2, long j3, long j4, long j5, boolean z, boolean z2, @Nullable Object obj) {
        this(-9223372036854775807L, -9223372036854775807L, j2, j3, j4, j5, z, z2, obj);
    }

    @Override // f.i.a.a.u0
    public int b(Object obj) {
        return f4898k.equals(obj) ? 0 : -1;
    }

    @Override // f.i.a.a.u0
    public u0.b g(int i2, u0.b bVar, boolean z) {
        c.a.a.b.g.h.q(i2, 0, 1);
        bVar.g(null, z ? f4898k : null, 0, this.f4900d, -this.f4902f);
        return bVar;
    }

    @Override // f.i.a.a.u0
    public int i() {
        return 1;
    }

    @Override // f.i.a.a.u0
    public Object m(int i2) {
        c.a.a.b.g.h.q(i2, 0, 1);
        return f4898k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        if (r1 > r7) goto L10;
     */
    @Override // f.i.a.a.u0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f.i.a.a.u0.c o(int r19, f.i.a.a.u0.c r20, boolean r21, long r22) {
        /*
            r18 = this;
            r0 = r18
            r1 = 0
            r2 = 1
            r3 = r19
            c.a.a.b.g.h.q(r3, r1, r2)
            if (r21 == 0) goto Le
            java.lang.Object r1 = r0.f4906j
            goto Lf
        Le:
            r1 = 0
        Lf:
            r3 = r1
            long r1 = r0.f4903g
            boolean r4 = r0.f4905i
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L30
            r7 = 0
            int r4 = (r22 > r7 ? 1 : (r22 == r7 ? 0 : -1))
            if (r4 == 0) goto L30
            long r7 = r0.f4901e
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 != 0) goto L29
        L27:
            r10 = r5
            goto L31
        L29:
            long r1 = r1 + r22
            int r4 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r4 <= 0) goto L30
            goto L27
        L30:
            r10 = r1
        L31:
            long r4 = r0.b
            long r6 = r0.f4899c
            boolean r8 = r0.f4904h
            boolean r9 = r0.f4905i
            long r12 = r0.f4901e
            r14 = 0
            r15 = 0
            long r1 = r0.f4902f
            r16 = r1
            r2 = r20
            r2.b(r3, r4, r6, r8, r9, r10, r12, r14, r15, r16)
            return r20
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.n0.o(int, f.i.a.a.u0$c, boolean, long):f.i.a.a.u0$c");
    }

    @Override // f.i.a.a.u0
    public int p() {
        return 1;
    }

    public n0(long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, @Nullable Object obj) {
        this.b = j2;
        this.f4899c = j3;
        this.f4900d = j4;
        this.f4901e = j5;
        this.f4902f = j6;
        this.f4903g = j7;
        this.f4904h = z;
        this.f4905i = z2;
        this.f4906j = obj;
    }
}
