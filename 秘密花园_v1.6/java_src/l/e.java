package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
/* compiled from: CallAdapter.java */
/* loaded from: classes2.dex */
public interface e<R, T> {

    /* compiled from: CallAdapter.java */
    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract e<?, ?> a(Type type, Annotation[] annotationArr, h0 h0Var);
    }

    Type a();

    T b(d<R> dVar);
}
