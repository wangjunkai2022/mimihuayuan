package j;

import f.b.a.a.a;
import h.o.c.g;
import java.nio.ByteBuffer;

/* compiled from: RealBufferedSink.kt */
/* loaded from: classes.dex */
public final class t implements i {
    public final g a = new g();
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final y f6988c;

    public t(y yVar) {
        this.f6988c = yVar;
    }

    @Override // j.i
    public i a(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            g.f("source");
            throw null;
        } else if (!this.b) {
            this.a.O(bArr, i2, i3);
            t();
            return this;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.b) {
            Throwable th = null;
            try {
                if (this.a.b > 0) {
                    this.f6988c.j(this.a, this.a.b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f6988c.close();
            } catch (Throwable th3) {
                th = th3;
                if (th == null) {
                }
            }
            this.b = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // j.i, j.y, java.io.Flushable
    public void flush() {
        if (!this.b) {
            g gVar = this.a;
            long j2 = gVar.b;
            if (j2 > 0) {
                this.f6988c.j(gVar, j2);
            }
            this.f6988c.flush();
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
        return this.f6988c.i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.b;
    }

    @Override // j.y
    public void j(g gVar, long j2) {
        if (gVar == null) {
            g.f("source");
            throw null;
        } else if (!this.b) {
            this.a.j(gVar, j2);
            t();
        } else {
            throw new IllegalStateException("closed".toString());
        }
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
        if (bArr == null) {
            g.f("source");
            throw null;
        } else if (!this.b) {
            this.a.N(bArr);
            t();
            return this;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // j.i
    public i s(k kVar) {
        if (kVar == null) {
            g.f("byteString");
            throw null;
        } else if (!this.b) {
            this.a.M(kVar);
            t();
            return this;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // j.i
    public i t() {
        if (!this.b) {
            long d2 = this.a.d();
            if (d2 > 0) {
                this.f6988c.j(this.a, d2);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = a.o("buffer(");
        o.append(this.f6988c);
        o.append(')');
        return o.toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            g.f("source");
            throw null;
        } else if (!this.b) {
            int write = this.a.write(byteBuffer);
            t();
            return write;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // j.i
    public i y(String str) {
        if (str == null) {
            g.f("string");
            throw null;
        } else if (!this.b) {
            this.a.c0(str);
            return t();
        } else {
            throw new IllegalStateException("closed".toString());
        }
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
