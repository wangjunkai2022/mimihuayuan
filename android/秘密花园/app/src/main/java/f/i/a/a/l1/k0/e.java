package f.i.a.a.l1.k0;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.l1.h0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.k;
import f.i.a.a.l1.k0.b;
import f.i.a.a.l1.m;
import f.i.a.a.l1.n;
import f.i.a.a.l1.p;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: CacheDataSource.java */
/* loaded from: classes.dex */
public final class e implements m {
    public final b a;
    public final m b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final m f5548c;

    /* renamed from: d  reason: collision with root package name */
    public final m f5549d;

    /* renamed from: e  reason: collision with root package name */
    public final j f5550e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final a f5551f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5552g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f5553h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f5554i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public m f5555j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5556k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public Uri f5557l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public Uri f5558m;
    public int n;
    public int o;
    @Nullable
    public String p;
    public long q;
    public long r;
    @Nullable
    public k s;
    public boolean t;
    public boolean u;
    public long v;
    public long w;

    /* compiled from: CacheDataSource.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i2);

        void b(long j2, long j3);
    }

    public e(b bVar, m mVar, m mVar2, @Nullable k kVar, int i2, @Nullable a aVar, @Nullable j jVar) {
        this.a = bVar;
        this.b = mVar2;
        this.f5550e = jVar == null ? l.a : jVar;
        boolean z = false;
        this.f5552g = (i2 & 1) != 0;
        this.f5553h = (i2 & 2) != 0;
        this.f5554i = (i2 & 4) != 0 ? true : z;
        this.f5549d = mVar;
        if (kVar != null) {
            this.f5548c = new h0(mVar, kVar);
        } else {
            this.f5548c = null;
        }
        this.f5551f = aVar;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        if (!g()) {
            return this.f5549d.a();
        }
        return Collections.emptyMap();
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws IOException {
        int i2;
        a aVar;
        try {
            String a2 = this.f5550e.a(pVar);
            this.p = a2;
            Uri uri = pVar.a;
            this.f5557l = uri;
            r rVar = (r) this.a.c(a2);
            Uri uri2 = null;
            String str = rVar.b.containsKey("exo_redir") ? new String(rVar.b.get("exo_redir"), Charset.forName("UTF-8")) : null;
            if (str != null) {
                uri2 = Uri.parse(str);
            }
            if (uri2 != null) {
                uri = uri2;
            }
            this.f5558m = uri;
            this.n = pVar.b;
            this.o = pVar.f5608h;
            this.q = pVar.f5605e;
            boolean z = true;
            if (!this.f5553h || !this.t) {
                i2 = (!this.f5554i || pVar.f5606f != -1) ? -1 : 1;
            } else {
                i2 = 0;
            }
            if (i2 == -1) {
                z = false;
            }
            this.u = z;
            if (z && (aVar = this.f5551f) != null) {
                aVar.a(i2);
            }
            if (pVar.f5606f == -1 && !this.u) {
                long a3 = o.a(this.a.c(this.p));
                this.r = a3;
                if (a3 != -1) {
                    long j2 = a3 - pVar.f5605e;
                    this.r = j2;
                    if (j2 <= 0) {
                        throw new n(0);
                    }
                }
                h(false);
                return this.r;
            }
            this.r = pVar.f5606f;
            h(false);
            return this.r;
        } catch (IOException e2) {
            f(e2);
            throw e2;
        }
    }

    @Override // f.i.a.a.l1.m
    public void c(i0 i0Var) {
        this.b.c(i0Var);
        this.f5549d.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        this.f5557l = null;
        this.f5558m = null;
        this.n = 1;
        a aVar = this.f5551f;
        if (aVar != null && this.v > 0) {
            aVar.b(this.a.f(), this.v);
            this.v = 0;
        }
        try {
            e();
        } catch (IOException e2) {
            f(e2);
            throw e2;
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        return this.f5558m;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [f.i.a.a.l1.k0.k, f.i.a.a.l1.m] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void e() throws java.io.IOException {
        /*
            r4 = this;
            f.i.a.a.l1.m r0 = r4.f5555j
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r1 = 0
            r2 = 0
            r0.close()     // Catch: all -> 0x001a
            r4.f5555j = r2
            r4.f5556k = r1
            f.i.a.a.l1.k0.k r0 = r4.s
            if (r0 == 0) goto L_0x0019
            f.i.a.a.l1.k0.b r1 = r4.a
            r1.h(r0)
            r4.s = r2
        L_0x0019:
            return
        L_0x001a:
            r0 = move-exception
            r4.f5555j = r2
            r4.f5556k = r1
            f.i.a.a.l1.k0.k r1 = r4.s
            if (r1 == 0) goto L_0x002a
            f.i.a.a.l1.k0.b r3 = r4.a
            r3.h(r1)
            r4.s = r2
        L_0x002a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.e.e():void");
    }

    public final void f(IOException iOException) {
        if (g() || (iOException instanceof b.a)) {
            this.t = true;
        }
    }

    public final boolean g() {
        return this.f5555j == this.b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x013b  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0177  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0179  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x017c  */
    /* JADX WARNING: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void h(boolean r23) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 388
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.e.h(boolean):void");
    }

    public final void i() throws IOException {
        this.r = 0;
        if (this.f5555j == this.f5548c) {
            q qVar = new q();
            q.a(qVar, this.q);
            this.a.d(this.p, qVar);
        }
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 == 0) {
            return 0;
        }
        if (this.r == 0) {
            return -1;
        }
        try {
            if (this.q >= this.w) {
                h(true);
            }
            int read = this.f5555j.read(bArr, i2, i3);
            if (read != -1) {
                if (g()) {
                    this.v += (long) read;
                }
                long j2 = (long) read;
                this.q += j2;
                if (this.r != -1) {
                    this.r -= j2;
                }
            } else if (this.f5556k) {
                i();
            } else {
                if (this.r <= 0) {
                    if (this.r == -1) {
                    }
                }
                e();
                h(false);
                return read(bArr, i2, i3);
            }
            return read;
        } catch (IOException e2) {
            if (!this.f5556k || !l.e(e2)) {
                f(e2);
                throw e2;
            }
            i();
            return -1;
        }
    }
}
