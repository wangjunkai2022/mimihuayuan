package l;

import java.util.Objects;

/* compiled from: Response.java */
/* loaded from: classes2.dex */
public final class g0<T> {
    public final i.h0 a;
    public final T b;

    /* renamed from: c  reason: collision with root package name */
    public final i.i0 f7185c;

    public g0(i.h0 h0Var, T t, i.i0 i0Var) {
        this.a = h0Var;
        this.b = t;
        this.f7185c = i0Var;
    }

    public static <T> g0<T> b(T t, i.h0 h0Var) {
        Objects.requireNonNull(h0Var, "rawResponse == null");
        if (h0Var.g()) {
            return new g0<>(h0Var, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public boolean a() {
        return this.a.g();
    }

    public String toString() {
        return this.a.toString();
    }
}
