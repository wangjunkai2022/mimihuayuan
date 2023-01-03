package f.i.a.a.b1.u;

import androidx.annotation.Nullable;
import f.i.a.a.b0;

/* compiled from: Track.java */
/* loaded from: classes.dex */
public final class j {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4212c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4213d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4214e;

    /* renamed from: f  reason: collision with root package name */
    public final b0 f4215f;

    /* renamed from: g  reason: collision with root package name */
    public final int f4216g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f4217h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f4218i;

    /* renamed from: j  reason: collision with root package name */
    public final int f4219j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final k[] f4220k;

    public j(int i2, int i3, long j2, long j3, long j4, b0 b0Var, int i4, @Nullable k[] kVarArr, int i5, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.a = i2;
        this.b = i3;
        this.f4212c = j2;
        this.f4213d = j3;
        this.f4214e = j4;
        this.f4215f = b0Var;
        this.f4216g = i4;
        this.f4220k = kVarArr;
        this.f4219j = i5;
        this.f4217h = jArr;
        this.f4218i = jArr2;
    }

    @Nullable
    public k a(int i2) {
        k[] kVarArr = this.f4220k;
        if (kVarArr == null) {
            return null;
        }
        return kVarArr[i2];
    }
}
