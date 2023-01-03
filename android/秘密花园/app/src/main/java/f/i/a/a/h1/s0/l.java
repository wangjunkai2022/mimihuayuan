package f.i.a.a.h1.s0;

import f.i.a.a.b0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;

/* compiled from: MediaChunk.java */
/* loaded from: classes.dex */
public abstract class l extends d {

    /* renamed from: i  reason: collision with root package name */
    public final long f4905i;

    public l(m mVar, p pVar, b0 b0Var, int i2, Object obj, long j2, long j3, long j4) {
        super(mVar, pVar, 1, b0Var, i2, obj, j2, j3);
        if (b0Var != null) {
            this.f4905i = j4;
            return;
        }
        throw null;
    }

    public long c() {
        long j2 = this.f4905i;
        if (j2 != -1) {
            return 1 + j2;
        }
        return -1;
    }

    public abstract boolean d();
}
