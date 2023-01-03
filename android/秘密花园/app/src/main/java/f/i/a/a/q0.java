package f.i.a.a;

import androidx.annotation.Nullable;

/* compiled from: RendererConfiguration.java */
/* loaded from: classes.dex */
public final class q0 {
    public static final q0 b = new q0(0);
    public final int a;

    public q0(int i2) {
        this.a = i2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && q0.class == obj.getClass() && this.a == ((q0) obj).a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a;
    }
}
