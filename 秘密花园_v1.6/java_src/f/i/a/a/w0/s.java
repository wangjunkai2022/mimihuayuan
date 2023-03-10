package f.i.a.a.w0;

import androidx.annotation.Nullable;
/* compiled from: AuxEffectInfo.java */
/* loaded from: classes.dex */
public final class s {
    public final int a;
    public final float b;

    public s(int i2, float f2) {
        this.a = i2;
        this.b = f2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return this.a == sVar.a && Float.compare(sVar.b, this.b) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.b) + ((527 + this.a) * 31);
    }
}
