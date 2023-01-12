package j;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* compiled from: RealBufferedSource.kt */
/* loaded from: classes.dex */
public final class u implements j {
    public final g a = new g();
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final a0 f7064c;

    public u(a0 a0Var) {
        this.f7064c = a0Var;
    }

    @Override // j.j
    public long A() {
        byte f2;
        x(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!g(i3)) {
                break;
            }
            f2 = this.a.f(i2);
            if ((f2 < ((byte) 48) || f2 > ((byte) 57)) && ((f2 < ((byte) 97) || f2 > ((byte) 102)) && (f2 < ((byte) 65) || f2 > ((byte) 70)))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            String format = String.format("Expected leading [0-9a-fA-F] character but was %#x", Arrays.copyOf(new Object[]{Byte.valueOf(f2)}, 1));
            h.o.c.g.b(format, "java.lang.String.format(format, *args)");
            throw new NumberFormatException(format);
        }
        return this.a.A();
    }

    @Override // j.j
    public String B(Charset charset) {
        this.a.P(this.f7064c);
        g gVar = this.a;
        return gVar.H(gVar.b, charset);
    }

    @Override // j.j
    public InputStream C() {
        return new a();
    }

    @Override // j.j
    public int D(r rVar) {
        if (rVar != null) {
            if (!this.b) {
                do {
                    int K = this.a.K(rVar, true);
                    if (K != -2) {
                        if (K != -1) {
                            this.a.skip(rVar.a[K].b());
                            return K;
                        }
                        return -1;
                    }
                } while (this.f7064c.c(this.a, 8192) != -1);
                return -1;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("options");
        throw null;
    }

    @Override // j.j
    public k b(long j2) {
        if (g(j2)) {
            return this.a.b(j2);
        }
        throw new EOFException();
    }

    @Override // j.a0
    public long c(g gVar, long j2) {
        if (gVar == null) {
            h.o.c.g.f("sink");
            throw null;
        }
        if (j2 >= 0) {
            if (!this.b) {
                g gVar2 = this.a;
                if (gVar2.b == 0 && this.f7064c.c(gVar2, 8192) == -1) {
                    return -1L;
                }
                return this.a.c(gVar, Math.min(j2, this.a.b));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.b) {
            return;
        }
        this.b = true;
        this.f7064c.close();
        g gVar = this.a;
        gVar.skip(gVar.b);
    }

    public long d(byte b, long j2, long j3) {
        boolean z = true;
        if (!this.b) {
            if (!((0 > j2 || j3 < j2) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j2 + " toIndex=" + j3).toString());
            }
            while (j2 < j3) {
                long g2 = this.a.g(b, j2, j3);
                if (g2 == -1) {
                    g gVar = this.a;
                    long j4 = gVar.b;
                    if (j4 >= j3 || this.f7064c.c(gVar, 8192) == -1) {
                        break;
                    }
                    j2 = Math.max(j2, j4);
                } else {
                    return g2;
                }
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    public byte[] e(long j2) {
        if (g(j2)) {
            return this.a.E(j2);
        }
        throw new EOFException();
    }

    public int f() {
        x(4L);
        int readInt = this.a.readInt();
        return ((readInt & 255) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    public boolean g(long j2) {
        g gVar;
        if (j2 >= 0) {
            if (!this.b) {
                do {
                    gVar = this.a;
                    if (gVar.b >= j2) {
                        return true;
                    }
                } while (this.f7064c.c(gVar, 8192) != -1);
                return false;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
    }

    @Override // j.j, j.i
    public g h() {
        return this.a;
    }

    @Override // j.a0
    public b0 i() {
        return this.f7064c.i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.b;
    }

    @Override // j.j
    public String n() {
        return v(RecyclerView.FOREVER_NS);
    }

    @Override // j.j
    public byte[] o() {
        this.a.P(this.f7064c);
        return this.a.o();
    }

    @Override // j.j
    public boolean p() {
        if (!this.b) {
            return this.a.p() && this.f7064c.c(this.a, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            g gVar = this.a;
            if (gVar.b == 0 && this.f7064c.c(gVar, 8192) == -1) {
                return -1;
            }
            return this.a.read(byteBuffer);
        }
        h.o.c.g.f("sink");
        throw null;
    }

    @Override // j.j
    public byte readByte() {
        x(1L);
        return this.a.readByte();
    }

    @Override // j.j
    public int readInt() {
        x(4L);
        return this.a.readInt();
    }

    @Override // j.j
    public short readShort() {
        x(2L);
        return this.a.readShort();
    }

    @Override // j.j
    public void skip(long j2) {
        if (!(!this.b)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j2 > 0) {
            g gVar = this.a;
            if (gVar.b == 0 && this.f7064c.c(gVar, 8192) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j2, this.a.b);
            this.a.skip(min);
            j2 -= min;
        }
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("buffer(");
        o.append(this.f7064c);
        o.append(')');
        return o.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        if (r9 == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        r1 = java.lang.String.format("Expected leading [0-9] or '-' character but was %#x", java.util.Arrays.copyOf(new java.lang.Object[]{java.lang.Byte.valueOf(r8)}, 1));
        h.o.c.g.b(r1, "java.lang.String.format(format, *args)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
        throw new java.lang.NumberFormatException(r1);
     */
    @Override // j.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long u() {
        /*
            r10 = this;
            r0 = 1
            r10.x(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r10.g(r6)
            if (r8 == 0) goto L4e
            j.g r8 = r10.a
            byte r8 = r8.f(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L20
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L2a
        L20:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L2c
            r4 = 45
            byte r4 = (byte) r4
            if (r8 == r4) goto L2a
            goto L2c
        L2a:
            r4 = r6
            goto L8
        L2c:
            if (r9 == 0) goto L2f
            goto L4e
        L2f:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r1 = 1
            java.lang.Object[] r2 = new java.lang.Object[r1]
            r3 = 0
            java.lang.Byte r4 = java.lang.Byte.valueOf(r8)
            r2[r3] = r4
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r2, r1)
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was %#x"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            java.lang.String r2 = "java.lang.String.format(format, *args)"
            h.o.c.g.b(r1, r2)
            r0.<init>(r1)
            throw r0
        L4e:
            j.g r0 = r10.a
            long r0 = r0.u()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.u.u():long");
    }

    @Override // j.j
    public String v(long j2) {
        if (j2 >= 0) {
            long j3 = j2 == RecyclerView.FOREVER_NS ? Long.MAX_VALUE : j2 + 1;
            byte b = (byte) 10;
            long d2 = d(b, 0L, j3);
            if (d2 != -1) {
                return this.a.J(d2);
            }
            if (j3 < RecyclerView.FOREVER_NS && g(j3) && this.a.f(j3 - 1) == ((byte) 13) && g(1 + j3) && this.a.f(j3) == b) {
                return this.a.J(j3);
            }
            g gVar = new g();
            g gVar2 = this.a;
            gVar2.e(gVar, 0L, Math.min(32, gVar2.b));
            StringBuilder o = f.b.a.a.a.o("\\n not found: limit=");
            o.append(Math.min(this.a.b, j2));
            o.append(" content=");
            o.append(j.c0.a.j(gVar.F()));
            o.append("…");
            throw new EOFException(o.toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("limit < 0: ", j2).toString());
    }

    @Override // j.j
    public long w(y yVar) {
        long j2 = 0;
        while (this.f7064c.c(this.a, 8192) != -1) {
            long d2 = this.a.d();
            if (d2 > 0) {
                j2 += d2;
                yVar.j(this.a, d2);
            }
        }
        g gVar = this.a;
        long j3 = gVar.b;
        if (j3 > 0) {
            long j4 = j2 + j3;
            yVar.j(gVar, j3);
            return j4;
        }
        return j2;
    }

    @Override // j.j
    public void x(long j2) {
        if (!g(j2)) {
            throw new EOFException();
        }
    }

    /* compiled from: RealBufferedSource.kt */
    /* loaded from: classes.dex */
    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() {
            u uVar = u.this;
            if (!uVar.b) {
                return (int) Math.min(uVar.a.b, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            u.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            u uVar = u.this;
            if (!uVar.b) {
                g gVar = uVar.a;
                if (gVar.b == 0 && uVar.f7064c.c(gVar, 8192) == -1) {
                    return -1;
                }
                return u.this.a.readByte() & 255;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return u.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            if (bArr != null) {
                if (!u.this.b) {
                    b.i(bArr.length, i2, i3);
                    u uVar = u.this;
                    g gVar = uVar.a;
                    if (gVar.b == 0 && uVar.f7064c.c(gVar, 8192) == -1) {
                        return -1;
                    }
                    return u.this.a.read(bArr, i2, i3);
                }
                throw new IOException("closed");
            }
            h.o.c.g.f("data");
            throw null;
        }
    }
}
