package j;

import java.io.IOException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource.kt */
/* loaded from: classes.dex */
public final class p implements a0 {
    public int a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final j f7060c;

    /* renamed from: d  reason: collision with root package name */
    public final Inflater f7061d;

    public p(j jVar, Inflater inflater) {
        if (jVar == null) {
            h.o.c.g.f("source");
            throw null;
        }
        this.f7060c = jVar;
        this.f7061d = inflater;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0079 A[Catch: DataFormatException -> 0x00aa, TryCatch #0 {DataFormatException -> 0x00aa, blocks: (B:28:0x0053, B:30:0x006d, B:32:0x0079, B:34:0x0081, B:39:0x008d, B:40:0x0094, B:41:0x0095, B:43:0x009e), top: B:59:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x006d A[SYNTHETIC] */
    @Override // j.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long c(j.g r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: j.p.c(j.g, long):long");
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.b) {
            return;
        }
        this.f7061d.end();
        this.b = true;
        this.f7060c.close();
    }

    public final void d() {
        int i2 = this.a;
        if (i2 == 0) {
            return;
        }
        int remaining = i2 - this.f7061d.getRemaining();
        this.a -= remaining;
        this.f7060c.skip(remaining);
    }

    @Override // j.a0
    public b0 i() {
        return this.f7060c.i();
    }
}
