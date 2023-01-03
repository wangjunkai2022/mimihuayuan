package f.i.a.a;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SeekParameters.java */
/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: c  reason: collision with root package name */
    public static final s0 f5769c = new s0(0, 0);

    /* renamed from: d  reason: collision with root package name */
    public static final s0 f5770d;
    public final long a;
    public final long b;

    static {
        c.a.a.b.g.h.m(RecyclerView.FOREVER_NS >= 0);
        c.a.a.b.g.h.m(RecyclerView.FOREVER_NS >= 0);
        c.a.a.b.g.h.m(RecyclerView.FOREVER_NS >= 0);
        c.a.a.b.g.h.m(0 >= 0);
        c.a.a.b.g.h.m(0 >= 0);
        c.a.a.b.g.h.m(RecyclerView.FOREVER_NS >= 0);
        f5770d = f5769c;
    }

    public s0(long j2, long j3) {
        c.a.a.b.g.h.m(j2 >= 0);
        c.a.a.b.g.h.m(j3 >= 0);
        this.a = j2;
        this.b = j3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s0.class != obj.getClass()) {
            return false;
        }
        s0 s0Var = (s0) obj;
        return this.a == s0Var.a && this.b == s0Var.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
