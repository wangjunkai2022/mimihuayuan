package l;

import java.lang.annotation.Annotation;
/* compiled from: SkipCallbackExecutorImpl.java */
/* loaded from: classes2.dex */
public final class k0 implements j0 {
    public static final j0 a = new k0();

    @Override // java.lang.annotation.Annotation
    public Class<? extends Annotation> annotationType() {
        return j0.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        return obj instanceof j0;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder o = f.b.a.a.a.o("@");
        o.append(j0.class.getName());
        o.append("()");
        return o.toString();
    }
}
