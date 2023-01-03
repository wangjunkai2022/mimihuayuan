package f.i.a.a;

import androidx.annotation.Nullable;

/* compiled from: PlaybackParameters.java */
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: e  reason: collision with root package name */
    public static final j0 f5383e = new j0(1.0f, 1.0f, false);
    public final float a;
    public final float b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5384c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5385d;

    public j0(float f2, float f3, boolean z) {
        c.a.a.b.g.h.m(f2 > 0.0f);
        c.a.a.b.g.h.m(f3 > 0.0f);
        this.a = f2;
        this.b = f3;
        this.f5384c = z;
        this.f5385d = Math.round(f2 * 1000.0f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j0.class != obj.getClass()) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.a == j0Var.a && this.b == j0Var.b && this.f5384c == j0Var.f5384c;
    }

    public int hashCode() {
        return ((Float.floatToRawIntBits(this.b) + ((Float.floatToRawIntBits(this.a) + 527) * 31)) * 31) + (this.f5384c ? 1 : 0);
    }
}
