package j;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import h.o.c.g;
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
    public final a0 f6989c;

    public u(a0 a0Var) {
        this.f6989c = a0Var;
    }

    @Override // j.j
    public long A() {
        byte f2;
        x(1);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!g((long) i3)) {
                break;
            }
            f2 = this.a.f((long) i2);
            if ((f2 < ((byte) 48) || f2 > ((byte) 57)) && ((f2 < ((byte) 97) || f2 > ((byte) 102)) && (f2 < ((byte) 65) || f2 > ((byte) 70)))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            String format = String.format("Expected leading [0-9a-fA-F] character but was %#x", Arrays.copyOf(new Object[]{Byte.valueOf(f2)}, 1));
            g.b(format, "java.lang.String.format(format, *args)");
            throw new NumberFormatException(format);
        }
        return this.a.A();
    }

    @Override // j.j
    public String B(Charset charset) {
        this.a.P(this.f6989c);
        g gVar = this.a;
        return gVar.H(gVar.b, charset);
    }

    @Override // j.j
    public InputStream C() {
        return new a(this);
    }

    @Override // j.j
    public int D(r rVar) {
        if (rVar == null) {
            g.f("options");
            throw null;
        } else if (!this.b) {
            do {
                int K = this.a.K(rVar, true);
                if (K != -2) {
                    if (K == -1) {
                        return -1;
                    }
                    this.a.skip((long) rVar.a[K].b());
                    return K;
                }
            } while (this.f6989c.c(this.a, (long) 8192) != -1);
            return -1;
        } else {
            throw new IllegalStateException("closed".toString());
        }
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
        if (gVar != null) {
            if (!(j2 >= 0)) {
                throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
            } else if (!this.b) {
                g gVar2 = this.a;
                if (gVar2.b == 0 && this.f6989c.c(gVar2, (long) 8192) == -1) {
                    return -1;
                }
                return this.a.c(gVar, Math.min(j2, this.a.b));
            } else {
                throw new IllegalStateException("closed".toString());
            }
        } else {
            g.f("sink");
            throw null;
        }
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.b) {
            this.b = true;
            this.f6989c.close();
            g gVar = this.a;
            gVar.skip(gVar.b);
        }
    }

    public long d(byte b, long j2, long j3) {
        boolean z = true;
        if (!this.b) {
            if (0 > j2 || j3 < j2) {
                z = false;
            }
            if (z) {
                while (j2 < j3) {
                    long g2 = this.a.g(b, j2, j3);
                    if (g2 == -1) {
                        g gVar = this.a;
                        long j4 = gVar.b;
                        if (j4 >= j3 || this.f6989c.c(gVar, (long) 8192) == -1) {
                            break;
                        }
                        j2 = Math.max(j2, j4);
                    } else {
                        return g2;
                    }
                }
                return -1;
            }
            throw new IllegalArgumentException(("fromIndex=" + j2 + " toIndex=" + j3).toString());
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
        x(4);
        int readInt = this.a.readInt();
        return ((readInt & 255) << 24) | ((-16777216 & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    public boolean g(long j2) {
        g gVar;
        if (!(j2 >= 0)) {
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
        } else if (!this.b) {
            do {
                gVar = this.a;
                if (gVar.b >= j2) {
                    return true;
                }
            } while (this.f6989c.c(gVar, (long) 8192) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // j.j, j.i
    public g h() {
        return this.a;
    }

    @Override // j.a0
    public b0 i() {
        return this.f6989c.i();
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
        this.a.P(this.f6989c);
        return this.a.o();
    }

    @Override // j.j
    public boolean p() {
        if (!(!this.b)) {
            throw new IllegalStateException("closed".toString());
        } else if (!this.a.p() || this.f6989c.c(this.a, (long) 8192) != -1) {
            return false;
        } else {
            return true;
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            g gVar = this.a;
            if (gVar.b == 0 && this.f6989c.c(gVar, (long) 8192) == -1) {
                return -1;
            }
            return this.a.read(byteBuffer);
        }
        g.f("sink");
        throw null;
    }

    @Override // j.j
    public byte readByte() {
        x(1);
        return this.a.readByte();
    }

    @Override // j.j
    public int readInt() {
        x(4);
        return this.a.readInt();
    }

    @Override // j.j
    public short readShort() {
        x(2);
        return this.a.readShort();
    }

    @Override // j.j
    public void skip(long j2) {
        if (!this.b) {
            while (j2 > 0) {
                g gVar = this.a;
                if (gVar.b == 0 && this.f6989c.c(gVar, (long) 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j2, this.a.b);
                this.a.skip(min);
                j2 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = f.b.a.a.a.o("buffer(");
        o.append(this.f6989c);
        o.append(')');
        return o.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r9 == 0) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002f, code lost:
        r1 = java.lang.String.format("Expected leading [0-9] or '-' character but was %#x", java.util.Arrays.copyOf(new java.lang.Object[]{java.lang.Byte.valueOf(r8)}, 1));
        h.o.c.g.b(r1, "java.lang.String.format(format, *args)");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004d, code lost:
        throw new java.lang.NumberFormatException(r1);
     */
    @Override // j.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long u() {
        /*
            r10 = this;
            r0 = 1
            r10.x(r0)
            r2 = 0
            r4 = r2
        L_0x0008:
            long r6 = r4 + r0
            boolean r8 = r10.g(r6)
            if (r8 == 0) goto L_0x004e
            j.g r8 = r10.a
            byte r8 = r8.f(r4)
            r9 = 48
            byte r9 = (byte) r9
            if (r8 < r9) goto L_0x0020
            r9 = 57
            byte r9 = (byte) r9
            if (r8 <= r9) goto L_0x002a
        L_0x0020:
            int r9 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r9 != 0) goto L_0x002c
            r4 = 45
            byte r4 = (byte) r4
            if (r8 == r4) goto L_0x002a
            goto L_0x002c
        L_0x002a:
            r4 = r6
            goto L_0x0008
        L_0x002c:
            if (r9 == 0) goto L_0x002f
            goto L_0x004e
        L_0x002f:
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
        L_0x004e:
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
            long d2 = d(b, 0, j3);
            if (d2 != -1) {
                return this.a.J(d2);
            }
            if (j3 < RecyclerView.FOREVER_NS && g(j3) && this.a.f(j3 - 1) == ((byte) 13) && g(1 + j3) && this.a.f(j3) == b) {
                return this.a.J(j3);
            }
            g gVar = new g();
            g gVar2 = this.a;
            gVar2.e(gVar, 0, Math.min((long) 32, gVar2.b));
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
        while (this.f6989c.c(this.a, (long) 8192) != -1) {
            long d2 = this.a.d();
            if (d2 > 0) {
                j2 += d2;
                yVar.j(this.a, d2);
            }
        }
        g gVar = this.a;
        long j3 = gVar.b;
        if (j3 <= 0) {
            return j2;
        }
        long j4 = j2 + j3;
        yVar.j(gVar, j3);
        return j4;
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
        public final /* synthetic */ u a;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        public a(u uVar) {
            this.a = uVar;
        }

        @Override // java.io.InputStream
        public int available() {
            u uVar = this.a;
            if (!uVar.b) {
                return (int) Math.min(uVar.a.b, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.a.close();
        }

        @Override // java.io.InputStream
        public int read() {
            u uVar = this.a;
            if (!uVar.b) {
                g gVar = uVar.a;
                if (gVar.b == 0 && uVar.f6989c.c(gVar, (long) 8192) == -1) {
                    return -1;
                }
                return this.a.a.readByte() & 255;
            }
            throw new IOException("closed");
        }

        @Override // java.lang.Object
        public String toString() {
            return this.a + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            if (bArr == null) {
                g.f("data");
                throw null;
            } else if (!this.a.b) {
                b.i((long) bArr.length, (long) i2, (long) i3);
                u uVar = this.a;
                g gVar = uVar.a;
                if (gVar.b == 0 && uVar.f6989c.c(gVar, (long) 8192) == -1) {
                    return -1;
                }
                return this.a.a.read(bArr, i2, i3);
            } else {
                throw new IOException("closed");
            }
        }
    }
}
