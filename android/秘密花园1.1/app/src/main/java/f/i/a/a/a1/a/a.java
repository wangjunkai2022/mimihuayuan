package f.i.a.a.a1.a;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.l1.a0;
import f.i.a.a.l1.h;
import f.i.a.a.l1.n;
import f.i.a.a.l1.p;
import f.i.a.a.m1.w;
import h.o.c.g;
import i.e;
import i.e0;
import i.f;
import i.g0;
import i.h0;
import i.i0;
import i.x;
import i.z;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: OkHttpDataSource.java */
/* loaded from: classes.dex */
public class a extends h implements a0 {
    public static final byte[] s;

    /* renamed from: e  reason: collision with root package name */
    public final f.a f3993e;

    /* renamed from: f  reason: collision with root package name */
    public final a0.f f3994f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f3995g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final w<String> f3996h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final e f3997i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final a0.f f3998j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public p f3999k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public h0 f4000l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public InputStream f4001m;
    public boolean n;
    public long o;
    public long p;
    public long q;
    public long r;

    static {
        f.i.a.a.a0.a("goog.exo.okhttp");
        s = new byte[4096];
    }

    public a(f.a aVar, @Nullable String str, @Nullable w<String> wVar, @Nullable e eVar, @Nullable a0.f fVar) {
        super(true);
        if (aVar != null) {
            this.f3993e = aVar;
            this.f3995g = str;
            this.f3996h = null;
            this.f3997i = eVar;
            this.f3998j = fVar;
            this.f3994f = new a0.f();
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.l1.h, f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        h0 h0Var = this.f4000l;
        return h0Var == null ? Collections.emptyMap() : h0Var.f6451g.e();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws a0.c {
        x xVar;
        this.f3999k = pVar;
        long j2 = 0;
        this.r = 0L;
        this.q = 0L;
        g(pVar);
        long j3 = pVar.f5605e;
        long j4 = pVar.f5606f;
        boolean b = pVar.b(1);
        String uri = pVar.a.toString();
        g0 g0Var = null;
        if (uri != null) {
            try {
                x.a aVar = new x.a();
                aVar.f(null, uri);
                xVar = aVar.b();
            } catch (IllegalArgumentException unused) {
                xVar = null;
            }
            if (xVar != null) {
                e0.a aVar2 = new e0.a();
                aVar2.a = xVar;
                e eVar = this.f3997i;
                if (eVar != null) {
                    String eVar2 = eVar.toString();
                    if (eVar2.length() == 0) {
                        aVar2.g("Cache-Control");
                    } else {
                        aVar2.c("Cache-Control", eVar2);
                    }
                }
                a0.f fVar = this.f3998j;
                if (fVar != null) {
                    for (Map.Entry<String, String> entry : fVar.a().entrySet()) {
                        aVar2.c(entry.getKey(), entry.getValue());
                    }
                }
                for (Map.Entry<String, String> entry2 : this.f3994f.a().entrySet()) {
                    aVar2.c(entry2.getKey(), entry2.getValue());
                }
                if (j3 != 0 || j4 != -1) {
                    String str = "bytes=" + j3 + "-";
                    if (j4 != -1) {
                        StringBuilder o = f.b.a.a.a.o(str);
                        o.append((j3 + j4) - 1);
                        str = o.toString();
                    }
                    aVar2.a("Range", str);
                }
                String str2 = this.f3995g;
                if (str2 != null) {
                    aVar2.a("User-Agent", str2);
                }
                if (!b) {
                    aVar2.a("Accept-Encoding", "identity");
                }
                byte[] bArr = pVar.f5603c;
                if (bArr != null) {
                    g0Var = g0.d(null, bArr);
                } else if (pVar.b == 2) {
                    g0Var = g0.d(null, f.i.a.a.m1.h0.f5665f);
                }
                aVar2.e(p.a(pVar.b), g0Var);
                try {
                    h0 T = this.f3993e.a(aVar2.b()).T();
                    this.f4000l = T;
                    i0 i0Var = T.f6452h;
                    c.a.a.b.g.h.t(i0Var);
                    this.f4001m = i0Var.d();
                    int i2 = T.f6449e;
                    if (!T.g()) {
                        Map<String, List<String>> e2 = T.f6451g.e();
                        i();
                        a0.e eVar3 = new a0.e(i2, T.f6448d, e2, pVar);
                        if (i2 == 416) {
                            eVar3.initCause(new n(0));
                        }
                        throw eVar3;
                    }
                    z E = i0Var.E();
                    String str3 = E != null ? E.a : "";
                    w<String> wVar = this.f3996h;
                    if (wVar != null && !wVar.a(str3)) {
                        i();
                        throw new a0.d(str3, pVar);
                    }
                    if (i2 == 200) {
                        long j5 = pVar.f5605e;
                        if (j5 != 0) {
                            j2 = j5;
                        }
                    }
                    this.o = j2;
                    long j6 = pVar.f5606f;
                    if (j6 != -1) {
                        this.p = j6;
                    } else {
                        long g2 = i0Var.g();
                        this.p = g2 != -1 ? g2 - this.o : -1L;
                    }
                    this.n = true;
                    h(pVar);
                    return this.p;
                } catch (IOException e3) {
                    StringBuilder o2 = f.b.a.a.a.o("Unable to connect to ");
                    o2.append(pVar.a);
                    throw new a0.c(o2.toString(), e3, pVar, 1);
                }
            }
            throw new a0.c("Malformed URL", pVar, 1);
        }
        g.f("$this$toHttpUrlOrNull");
        throw null;
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a0.c {
        if (this.n) {
            this.n = false;
            f();
            i();
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        h0 h0Var = this.f4000l;
        if (h0Var == null) {
            return null;
        }
        return Uri.parse(h0Var.b.b.f6779j);
    }

    public final void i() {
        h0 h0Var = this.f4000l;
        if (h0Var != null) {
            i0 i0Var = h0Var.f6452h;
            c.a.a.b.g.h.t(i0Var);
            i0Var.close();
            this.f4000l = null;
        }
        this.f4001m = null;
    }

    public final void j() throws IOException {
        if (this.q == this.o) {
            return;
        }
        while (true) {
            long j2 = this.q;
            long j3 = this.o;
            if (j2 == j3) {
                return;
            }
            int min = (int) Math.min(j3 - j2, s.length);
            InputStream inputStream = this.f4001m;
            f.i.a.a.m1.h0.g(inputStream);
            int read = inputStream.read(s, 0, min);
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (read != -1) {
                this.q += read;
                e(read);
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a0.c {
        try {
            j();
            if (i3 == 0) {
                return 0;
            }
            long j2 = this.p;
            if (j2 != -1) {
                long j3 = j2 - this.r;
                if (j3 != 0) {
                    i3 = (int) Math.min(i3, j3);
                }
                return -1;
            }
            InputStream inputStream = this.f4001m;
            f.i.a.a.m1.h0.g(inputStream);
            int read = inputStream.read(bArr, i2, i3);
            if (read == -1) {
                if (this.p == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.r += read;
            e(read);
            return read;
        } catch (IOException e2) {
            p pVar = this.f3999k;
            c.a.a.b.g.h.t(pVar);
            throw new a0.c(e2, pVar, 2);
        }
    }
}
