package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes.dex */
public final class f0 {
    public final e0.a a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4779c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4780d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4781e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f4782f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4783g;

    public f0(e0.a aVar, long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.a = aVar;
        this.b = j2;
        this.f4779c = j3;
        this.f4780d = j4;
        this.f4781e = j5;
        this.f4782f = z;
        this.f4783g = z2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return this.b == f0Var.b && this.f4779c == f0Var.f4779c && this.f4780d == f0Var.f4780d && this.f4781e == f0Var.f4781e && this.f4782f == f0Var.f4782f && this.f4783g == f0Var.f4783g && f.i.a.a.m1.h0.b(this.a, f0Var.a);
    }

    public int hashCode() {
        return ((((((((((((this.a.hashCode() + 527) * 31) + ((int) this.b)) * 31) + ((int) this.f4779c)) * 31) + ((int) this.f4780d)) * 31) + ((int) this.f4781e)) * 31) + (this.f4782f ? 1 : 0)) * 31) + (this.f4783g ? 1 : 0);
    }
}
