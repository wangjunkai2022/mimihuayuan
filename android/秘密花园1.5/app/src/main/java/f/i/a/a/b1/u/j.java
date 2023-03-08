package f.i.a.a.b1.u;

import androidx.annotation.Nullable;
import f.i.a.a.b0;

/* compiled from: Track.java */
/* loaded from: classes.dex */
public final class j {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4287c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4288d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4289e;

    /* renamed from: f  reason: collision with root package name */
    public final b0 f4290f;

    /* renamed from: g  reason: collision with root package name */
    public final int f4291g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f4292h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f4293i;

    /* renamed from: j  reason: collision with root package name */
    public final int f4294j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final k[] f4295k;

    public j(int i2, int i3, long j2, long j3, long j4, b0 b0Var, int i4, @Nullable k[] kVarArr, int i5, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.a = i2;
        this.b = i3;
        this.f4287c = j2;
        this.f4288d = j3;
        this.f4289e = j4;
        this.f4290f = b0Var;
        this.f4291g = i4;
        this.f4295k = kVarArr;
        this.f4294j = i5;
        this.f4292h = jArr;
        this.f4293i = jArr2;
    }

    @Nullable
    public k a(int i2) {
        k[] kVarArr = this.f4295k;
        if (kVarArr == null) {
            return null;
        }
        return kVarArr[i2];
    }
}
