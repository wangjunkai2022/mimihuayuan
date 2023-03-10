package h.o.c;
/* compiled from: Lambda.kt */
/* loaded from: classes.dex */
public abstract class h<R> implements Object<R> {
    public h(int i2) {
    }

    @Override // java.lang.Object
    public String toString() {
        if (l.a != null) {
            String obj = getClass().getGenericInterfaces()[0].toString();
            if (obj.startsWith("kotlin.jvm.functions.")) {
                obj = obj.substring(21);
            }
            g.b(obj, "Reflection.renderLambdaToString(this)");
            return obj;
        }
        throw null;
    }
}
