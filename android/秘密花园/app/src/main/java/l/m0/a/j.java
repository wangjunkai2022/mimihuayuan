package l.m0.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import l.e;
import l.g0;
import l.h0;
import l.l0;
import m.c;
import m.g;
import m.h;

/* compiled from: RxJavaCallAdapterFactory.java */
/* loaded from: classes2.dex */
public final class j extends e.a {
    public final g a = null;
    public final boolean b;

    public j(g gVar, boolean z) {
        this.b = z;
    }

    public static j b() {
        return new j(null, false);
    }

    @Override // l.e.a
    public e<?, ?> a(Type type, Annotation[] annotationArr, h0 h0Var) {
        boolean z;
        boolean z2;
        Type type2;
        Type type3;
        Class<?> f2 = l0.f(type);
        boolean z3 = true;
        boolean z4 = f2 == h.class;
        boolean z5 = f2 == c.class;
        if (f2 != m.e.class && !z4 && !z5) {
            return null;
        }
        if (z5) {
            return new i(Void.class, this.a, this.b, false, true, false, true);
        }
        if (!(type instanceof ParameterizedType)) {
            String str = z4 ? "Single" : "Observable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type e2 = l0.e(0, (ParameterizedType) type);
        Class<?> f3 = l0.f(e2);
        if (f3 == g0.class) {
            if (e2 instanceof ParameterizedType) {
                type3 = l0.e(0, (ParameterizedType) e2);
                z3 = false;
            } else {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
        } else if (f3 != g.class) {
            type2 = e2;
            z2 = false;
            z = true;
            return new i(type2, this.a, this.b, z2, z, z4, false);
        } else if (e2 instanceof ParameterizedType) {
            type3 = l0.e(0, (ParameterizedType) e2);
        } else {
            throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
        }
        type2 = type3;
        z2 = z3;
        z = false;
        return new i(type2, this.a, this.b, z2, z, z4, false);
    }
}
