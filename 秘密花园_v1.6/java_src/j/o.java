package j;

import androidx.recyclerview.widget.RecyclerView;
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
    public final Inflater f7066c;

    /* renamed from: d  reason: collision with root package name */
    public final p f7067d;

    /* renamed from: e  reason: collision with root package name */
    public final CRC32 f7068e;

    public o(a0 a0Var) {
        if (a0Var != null) {
            this.b = new u(a0Var);
            Inflater inflater = new Inflater(true);
            this.f7066c = inflater;
            this.f7067d = new p(this.b, inflater);
            this.f7068e = new CRC32();
            return;
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.a0
    public long c(g gVar, long j2) throws IOException {
        long j3;
        if (gVar == null) {
            h.o.c.g.f("sink");
            throw null;
        }
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 >= 0) {
            if (i2 == 0) {
                return 0L;
            }
            if (this.a == 0) {
                this.b.x(10L);
                byte f2 = this.b.a.f(3L);
                boolean z = ((f2 >> 1) & 1) == 1;
                if (z) {
                    e(this.b.a, 0L, 10L);
                }
                u uVar = this.b;
                uVar.x(2L);
                d("ID1ID2", 8075, uVar.a.readShort());
                this.b.skip(8L);
                if (((f2 >> 2) & 1) == 1) {
                    this.b.x(2L);
                    if (z) {
                        e(this.b.a, 0L, 2L);
                    }
                    long G = this.b.a.G();
                    this.b.x(G);
                    if (z) {
                        j3 = G;
                        e(this.b.a, 0L, G);
                    } else {
                        j3 = G;
                    }
                    this.b.skip(j3);
                }
                if (((f2 >> 3) & 1) == 1) {
                    long d2 = this.b.d((byte) 0, 0L, RecyclerView.FOREVER_NS);
                    if (d2 != -1) {
                        if (z) {
                            e(this.b.a, 0L, d2 + 1);
                        }
                        this.b.skip(d2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((f2 >> 4) & 1) == 1) {
                    long d3 = this.b.d((byte) 0, 0L, RecyclerView.FOREVER_NS);
                    if (d3 != -1) {
                        if (z) {
                            e(this.b.a, 0L, d3 + 1);
                        }
                        this.b.skip(d3 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z) {
                    u uVar2 = this.b;
                    uVar2.x(2L);
                    d("FHCRC", uVar2.a.G(), (short) this.f7068e.getValue());
                    this.f7068e.reset();
                }
                this.a = (byte) 1;
            }
            if (this.a == 1) {
                long j4 = gVar.b;
                long c2 = this.f7067d.c(gVar, j2);
                if (c2 != -1) {
                    e(gVar, j4, c2);
                    return c2;
                }
                this.a = (byte) 2;
            }
            if (this.a == 2) {
                d("CRC", this.b.f(), (int) this.f7068e.getValue());
                d("ISIZE", this.b.f(), (int) this.f7066c.getBytesWritten());
                this.a = (byte) 3;
                if (!this.b.p()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7067d.close();
    }

    public final void d(String str, int i2, int i3) {
        if (i3 == i2) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i3), Integer.valueOf(i2)}, 3));
        h.o.c.g.b(format, "java.lang.String.format(this, *args)");
        throw new IOException(format);
    }

    public final void e(g gVar, long j2, long j3) {
        int i2;
        v vVar = gVar.a;
        if (vVar == null) {
            h.o.c.g.e();
            throw null;
        }
        do {
            int i3 = vVar.f7074c;
            int i4 = vVar.b;
            if (j2 < i3 - i4) {
                while (j3 > 0) {
                    int min = (int) Math.min(vVar.f7074c - i2, j3);
                    this.f7068e.update(vVar.a, (int) (vVar.b + j2), min);
                    j3 -= min;
                    vVar = vVar.f7077f;
                    if (vVar == null) {
                        h.o.c.g.e();
                        throw null;
                    }
                    j2 = 0;
                }
                return;
            }
            j2 -= i3 - i4;
            vVar = vVar.f7077f;
        } while (vVar != null);
        h.o.c.g.e();
        throw null;
    }

    @Override // j.a0
    public b0 i() {
        return this.b.i();
    }
}
