package l;

import i.g0;
import i.i0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* compiled from: Converter.java */
/* loaded from: classes2.dex */
public interface l<F, T> {

    /* compiled from: Converter.java */
    /* loaded from: classes2.dex */
    public static abstract class a {
        public l<?, g0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, h0 h0Var) {
            return null;
        }

        public l<i0, ?> b(Type type, Annotation[] annotationArr, h0 h0Var) {
            return null;
        }
    }

    T a(F f2) throws IOException;
}
