package f.i.a.a.b1.t;

import android.util.Pair;
import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.b1.t.d;
import f.i.a.a.m1.h0;
import f.i.a.a.q;
/* compiled from: MlltSeeker.java */
/* loaded from: classes.dex */
public final class c implements d.a {
    public final long[] a;
    public final long[] b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4209c;

    public c(long[] jArr, long[] jArr2) {
        this.a = jArr;
        this.b = jArr2;
        this.f4209c = q.a(jArr2[jArr2.length - 1]);
    }

    public static Pair<Long, Long> a(long j2, long[] jArr, long[] jArr2) {
        int f2 = h0.f(jArr, j2, true, true);
        long j3 = jArr[f2];
        long j4 = jArr2[f2];
        int i2 = f2 + 1;
        if (i2 == jArr.length) {
            return Pair.create(Long.valueOf(j3), Long.valueOf(j4));
        }
        long j5 = jArr[i2];
        return Pair.create(Long.valueOf(j2), Long.valueOf(((long) ((j5 == j3 ? 0.0d : (j2 - j3) / (j5 - j3)) * (jArr2[i2] - j4))) + j4));
    }

    @Override // f.i.a.a.b1.t.d.a
    public long b(long j2) {
        return q.a(((Long) a(j2, this.a, this.b).second).longValue());
    }

    @Override // f.i.a.a.b1.t.d.a
    public long e() {
        return -1L;
    }

    @Override // f.i.a.a.b1.n
    public boolean g() {
        return true;
    }

    @Override // f.i.a.a.b1.n
    public n.a h(long j2) {
        Pair<Long, Long> a = a(q.b(h0.p(j2, 0L, this.f4209c)), this.b, this.a);
        return new n.a(new o(q.a(((Long) a.first).longValue()), ((Long) a.second).longValue()));
    }

    @Override // f.i.a.a.b1.n
    public long j() {
        return this.f4209c;
    }
}
