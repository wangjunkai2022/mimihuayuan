package f.i.a.a;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.u0;
/* compiled from: PlaybackInfo.java */
/* loaded from: classes.dex */
public final class i0 {
    public static final e0.a n = new e0.a(new Object());
    public final u0 a;
    @Nullable
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final e0.a f5295c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5296d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5297e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5298f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5299g;

    /* renamed from: h  reason: collision with root package name */
    public final f.i.a.a.h1.p0 f5300h;

    /* renamed from: i  reason: collision with root package name */
    public final f.i.a.a.j1.n f5301i;

    /* renamed from: j  reason: collision with root package name */
    public final e0.a f5302j;

    /* renamed from: k  reason: collision with root package name */
    public volatile long f5303k;

    /* renamed from: l  reason: collision with root package name */
    public volatile long f5304l;

    /* renamed from: m  reason: collision with root package name */
    public volatile long f5305m;

    public i0(u0 u0Var, @Nullable Object obj, e0.a aVar, long j2, long j3, int i2, boolean z, f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.n nVar, e0.a aVar2, long j4, long j5, long j6) {
        this.a = u0Var;
        this.b = obj;
        this.f5295c = aVar;
        this.f5296d = j2;
        this.f5297e = j3;
        this.f5298f = i2;
        this.f5299g = z;
        this.f5300h = p0Var;
        this.f5301i = nVar;
        this.f5302j = aVar2;
        this.f5303k = j4;
        this.f5304l = j5;
        this.f5305m = j6;
    }

    public static i0 c(long j2, f.i.a.a.j1.n nVar) {
        return new i0(u0.a, null, n, j2, -9223372036854775807L, 1, false, f.i.a.a.h1.p0.f4920d, nVar, n, j2, 0L, j2);
    }

    @CheckResult
    public i0 a(e0.a aVar, long j2, long j3, long j4) {
        return new i0(this.a, this.b, aVar, j2, aVar.b() ? j3 : -9223372036854775807L, this.f5298f, this.f5299g, this.f5300h, this.f5301i, this.f5302j, this.f5303k, j4, j2);
    }

    @CheckResult
    public i0 b(f.i.a.a.h1.p0 p0Var, f.i.a.a.j1.n nVar) {
        return new i0(this.a, this.b, this.f5295c, this.f5296d, this.f5297e, this.f5298f, this.f5299g, p0Var, nVar, this.f5302j, this.f5303k, this.f5304l, this.f5305m);
    }

    public e0.a d(boolean z, u0.c cVar) {
        if (this.a.q()) {
            return n;
        }
        u0 u0Var = this.a;
        return new e0.a(this.a.m(u0Var.n(u0Var.a(z), cVar).f5886f));
    }
}
