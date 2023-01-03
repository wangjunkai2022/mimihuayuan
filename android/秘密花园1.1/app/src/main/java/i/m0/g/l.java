package i.m0.g;

import androidx.appcompat.widget.ActivityChooserView;
import com.tencent.smtt.export.external.interfaces.ISelectionInterface;
import i.m0.g.d;
import j.a0;
import j.b0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Reader.kt */
/* loaded from: classes.dex */
public final class l implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    public static final Logger f6689e;

    /* renamed from: f  reason: collision with root package name */
    public static final l f6690f = null;
    public final a a;
    public final d.a b;

    /* renamed from: c  reason: collision with root package name */
    public final j.j f6691c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6692d;

    /* compiled from: Http2Reader.kt */
    /* loaded from: classes.dex */
    public static final class a implements a0 {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f6693c;

        /* renamed from: d  reason: collision with root package name */
        public int f6694d;

        /* renamed from: e  reason: collision with root package name */
        public int f6695e;

        /* renamed from: f  reason: collision with root package name */
        public final j.j f6696f;

        public a(j.j jVar) {
            this.f6696f = jVar;
        }

        @Override // j.a0
        public long c(j.g gVar, long j2) throws IOException {
            int i2;
            int readInt;
            if (gVar != null) {
                do {
                    int i3 = this.f6694d;
                    if (i3 == 0) {
                        this.f6696f.skip(this.f6695e);
                        this.f6695e = 0;
                        if ((this.b & 4) != 0) {
                            return -1L;
                        }
                        i2 = this.f6693c;
                        int y = i.m0.b.y(this.f6696f);
                        this.f6694d = y;
                        this.a = y;
                        int readByte = this.f6696f.readByte() & 255;
                        this.b = this.f6696f.readByte() & 255;
                        l lVar = l.f6690f;
                        if (l.f6689e.isLoggable(Level.FINE)) {
                            l lVar2 = l.f6690f;
                            l.f6689e.fine(e.f6645e.a(true, this.f6693c, this.a, readByte, this.b));
                        }
                        readInt = this.f6696f.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                        this.f6693c = readInt;
                        if (readByte != 9) {
                            throw new IOException(readByte + " != TYPE_CONTINUATION");
                        }
                    } else {
                        long c2 = this.f6696f.c(gVar, Math.min(j2, i3));
                        if (c2 == -1) {
                            return -1L;
                        }
                        this.f6694d -= (int) c2;
                        return c2;
                    }
                } while (readInt == i2);
                throw new IOException("TYPE_CONTINUATION streamId changed");
            }
            h.o.c.g.f("sink");
            throw null;
        }

        @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // j.a0
        public b0 i() {
            return this.f6696f.i();
        }
    }

    /* compiled from: Http2Reader.kt */
    /* loaded from: classes.dex */
    public interface b {
        void a();

        void b(boolean z, r rVar);

        void c(boolean z, int i2, j.j jVar, int i3) throws IOException;

        void d(boolean z, int i2, int i3);

        void e(int i2, int i3, int i4, boolean z);

        void f(int i2, i.m0.g.b bVar);

        void g(boolean z, int i2, int i3, List<c> list);

        void h(int i2, long j2);

        void i(int i2, int i3, List<c> list) throws IOException;

        void j(int i2, i.m0.g.b bVar, j.k kVar);
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        h.o.c.g.b(logger, "Logger.getLogger(Http2::class.java.name)");
        f6689e = logger;
    }

    public l(j.j jVar, boolean z) {
        this.f6691c = jVar;
        this.f6692d = z;
        a aVar = new a(jVar);
        this.a = aVar;
        this.b = new d.a(aVar, 4096, 0, 4);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6691c.close();
    }

    public final boolean d(boolean z, b bVar) throws IOException {
        int readInt;
        try {
            this.f6691c.x(9L);
            int y = i.m0.b.y(this.f6691c);
            if (y <= 16384) {
                int readByte = this.f6691c.readByte() & 255;
                if (z && readByte != 4) {
                    throw new IOException(f.b.a.a.a.J("Expected a SETTINGS frame but was ", readByte));
                }
                int readByte2 = this.f6691c.readByte() & 255;
                int readInt2 = this.f6691c.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                if (f6689e.isLoggable(Level.FINE)) {
                    f6689e.fine(e.f6645e.a(true, readInt2, y, readByte, readByte2));
                }
                i.m0.g.b bVar2 = null;
                switch (readByte) {
                    case 0:
                        if (readInt2 != 0) {
                            boolean z2 = (readByte2 & 1) != 0;
                            if (!((readByte2 & 32) != 0)) {
                                int i2 = readByte2 & 8;
                                int readByte3 = i2 != 0 ? this.f6691c.readByte() & 255 : 0;
                                if (i2 != 0) {
                                    y--;
                                }
                                if (readByte3 <= y) {
                                    bVar.c(z2, readInt2, this.f6691c, y - readByte3);
                                    this.f6691c.skip(readByte3);
                                    break;
                                } else {
                                    throw new IOException("PROTOCOL_ERROR padding " + readByte3 + " > remaining length " + y);
                                }
                            } else {
                                throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                            }
                        } else {
                            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                        }
                    case 1:
                        if (readInt2 != 0) {
                            boolean z3 = (readByte2 & 1) != 0;
                            int i3 = readByte2 & 8;
                            int readByte4 = i3 != 0 ? this.f6691c.readByte() & 255 : 0;
                            if ((readByte2 & 32) != 0) {
                                g(bVar, readInt2);
                                y -= 5;
                            }
                            if (i3 != 0) {
                                y--;
                            }
                            if (readByte4 <= y) {
                                bVar.g(z3, readInt2, -1, f(y - readByte4, readByte4, readByte2, readInt2));
                                break;
                            } else {
                                throw new IOException("PROTOCOL_ERROR padding " + readByte4 + " > remaining length " + y);
                            }
                        } else {
                            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                        }
                    case 2:
                        if (y == 5) {
                            if (readInt2 != 0) {
                                g(bVar, readInt2);
                                break;
                            } else {
                                throw new IOException("TYPE_PRIORITY streamId == 0");
                            }
                        } else {
                            throw new IOException(f.b.a.a.a.K("TYPE_PRIORITY length: ", y, " != 5"));
                        }
                    case 3:
                        if (y == 4) {
                            if (readInt2 != 0) {
                                int readInt3 = this.f6691c.readInt();
                                i.m0.g.b[] values = i.m0.g.b.values();
                                int length = values.length;
                                int i4 = 0;
                                while (true) {
                                    if (i4 < length) {
                                        i.m0.g.b bVar3 = values[i4];
                                        if (bVar3.a == readInt3) {
                                            bVar2 = bVar3;
                                        } else {
                                            i4++;
                                        }
                                    }
                                }
                                if (bVar2 != null) {
                                    bVar.f(readInt2, bVar2);
                                    break;
                                } else {
                                    throw new IOException(f.b.a.a.a.J("TYPE_RST_STREAM unexpected error code: ", readInt3));
                                }
                            } else {
                                throw new IOException("TYPE_RST_STREAM streamId == 0");
                            }
                        } else {
                            throw new IOException(f.b.a.a.a.K("TYPE_RST_STREAM length: ", y, " != 4"));
                        }
                    case 4:
                        if (readInt2 == 0) {
                            if ((readByte2 & 1) != 0) {
                                if (y == 0) {
                                    bVar.a();
                                    break;
                                } else {
                                    throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
                                }
                            } else if (y % 6 == 0) {
                                r rVar = new r();
                                h.p.a b2 = h.p.d.b(h.p.d.c(0, y), 6);
                                int i5 = b2.a;
                                int i6 = b2.b;
                                int i7 = b2.f6334c;
                                if (i7 < 0 ? i5 >= i6 : i5 <= i6) {
                                    while (true) {
                                        int readShort = this.f6691c.readShort() & ISelectionInterface.HELD_NOTHING;
                                        readInt = this.f6691c.readInt();
                                        if (readShort != 2) {
                                            if (readShort == 3) {
                                                readShort = 4;
                                            } else if (readShort == 4) {
                                                readShort = 7;
                                                if (readInt < 0) {
                                                    throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                                }
                                            } else if (readShort == 5 && (readInt < 16384 || readInt > 16777215)) {
                                            }
                                        } else if (readInt != 0 && readInt != 1) {
                                            throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                        }
                                        rVar.b(readShort, readInt);
                                        if (i5 != i6) {
                                            i5 += i7;
                                        }
                                    }
                                    throw new IOException(f.b.a.a.a.J("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", readInt));
                                }
                                bVar.b(false, rVar);
                                break;
                            } else {
                                throw new IOException(f.b.a.a.a.J("TYPE_SETTINGS length % 6 != 0: ", y));
                            }
                        } else {
                            throw new IOException("TYPE_SETTINGS streamId != 0");
                        }
                    case 5:
                        if (readInt2 != 0) {
                            int i8 = readByte2 & 8;
                            int readByte5 = i8 != 0 ? this.f6691c.readByte() & 255 : 0;
                            int readInt4 = this.f6691c.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                            int i9 = y - 4;
                            if (i8 != 0) {
                                i9--;
                            }
                            if (readByte5 <= i9) {
                                bVar.i(readInt2, readInt4, f(i9 - readByte5, readByte5, readByte2, readInt2));
                                break;
                            } else {
                                throw new IOException("PROTOCOL_ERROR padding " + readByte5 + " > remaining length " + i9);
                            }
                        } else {
                            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                        }
                    case 6:
                        if (y == 8) {
                            if (readInt2 == 0) {
                                bVar.d((readByte2 & 1) != 0, this.f6691c.readInt(), this.f6691c.readInt());
                                break;
                            } else {
                                throw new IOException("TYPE_PING streamId != 0");
                            }
                        } else {
                            throw new IOException(f.b.a.a.a.J("TYPE_PING length != 8: ", y));
                        }
                    case 7:
                        if (y >= 8) {
                            if (readInt2 == 0) {
                                int readInt5 = this.f6691c.readInt();
                                int readInt6 = this.f6691c.readInt();
                                int i10 = y - 8;
                                i.m0.g.b[] values2 = i.m0.g.b.values();
                                int length2 = values2.length;
                                int i11 = 0;
                                while (true) {
                                    if (i11 < length2) {
                                        i.m0.g.b bVar4 = values2[i11];
                                        if (bVar4.a == readInt6) {
                                            bVar2 = bVar4;
                                        } else {
                                            i11++;
                                        }
                                    }
                                }
                                if (bVar2 != null) {
                                    j.k kVar = j.k.f6978d;
                                    if (i10 > 0) {
                                        kVar = this.f6691c.b(i10);
                                    }
                                    bVar.j(readInt5, bVar2, kVar);
                                    break;
                                } else {
                                    throw new IOException(f.b.a.a.a.J("TYPE_GOAWAY unexpected error code: ", readInt6));
                                }
                            } else {
                                throw new IOException("TYPE_GOAWAY streamId != 0");
                            }
                        } else {
                            throw new IOException(f.b.a.a.a.J("TYPE_GOAWAY length < 8: ", y));
                        }
                    case 8:
                        if (y == 4) {
                            long readInt7 = 2147483647L & this.f6691c.readInt();
                            if (readInt7 != 0) {
                                bVar.h(readInt2, readInt7);
                                break;
                            } else {
                                throw new IOException("windowSizeIncrement was 0");
                            }
                        } else {
                            throw new IOException(f.b.a.a.a.J("TYPE_WINDOW_UPDATE length !=4: ", y));
                        }
                    default:
                        this.f6691c.skip(y);
                        break;
                }
                return true;
            }
            throw new IOException(f.b.a.a.a.J("FRAME_SIZE_ERROR: ", y));
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void e(b bVar) throws IOException {
        if (this.f6692d) {
            if (!d(true, bVar)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        j.k b2 = this.f6691c.b(e.a.b());
        if (f6689e.isLoggable(Level.FINE)) {
            Logger logger = f6689e;
            StringBuilder o = f.b.a.a.a.o("<< CONNECTION ");
            o.append(b2.c());
            logger.fine(i.m0.b.l(o.toString(), new Object[0]));
        }
        if (!h.o.c.g.a(e.a, b2)) {
            StringBuilder o2 = f.b.a.a.a.o("Expected a connection header but was ");
            if (b2 != null) {
                o2.append(j.c0.a.r(b2));
                throw new IOException(o2.toString());
            }
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x004e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<i.m0.g.c> f(int r2, int r3, int r4, int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.g.l.f(int, int, int, int):java.util.List");
    }

    public final void g(b bVar, int i2) throws IOException {
        int readInt = this.f6691c.readInt();
        bVar.e(i2, readInt & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, i.m0.b.a(this.f6691c.readByte(), 255) + 1, (readInt & ((int) 2147483648L)) != 0);
    }
}
