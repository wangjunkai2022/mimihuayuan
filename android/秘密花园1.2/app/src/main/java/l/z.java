package l;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import l.l;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: OptionalConverterFactory.java */
@IgnoreJRERequirement
/* loaded from: classes2.dex */
public final class z extends l.a {
    public static final l.a a = new z();

    /* compiled from: OptionalConverterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class a<T> implements l<i.i0, Optional<T>> {
        public final l<i.i0, T> a;

        public a(l<i.i0, T> lVar) {
            this.a = lVar;
        }

        @Override // l.l
        public Object a(i.i0 i0Var) throws IOException {
            return Optional.ofNullable(this.a.a(i0Var));
        }
    }

    @Override // l.l.a
    public l<i.i0, ?> b(Type type, Annotation[] annotationArr, h0 h0Var) {
        if (l0.f(type) != Optional.class) {
            return null;
        }
        return new a(h0Var.e(l0.e(0, (ParameterizedType) type), annotationArr));
    }
}
