package l;

import java.util.Objects;
/* compiled from: HttpException.java */
/* loaded from: classes2.dex */
public class n extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(g0<?> g0Var) {
        super("HTTP " + g0Var.a.f6533e + " " + g0Var.a.f6532d);
        Objects.requireNonNull(g0Var, "response == null");
        int i2 = g0Var.a.f6533e;
    }
}
