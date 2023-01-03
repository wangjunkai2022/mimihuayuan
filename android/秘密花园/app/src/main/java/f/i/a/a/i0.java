package f.i.a.a;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.n;
import f.i.a.a.u0;

/* compiled from: PlaybackInfo.java */
/* loaded from: classes.dex */
public final class i0 {
    public static final e0.a n = new e0.a(new Object());
    public final u0 a;
    @Nullable
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final e0.a f5211c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5212d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5213e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5214f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5215g;

    /* renamed from: h  reason: collision with root package name */
    public final p0 f5216h;

    /* renamed from: i  reason: collision with root package name */
    public final n f5217i;

    /* renamed from: j  reason: collision with root package name */
    public final e0.a f5218j;

    /* renamed from: k  reason: collision with root package name */
    public volatile long f5219k;

    /* renamed from: l  reason: collision with root package name */
    public volatile long f5220l;

    /* renamed from: m  reason: collision with root package name */
    public volatile long f5221m;

    public i0(u0 u0Var, @Nullable Object obj, e0.a aVar, long j2, long j3, int i2, boolean z, p0 p0Var, n nVar, e0.a aVar2, long j4, long j5, long j6) {
        this.a = u0Var;
        this.b = obj;
        this.f5211c = aVar;
        this.f5212d = j2;
        this.f5213e = j3;
        this.f5214f = i2;
        this.f5215g = z;
        this.f5216h = p0Var;
        this.f5217i = nVar;
        this.f5218j = aVar2;
        this.f5219k = j4;
        this.f5220l = j5;
        this.f5221m = j6;
    }

    public static i0 c(long j2, n nVar) {
        return new i0(u0.a, null, n, j2, -9223372036854775807L, 1, false, p0.f4836d, nVar, n, j2, 0, j2);
    }

    @CheckResult
    public i0 a(e0.a aVar, long j2, long j3, long j4) {
        return new i0(this.a, this.b, aVar, j2, aVar.b() ? j3 : -9223372036854775807L, this.f5214f, this.f5215g, this.f5216h, this.f5217i, this.f5218j, this.f5219k, j4, j2);
    }

    @CheckResult
    public i0 b(p0 p0Var, n nVar) {
        return new i0(this.a, this.b, this.f5211c, this.f5212d, this.f5213e, this.f5214f, this.f5215g, p0Var, nVar, this.f5218j, this.f5219k, this.f5220l, this.f5221m);
    }

    public e0.a d(boolean z, u0.c cVar) {
        if (this.a.q()) {
            return n;
        }
        u0 u0Var = this.a;
        return new e0.a(this.a.m(u0Var.n(u0Var.a(z), cVar).f5802f));
    }
}
