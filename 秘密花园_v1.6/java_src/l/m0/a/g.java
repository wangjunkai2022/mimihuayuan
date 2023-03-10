package l.m0.a;

import l.g0;
/* compiled from: Result.java */
/* loaded from: classes2.dex */
public final class g<T> {
    public final g0<T> a;
    public final Throwable b;

    public g(g0<T> g0Var, Throwable th) {
        this.a = g0Var;
        this.b = th;
    }

    public String toString() {
        if (this.b != null) {
            StringBuilder o = f.b.a.a.a.o("Result{isError=true, error=\"");
            o.append(this.b);
            o.append("\"}");
            return o.toString();
        }
        StringBuilder o2 = f.b.a.a.a.o("Result{isError=false, response=");
        o2.append(this.a);
        o2.append('}');
        return o2.toString();
    }
}
