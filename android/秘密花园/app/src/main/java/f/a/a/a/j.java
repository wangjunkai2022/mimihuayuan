package f.a.a.a;

import androidx.annotation.NonNull;
import java.lang.Comparable;
import java.util.Objects;

/* compiled from: Range.java */
/* loaded from: classes.dex */
public final class j<T extends Comparable<? super T>> {
    public final T a;
    public final T b;

    public j(@NonNull T t, @NonNull T t2) {
        if (t == null) {
            throw new IllegalArgumentException("lower must not be null");
        } else if (t2 != null) {
            this.a = t;
            this.b = t2;
            if (t.compareTo(t2) > 0) {
                throw new IllegalArgumentException("lower must be less than or equal to upper");
            }
        } else {
            throw new IllegalArgumentException("upper must not be null");
        }
    }

    public boolean a(@NonNull j<T> jVar) {
        boolean z = jVar.a.compareTo(this.a) >= 0;
        boolean z2 = jVar.b.compareTo(this.b) <= 0;
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    public boolean b(@NonNull T t) {
        if (t != null) {
            boolean z = t.compareTo(this.a) >= 0;
            boolean z2 = t.compareTo(this.b) <= 0;
            if (!z || !z2) {
                return false;
            }
            return true;
        }
        throw new IllegalArgumentException("value must not be null");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (!this.a.equals(jVar.a) || !this.b.equals(jVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public String toString() {
        return String.format("[%s, %s]", this.a, this.b);
    }
}
