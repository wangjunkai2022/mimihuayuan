package f.i.a.a;

import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;

/* compiled from: MediaPeriodInfo.java */
/* loaded from: classes.dex */
public final class f0 {
    public final e0.a a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4770c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4771d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4772e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f4773f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4774g;

    public f0(e0.a aVar, long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.a = aVar;
        this.b = j2;
        this.f4770c = j3;
        this.f4771d = j4;
        this.f4772e = j5;
        this.f4773f = z;
        this.f4774g = z2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return this.b == f0Var.b && this.f4770c == f0Var.f4770c && this.f4771d == f0Var.f4771d && this.f4772e == f0Var.f4772e && this.f4773f == f0Var.f4773f && this.f4774g == f0Var.f4774g && f.i.a.a.m1.h0.b(this.a, f0Var.a);
    }

    public int hashCode() {
        return ((((((((((((this.a.hashCode() + 527) * 31) + ((int) this.b)) * 31) + ((int) this.f4770c)) * 31) + ((int) this.f4771d)) * 31) + ((int) this.f4772e)) * 31) + (this.f4773f ? 1 : 0)) * 31) + (this.f4774g ? 1 : 0);
    }
}
