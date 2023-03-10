package f.i.a.a.h1.u0;

import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.h1.o0;
import f.i.a.a.l1.i0;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: HlsChunkSource.java */
/* loaded from: classes.dex */
public class g {
    public final i a;
    public final f.i.a.a.l1.m b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.m f5112c;

    /* renamed from: d  reason: collision with root package name */
    public final q f5113d;

    /* renamed from: e  reason: collision with root package name */
    public final Uri[] f5114e;

    /* renamed from: f  reason: collision with root package name */
    public final b0[] f5115f;

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.h1.u0.t.j f5116g;

    /* renamed from: h  reason: collision with root package name */
    public final o0 f5117h;

    /* renamed from: i  reason: collision with root package name */
    public final List<b0> f5118i;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5120k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f5121l;

    /* renamed from: m  reason: collision with root package name */
    public IOException f5122m;
    public Uri n;
    public boolean o;
    public f.i.a.a.j1.j p;
    public boolean r;

    /* renamed from: j  reason: collision with root package name */
    public final b f5119j = new b();
    public long q = -9223372036854775807L;

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class a extends f.i.a.a.h1.s0.j {

        /* renamed from: k  reason: collision with root package name */
        public byte[] f5123k;

        public a(f.i.a.a.l1.m mVar, f.i.a.a.l1.p pVar, b0 b0Var, int i2, Object obj, byte[] bArr) {
            super(mVar, pVar, 3, b0Var, i2, obj, bArr);
        }
    }

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class b extends LinkedHashMap<Uri, byte[]> {
        public b() {
            super(8, 1.0f, false);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        /* renamed from: a */
        public byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        /* renamed from: b */
        public byte[] put(Uri uri, byte[] bArr) {
            if (bArr != null) {
                return (byte[]) super.put(uri, bArr);
            }
            throw null;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class c {
        public f.i.a.a.h1.s0.d a = null;
        public boolean b = false;

        /* renamed from: c  reason: collision with root package name */
        public Uri f5124c = null;
    }

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class d extends f.i.a.a.h1.s0.b {
        public d(f.i.a.a.h1.u0.t.f fVar, long j2, int i2) {
            super(i2, fVar.o.size() - 1);
        }
    }

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes.dex */
    public static final class e extends f.i.a.a.j1.c {

        /* renamed from: g  reason: collision with root package name */
        public int f5125g;

        public e(o0 o0Var, int[] iArr) {
            super(o0Var, iArr);
            this.f5125g = g(o0Var.b[0]);
        }

        @Override // f.i.a.a.j1.c, f.i.a.a.j1.j
        public void h(long j2, long j3, long j4, List<? extends f.i.a.a.h1.s0.l> list, f.i.a.a.h1.s0.m[] mVarArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (s(this.f5125g, elapsedRealtime)) {
                for (int i2 = this.b - 1; i2 >= 0; i2--) {
                    if (!s(i2, elapsedRealtime)) {
                        this.f5125g = i2;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // f.i.a.a.j1.j
        public int l() {
            return 0;
        }

        @Override // f.i.a.a.j1.j
        public int m() {
            return this.f5125g;
        }

        @Override // f.i.a.a.j1.j
        public Object p() {
            return null;
        }
    }

    public g(i iVar, f.i.a.a.h1.u0.t.j jVar, Uri[] uriArr, b0[] b0VarArr, h hVar, @Nullable i0 i0Var, q qVar, List<b0> list) {
        this.a = iVar;
        this.f5116g = jVar;
        this.f5114e = uriArr;
        this.f5115f = b0VarArr;
        this.f5113d = qVar;
        this.f5118i = list;
        f.i.a.a.l1.m a2 = hVar.a(1);
        this.b = a2;
        if (i0Var != null) {
            a2.c(i0Var);
        }
        this.f5112c = hVar.a(3);
        this.f5117h = new o0(b0VarArr);
        int[] iArr = new int[uriArr.length];
        for (int i2 = 0; i2 < uriArr.length; i2++) {
            iArr[i2] = i2;
        }
        this.p = new e(this.f5117h, iArr);
    }

    public f.i.a.a.h1.s0.m[] a(@Nullable k kVar, long j2) {
        int a2 = kVar == null ? -1 : this.f5117h.a(kVar.f4951c);
        int length = this.p.length();
        f.i.a.a.h1.s0.m[] mVarArr = new f.i.a.a.h1.s0.m[length];
        for (int i2 = 0; i2 < length; i2++) {
            int e2 = this.p.e(i2);
            Uri uri = this.f5114e[e2];
            if (!((f.i.a.a.h1.u0.t.c) this.f5116g).e(uri)) {
                mVarArr[i2] = f.i.a.a.h1.s0.m.a;
            } else {
                f.i.a.a.h1.u0.t.f d2 = ((f.i.a.a.h1.u0.t.c) this.f5116g).d(uri, false);
                long j3 = d2.f5200f - ((f.i.a.a.h1.u0.t.c) this.f5116g).p;
                long b2 = b(kVar, e2 != a2, d2, j3, j2);
                long j4 = d2.f5203i;
                if (b2 < j4) {
                    mVarArr[i2] = f.i.a.a.h1.s0.m.a;
                } else {
                    mVarArr[i2] = new d(d2, j3, (int) (b2 - j4));
                }
            }
        }
        return mVarArr;
    }

    public final long b(@Nullable k kVar, boolean z, f.i.a.a.h1.u0.t.f fVar, long j2, long j3) {
        long d2;
        long j4;
        if (kVar != null && !z) {
            return kVar.c();
        }
        long j5 = fVar.p + j2;
        if (kVar != null && !this.o) {
            j3 = kVar.f4954f;
        }
        if (!fVar.f5206l && j3 >= j5) {
            d2 = fVar.f5203i;
            j4 = fVar.o.size();
        } else {
            d2 = h0.d(fVar.o, Long.valueOf(j3 - j2), true, !((f.i.a.a.h1.u0.t.c) this.f5116g).o || kVar == null);
            j4 = fVar.f5203i;
        }
        return d2 + j4;
    }

    @Nullable
    public final f.i.a.a.h1.s0.d c(@Nullable Uri uri, int i2) {
        if (uri == null) {
            return null;
        }
        if (this.f5119j.containsKey(uri)) {
            b bVar = this.f5119j;
            bVar.put(uri, bVar.remove(uri));
            return null;
        }
        return new a(this.f5112c, new f.i.a.a.l1.p(uri, 0L, -1L, null, 1), this.f5115f[i2], this.p.l(), this.p.p(), this.f5121l);
    }
}
