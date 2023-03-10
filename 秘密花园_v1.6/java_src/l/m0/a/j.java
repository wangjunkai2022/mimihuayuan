package l.m0.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import l.e;
import l.g0;
import l.h0;
import l.l0;
/* compiled from: RxJavaCallAdapterFactory.java */
/* loaded from: classes2.dex */
public final class j extends e.a {
    public final m.g a = null;
    public final boolean b;

    public j(m.g gVar, boolean z) {
        this.b = z;
    }

    public static j b() {
        return new j(null, false);
    }

    @Override // l.e.a
    public l.e<?, ?> a(Type type, Annotation[] annotationArr, h0 h0Var) {
        Type type2;
        boolean z;
        boolean z2;
        Type e2;
        Class<?> f2 = l0.f(type);
        boolean z3 = true;
        boolean z4 = f2 == m.h.class;
        boolean z5 = f2 == m.c.class;
        if (f2 == m.e.class || z4 || z5) {
            if (z5) {
                return new i(Void.class, this.a, this.b, false, true, false, true);
            }
            if (!(type instanceof ParameterizedType)) {
                String str = z4 ? "Single" : "Observable";
                throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
            }
            Type e3 = l0.e(0, (ParameterizedType) type);
            Class<?> f3 = l0.f(e3);
            if (f3 == g0.class) {
                if (e3 instanceof ParameterizedType) {
                    e2 = l0.e(0, (ParameterizedType) e3);
                    z3 = false;
                } else {
                    throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
                }
            } else if (f3 == g.class) {
                if (e3 instanceof ParameterizedType) {
                    e2 = l0.e(0, (ParameterizedType) e3);
                } else {
                    throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                }
            } else {
                type2 = e3;
                z = false;
                z2 = true;
                return new i(type2, this.a, this.b, z, z2, z4, false);
            }
            type2 = e2;
            z = z3;
            z2 = false;
            return new i(type2, this.a, this.b, z, z2, z4, false);
        }
        return null;
    }
}
