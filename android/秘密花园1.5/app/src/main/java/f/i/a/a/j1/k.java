package f.i.a.a.j1;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: TrackSelectionArray.java */
/* loaded from: classes.dex */
public final class k {
    public final int a;
    public final j[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f5521c;

    public k(j... jVarArr) {
        this.b = jVarArr;
        this.a = jVarArr.length;
    }

    public j[] a() {
        return (j[]) this.b.clone();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((k) obj).b);
    }

    public int hashCode() {
        if (this.f5521c == 0) {
            this.f5521c = 527 + Arrays.hashCode(this.b);
        }
        return this.f5521c;
    }
}
