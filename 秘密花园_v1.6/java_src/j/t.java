package j;

import java.nio.ByteBuffer;
/* compiled from: RealBufferedSink.kt */
/* loaded from: classes.dex */
public final class t implements i {
    public final g a = new g();
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final y f7072c;

    public t(y yVar) {
        this.f7072c = yVar;
    }

    @Override // j.i
    public i a(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            if (!this.b) {
                this.a.O(bArr, i2, i3);
                t();
                return this;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.b) {
            return;
        }
        Throwable th = null;
        try {
            if (this.a.b > 0) {
                this.f7072c.j(this.a, this.a.b);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f7072c.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.b = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // j.i, j.y, java.io.Flushable
    public void flush() {
        if (!this.b) {
            g gVar = this.a;
            long j2 = gVar.b;
            if (j2 > 0) {
                this.f7072c.j(gVar, j2);
            }
            this.f7072c.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // j.i
    public g h() {
        return this.a;
    }

    @Override // j.y
    public b0 i() {
        return this.f7072c.i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.b;
    }

    @Override // j.y
    public void j(g gVar, long j2) {
        if (gVar != null) {
            if (!this.b) {
                this.a.j(gVar, j2);
                t();
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.i
    public i k(long j2) {
        if (!this.b) {
            this.a.k(j2);
            return t();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // j.i
    public i l(int i2) {
        if (!this.b) {
            this.a.a0(i2);
            t();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // j.i
    public i m(int i2) {
        if (!this.b) {
            this.a.Z(i2);
            return t();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // j.i
    public i q(int i2) {
        if (!this.b) {
            this.a.Q(i2);
            t();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // j.i
    public i r(byte[] bArr) {
        if (bArr != null) {
            if (!this.b) {
                this.a.N(bArr);
                t();
                return this;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.i
    public i s(k kVar) {
        if (kVar != null) {
            if (!this.b) {
                this.a.M(kVar);
                t();
                return this;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("byteString");
        throw null;
    }

    @Override // j.i
    public i t() {
        if (!this.b) {
            long d2 = this.a.d();
            if (d2 > 0) {
                this.f7072c.j(this.a, d2);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("buffer(");
        o.append(this.f7072c);
        o.append(')');
        return o.toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            if (!this.b) {
                int write = this.a.write(byteBuffer);
                t();
                return write;
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.i
    public i y(String str) {
        if (str != null) {
            if (!this.b) {
                this.a.c0(str);
                return t();
            }
            throw new IllegalStateException("closed".toString());
        }
        h.o.c.g.f("string");
        throw null;
    }

    @Override // j.i
    public i z(long j2) {
        if (!this.b) {
            this.a.z(j2);
            t();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }
}
