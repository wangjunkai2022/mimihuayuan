package f.i.a.a.b1;

import androidx.annotation.Nullable;

/* compiled from: SeekPoint.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: c  reason: collision with root package name */
    public static final o f4059c = new o(0, 0);
    public final long a;
    public final long b;

    public o(long j2, long j3) {
        this.a = j2;
        this.b = j3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.a == oVar.a && this.b == oVar.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("[timeUs=");
        o.append(this.a);
        o.append(", position=");
        o.append(this.b);
        o.append("]");
        return o.toString();
    }
}
