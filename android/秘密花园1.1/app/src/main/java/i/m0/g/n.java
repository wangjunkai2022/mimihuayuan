package i.m0.g;

import androidx.appcompat.widget.ActivityChooserView;
import i.m0.g.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Writer.kt */
/* loaded from: classes.dex */
public final class n implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    public static final Logger f6715g = Logger.getLogger(e.class.getName());
    public final j.g a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6716c;

    /* renamed from: d  reason: collision with root package name */
    public final d.b f6717d;

    /* renamed from: e  reason: collision with root package name */
    public final j.i f6718e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6719f;

    public n(j.i iVar, boolean z) {
        this.f6718e = iVar;
        this.f6719f = z;
        j.g gVar = new j.g();
        this.a = gVar;
        this.b = 16384;
        this.f6717d = new d.b(0, false, gVar, 3);
    }

    public final synchronized void E(boolean z, int i2, List<c> list) throws IOException {
        if (list != null) {
            if (!this.f6716c) {
                this.f6717d.e(list);
                long j2 = this.a.b;
                long min = Math.min(this.b, j2);
                int i3 = (j2 > min ? 1 : (j2 == min ? 0 : -1));
                int i4 = i3 == 0 ? 4 : 0;
                if (z) {
                    i4 |= 1;
                }
                f(i2, (int) min, 1, i4);
                this.f6718e.j(this.a, min);
                if (i3 > 0) {
                    I(i2, j2 - min);
                }
            } else {
                throw new IOException("closed");
            }
        } else {
            h.o.c.g.f("headerBlock");
            throw null;
        }
    }

    public final synchronized void F(boolean z, int i2, int i3) throws IOException {
        if (!this.f6716c) {
            f(0, 8, 6, z ? 1 : 0);
            this.f6718e.m(i2);
            this.f6718e.m(i3);
            this.f6718e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void G(int i2, b bVar) throws IOException {
        if (!this.f6716c) {
            if (bVar.a != -1) {
                f(i2, 4, 3, 0);
                this.f6718e.m(bVar.a);
                this.f6718e.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void H(int i2, long j2) throws IOException {
        if (this.f6716c) {
            throw new IOException("closed");
        }
        if (j2 != 0 && j2 <= 2147483647L) {
            f(i2, 4, 8, 0);
            this.f6718e.m((int) j2);
            this.f6718e.flush();
        } else {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j2).toString());
        }
    }

    public final void I(int i2, long j2) throws IOException {
        while (j2 > 0) {
            long min = Math.min(this.b, j2);
            j2 -= min;
            f(i2, (int) min, 9, j2 == 0 ? 4 : 0);
            this.f6718e.j(this.a, min);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f6716c = true;
        this.f6718e.close();
    }

    public final synchronized void d(r rVar) throws IOException {
        if (rVar != null) {
            if (!this.f6716c) {
                int i2 = this.b;
                if ((rVar.a & 32) != 0) {
                    i2 = rVar.b[5];
                }
                this.b = i2;
                if (((rVar.a & 2) != 0 ? rVar.b[1] : -1) != -1) {
                    d.b bVar = this.f6717d;
                    int i3 = (rVar.a & 2) != 0 ? rVar.b[1] : -1;
                    bVar.f6640h = i3;
                    int min = Math.min(i3, 16384);
                    int i4 = bVar.f6635c;
                    if (i4 != min) {
                        if (min < i4) {
                            bVar.a = Math.min(bVar.a, min);
                        }
                        bVar.b = true;
                        bVar.f6635c = min;
                        int i5 = bVar.f6639g;
                        if (min < i5) {
                            if (min == 0) {
                                bVar.a();
                            } else {
                                bVar.b(i5 - min);
                            }
                        }
                    }
                }
                f(0, 0, 4, 1);
                this.f6718e.flush();
            } else {
                throw new IOException("closed");
            }
        } else {
            h.o.c.g.f("peerSettings");
            throw null;
        }
    }

    public final synchronized void e(boolean z, int i2, j.g gVar, int i3) throws IOException {
        if (!this.f6716c) {
            f(i2, i3, 0, z ? 1 : 0);
            if (i3 > 0) {
                j.i iVar = this.f6718e;
                if (gVar == null) {
                    h.o.c.g.e();
                    throw null;
                }
                iVar.j(gVar, i3);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final void f(int i2, int i3, int i4, int i5) throws IOException {
        if (f6715g.isLoggable(Level.FINE)) {
            f6715g.fine(e.f6645e.a(false, i2, i3, i4, i5));
        }
        if (!(i3 <= this.b)) {
            StringBuilder o = f.b.a.a.a.o("FRAME_SIZE_ERROR length > ");
            o.append(this.b);
            o.append(": ");
            o.append(i3);
            throw new IllegalArgumentException(o.toString().toString());
        }
        if ((((int) 2147483648L) & i2) == 0) {
            i.m0.b.I(this.f6718e, i3);
            this.f6718e.q(i4 & 255);
            this.f6718e.q(i5 & 255);
            this.f6718e.m(i2 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            return;
        }
        throw new IllegalArgumentException(f.b.a.a.a.J("reserved bit set: ", i2).toString());
    }

    public final synchronized void flush() throws IOException {
        if (!this.f6716c) {
            this.f6718e.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void g(int i2, b bVar, byte[] bArr) throws IOException {
        if (!this.f6716c) {
            if (bVar.a != -1) {
                f(0, bArr.length + 8, 7, 0);
                this.f6718e.m(i2);
                this.f6718e.m(bVar.a);
                if (!(bArr.length == 0)) {
                    this.f6718e.r(bArr);
                }
                this.f6718e.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }
}
