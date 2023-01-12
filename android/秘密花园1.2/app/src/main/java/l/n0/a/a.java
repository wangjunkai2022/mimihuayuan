package l.n0.a;

import f.i.b.j;
import i.g0;
import i.i0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.h0;
import l.l;

/* compiled from: GsonConverterFactory.java */
/* loaded from: classes2.dex */
public final class a extends l.a {
    public final j a;

    public a(j jVar) {
        this.a = jVar;
    }

    public static a c() {
        return new a(new j());
    }

    @Override // l.l.a
    public l<?, g0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, h0 h0Var) {
        return new b(this.a, this.a.f(new f.i.b.d0.a(type)));
    }

    @Override // l.l.a
    public l<i0, ?> b(Type type, Annotation[] annotationArr, h0 h0Var) {
        return new c(this.a, this.a.f(new f.i.b.d0.a(type)));
    }
}
