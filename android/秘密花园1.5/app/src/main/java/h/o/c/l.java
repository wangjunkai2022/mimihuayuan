package h.o.c;

/* compiled from: Reflection.java */
/* loaded from: classes.dex */
public class l {
    public static final m a;

    static {
        m mVar = null;
        try {
            mVar = (m) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (mVar == null) {
            mVar = new m();
        }
        a = mVar;
    }
}
