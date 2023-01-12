package f.i.a.a.l1.k0;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.l1.h0;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.k0.b;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: CacheDataSource.java */
/* loaded from: classes.dex */
public final class e implements f.i.a.a.l1.m {
    public final b a;
    public final f.i.a.a.l1.m b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.m f5623c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.l1.m f5624d;

    /* renamed from: e  reason: collision with root package name */
    public final j f5625e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final a f5626f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5627g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f5628h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f5629i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.l1.m f5630j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5631k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public Uri f5632l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public Uri f5633m;
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

    public e(b bVar, f.i.a.a.l1.m mVar, f.i.a.a.l1.m mVar2, @Nullable f.i.a.a.l1.k kVar, int i2, @Nullable a aVar, @Nullable j jVar) {
        this.a = bVar;
        this.b = mVar2;
        this.f5625e = jVar == null ? l.a : jVar;
        this.f5627g = (i2 & 1) != 0;
        this.f5628h = (i2 & 2) != 0;
        this.f5629i = (i2 & 4) != 0;
        this.f5624d = mVar;
        if (kVar != null) {
            this.f5623c = new h0(mVar, kVar);
        } else {
            this.f5623c = null;
        }
        this.f5626f = aVar;
    }

    @Override // f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        if (!g()) {
            return this.f5624d.a();
        }
        return Collections.emptyMap();
    }

    @Override // f.i.a.a.l1.m
    public long b(f.i.a.a.l1.p pVar) throws IOException {
        int i2;
        a aVar;
        try {
            String a2 = this.f5625e.a(pVar);
            this.p = a2;
            Uri uri = pVar.a;
            this.f5632l = uri;
            r rVar = (r) this.a.c(a2);
            Uri uri2 = null;
            String str = rVar.b.containsKey("exo_redir") ? new String(rVar.b.get("exo_redir"), Charset.forName("UTF-8")) : null;
            if (str != null) {
                uri2 = Uri.parse(str);
            }
            if (uri2 != null) {
                uri = uri2;
            }
            this.f5633m = uri;
            this.n = pVar.b;
            this.o = pVar.f5683h;
            this.q = pVar.f5680e;
            boolean z = true;
            if (this.f5628h && this.t) {
                i2 = 0;
            } else {
                i2 = (this.f5629i && pVar.f5681f == -1) ? 1 : -1;
            }
            if (i2 == -1) {
                z = false;
            }
            this.u = z;
            if (z && (aVar = this.f5626f) != null) {
                aVar.a(i2);
            }
            if (pVar.f5681f == -1 && !this.u) {
                long a3 = o.a(this.a.c(this.p));
                this.r = a3;
                if (a3 != -1) {
                    long j2 = a3 - pVar.f5680e;
                    this.r = j2;
                    if (j2 <= 0) {
                        throw new f.i.a.a.l1.n(0);
                    }
                }
                h(false);
                return this.r;
            }
            this.r = pVar.f5681f;
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
        this.f5624d.c(i0Var);
    }

    @Override // f.i.a.a.l1.m
    public void close() throws IOException {
        this.f5632l = null;
        this.f5633m = null;
        this.n = 1;
        a aVar = this.f5626f;
        if (aVar != null && this.v > 0) {
            aVar.b(this.a.f(), this.v);
            this.v = 0L;
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
        return this.f5633m;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [f.i.a.a.l1.k0.k, f.i.a.a.l1.m] */
    public final void e() throws IOException {
        f.i.a.a.l1.m mVar = this.f5630j;
        if (mVar == null) {
            return;
        }
        try {
            mVar.close();
        } finally {
            this.f5630j = null;
            this.f5631k = false;
            k kVar = this.s;
            if (kVar != null) {
                this.a.h(kVar);
                this.s = null;
            }
        }
    }

    public final void f(IOException iOException) {
        if (g() || (iOException instanceof b.a)) {
            this.t = true;
        }
    }

    public final boolean g() {
        return this.f5630j == this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(boolean r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.e.h(boolean):void");
    }

    public final void i() throws IOException {
        this.r = 0L;
        if (this.f5630j == this.f5623c) {
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
            int read = this.f5630j.read(bArr, i2, i3);
            if (read != -1) {
                if (g()) {
                    this.v += read;
                }
                long j2 = read;
                this.q += j2;
                if (this.r != -1) {
                    this.r -= j2;
                }
            } else if (this.f5631k) {
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
            if (this.f5631k && l.e(e2)) {
                i();
                return -1;
            }
            f(e2);
            throw e2;
        }
    }
}
