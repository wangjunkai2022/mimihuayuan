package f.i.b.c0;

import f.b.a.a.a;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public class f implements t<T> {
    public final z a;
    public final /* synthetic */ Class b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Type f6045c;

    public f(g gVar, Class cls, Type type) {
        z zVar;
        this.b = cls;
        this.f6045c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            zVar = new v(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    zVar = new w(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    zVar = new x(declaredMethod3);
                }
            } catch (Exception unused3) {
                zVar = new y();
            }
        }
        this.a = zVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // f.i.b.c0.t
    public T a() {
        try {
            return this.a.b(this.b);
        } catch (Exception e2) {
            StringBuilder o = a.o("Unable to invoke no-args constructor for ");
            o.append(this.f6045c);
            o.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
            throw new RuntimeException(o.toString(), e2);
        }
    }
}
