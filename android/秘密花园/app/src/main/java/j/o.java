package j;

import androidx.recyclerview.widget.RecyclerView;
import f.b.a.a.a;
import h.o.c.g;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: GzipSource.kt */
/* loaded from: classes.dex */
public final class o implements a0 {
    public byte a;
    public final u b;

    /* renamed from: c  reason: collision with root package name */
    public final Inflater f6982c;

    /* renamed from: d  reason: collision with root package name */
    public final p f6983d;

    /* renamed from: e  reason: collision with root package name */
    public final CRC32 f6984e;

    public o(a0 a0Var) {
        if (a0Var != null) {
            this.b = new u(a0Var);
            Inflater inflater = new Inflater(true);
            this.f6982c = inflater;
            this.f6983d = new p(this.b, inflater);
            this.f6984e = new CRC32();
            return;
        }
        g.f("source");
        throw null;
    }

    @Override // j.a0
    public long c(g gVar, long j2) throws IOException {
        long j3;
        if (gVar != null) {
            boolean z = false;
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (!(i2 >= 0)) {
                throw new IllegalArgumentException(a.c("byteCount < 0: ", j2).toString());
            } else if (i2 == 0) {
                return 0;
            } else {
                if (this.a == 0) {
                    this.b.x(10);
                    byte f2 = this.b.a.f(3);
                    boolean z2 = ((f2 >> 1) & 1) == 1;
                    if (z2) {
                        e(this.b.a, 0, 10);
                    }
                    u uVar = this.b;
                    uVar.x(2);
                    d("ID1ID2", 8075, uVar.a.readShort());
                    this.b.skip(8);
                    if (((f2 >> 2) & 1) == 1) {
                        this.b.x(2);
                        if (z2) {
                            e(this.b.a, 0, 2);
                        }
                        long G = (long) this.b.a.G();
                        this.b.x(G);
                        if (z2) {
                            j3 = G;
                            e(this.b.a, 0, G);
                        } else {
                            j3 = G;
                        }
                        this.b.skip(j3);
                    }
                    if (((f2 >> 3) & 1) == 1) {
                        long d2 = this.b.d((byte) 0, 0, RecyclerView.FOREVER_NS);
                        if (d2 != -1) {
                            if (z2) {
                                e(this.b.a, 0, d2 + 1);
                            }
                            this.b.skip(d2 + 1);
                        } else {
                            throw new EOFException();
                        }
                    }
                    if (((f2 >> 4) & 1) == 1) {
                        z = true;
                    }
                    if (z) {
                        long d3 = this.b.d((byte) 0, 0, RecyclerView.FOREVER_NS);
                        if (d3 != -1) {
                            if (z2) {
                                e(this.b.a, 0, d3 + 1);
                            }
                            this.b.skip(d3 + 1);
                        } else {
                            throw new EOFException();
                        }
                    }
                    if (z2) {
                        u uVar2 = this.b;
                        uVar2.x(2);
                        d("FHCRC", uVar2.a.G(), (short) ((int) this.f6984e.getValue()));
                        this.f6984e.reset();
                    }
                    this.a = 1;
                }
                if (this.a == 1) {
                    long j4 = gVar.b;
                    long c2 = this.f6983d.c(gVar, j2);
                    if (c2 != -1) {
                        e(gVar, j4, c2);
                        return c2;
                    }
                    this.a = 2;
                }
                if (this.a == 2) {
                    d("CRC", this.b.f(), (int) this.f6984e.getValue());
                    d("ISIZE", this.b.f(), (int) this.f6982c.getBytesWritten());
                    this.a = 3;
                    if (!this.b.p()) {
                        throw new IOException("gzip finished without exhausting source");
                    }
                }
                return -1;
            }
        } else {
            g.f("sink");
            throw null;
        }
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6983d.close();
    }

    public final void d(String str, int i2, int i3) {
        if (i3 != i2) {
            String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i3), Integer.valueOf(i2)}, 3));
            g.b(format, "java.lang.String.format(this, *args)");
            throw new IOException(format);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
        if (r10 <= 0) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0022, code lost:
        r8 = (int) (((long) r7.b) + r8);
        r9 = (int) java.lang.Math.min((long) (r7.f6990c - r8), r10);
        r6.f6984e.update(r7.a, r8, r9);
        r10 = r10 - ((long) r9);
        r7 = r7.f6993f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r7 == null) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003d, code lost:
        r8 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003f, code lost:
        h.o.c.g.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0042, code lost:
        throw null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0043, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void e(j.g r7, long r8, long r10) {
        /*
            r6 = this;
            j.v r7 = r7.a
            r0 = 0
            if (r7 == 0) goto L_0x0044
        L_0x0005:
            int r1 = r7.f6990c
            int r2 = r7.b
            int r3 = r1 - r2
            long r3 = (long) r3
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 < 0) goto L_0x001c
            int r1 = r1 - r2
            long r1 = (long) r1
            long r8 = r8 - r1
            j.v r7 = r7.f6993f
            if (r7 == 0) goto L_0x0018
            goto L_0x0005
        L_0x0018:
            h.o.c.g.e()
            throw r0
        L_0x001c:
            r1 = 0
        L_0x001e:
            int r3 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r3 <= 0) goto L_0x0043
            int r3 = r7.b
            long r3 = (long) r3
            long r3 = r3 + r8
            int r8 = (int) r3
            int r9 = r7.f6990c
            int r9 = r9 - r8
            long r3 = (long) r9
            long r3 = java.lang.Math.min(r3, r10)
            int r9 = (int) r3
            java.util.zip.CRC32 r3 = r6.f6984e
            byte[] r4 = r7.a
            r3.update(r4, r8, r9)
            long r8 = (long) r9
            long r10 = r10 - r8
            j.v r7 = r7.f6993f
            if (r7 == 0) goto L_0x003f
            r8 = r1
            goto L_0x001e
        L_0x003f:
            h.o.c.g.e()
            throw r0
        L_0x0043:
            return
        L_0x0044:
            h.o.c.g.e()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.o.e(j.g, long, long):void");
    }

    @Override // j.a0
    public b0 i() {
        return this.b.i();
    }
}
