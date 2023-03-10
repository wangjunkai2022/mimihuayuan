package f.i.a.a.b1.u;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
/* compiled from: Track.java */
/* loaded from: classes.dex */
public final class j {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4296c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4297d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4298e;

    /* renamed from: f  reason: collision with root package name */
    public final b0 f4299f;

    /* renamed from: g  reason: collision with root package name */
    public final int f4300g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f4301h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f4302i;

    /* renamed from: j  reason: collision with root package name */
    public final int f4303j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final k[] f4304k;

    public j(int i2, int i3, long j2, long j3, long j4, b0 b0Var, int i4, @Nullable k[] kVarArr, int i5, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.a = i2;
        this.b = i3;
        this.f4296c = j2;
        this.f4297d = j3;
        this.f4298e = j4;
        this.f4299f = b0Var;
        this.f4300g = i4;
        this.f4304k = kVarArr;
        this.f4303j = i5;
        this.f4301h = jArr;
        this.f4302i = jArr2;
    }

    @Nullable
    public k a(int i2) {
        k[] kVarArr = this.f4304k;
        if (kVarArr == null) {
            return null;
        }
        return kVarArr[i2];
    }
}
