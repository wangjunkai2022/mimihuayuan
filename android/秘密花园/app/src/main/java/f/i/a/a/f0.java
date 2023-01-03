package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.m1.h0;

/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes.dex */
public final class f0 {
    public final e0.a a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4695c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4696d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4697e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f4698f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4699g;

    public f0(e0.a aVar, long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.a = aVar;
        this.b = j2;
        this.f4695c = j3;
        this.f4696d = j4;
        this.f4697e = j5;
        this.f4698f = z;
        this.f4699g = z2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.b == f0Var.b && this.f4695c == f0Var.f4695c && this.f4696d == f0Var.f4696d && this.f4697e == f0Var.f4697e && this.f4698f == f0Var.f4698f && this.f4699g == f0Var.f4699g && h0.b(this.a, f0Var.a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((this.a.hashCode() + 527) * 31) + ((int) this.b)) * 31) + ((int) this.f4695c)) * 31) + ((int) this.f4696d)) * 31) + ((int) this.f4697e)) * 31) + (this.f4698f ? 1 : 0)) * 31) + (this.f4699g ? 1 : 0);
    }
}
