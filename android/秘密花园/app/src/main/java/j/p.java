package j;

import h.o.c.g;
import java.io.IOException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource.kt */
/* loaded from: classes.dex */
public final class p implements a0 {
    public int a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final j f6985c;

    /* renamed from: d  reason: collision with root package name */
    public final Inflater f6986d;

    public p(j jVar, Inflater inflater) {
        if (jVar != null) {
            this.f6985c = jVar;
            this.f6986d = inflater;
            return;
        }
        g.f("source");
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0079 A[Catch: DataFormatException -> 0x00aa, TryCatch #0 {DataFormatException -> 0x00aa, blocks: (B:27:0x0053, B:29:0x006d, B:31:0x0079, B:33:0x0081, B:38:0x008d, B:39:0x0094, B:40:0x0095, B:42:0x009e), top: B:57:0x0053 }] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x006d A[SYNTHETIC] */
    @Override // j.a0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long c(j.g r9, long r10) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 227
        */
        throw new UnsupportedOperationException("Method not decompiled: j.p.c(j.g, long):long");
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.b) {
            this.f6986d.end();
            this.b = true;
            this.f6985c.close();
        }
    }

    public final void d() {
        int i2 = this.a;
        if (i2 != 0) {
            int remaining = i2 - this.f6986d.getRemaining();
            this.a -= remaining;
            this.f6985c.skip((long) remaining);
        }
    }

    @Override // j.a0
    public b0 i() {
        return this.f6985c.i();
    }
}
