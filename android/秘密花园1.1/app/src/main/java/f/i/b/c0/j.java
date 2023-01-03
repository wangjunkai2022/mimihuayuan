package f.i.b.c0;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public class j implements t<T> {
    public final /* synthetic */ Type a;

    public j(g gVar, Type type) {
        this.a = type;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.util.EnumSet] */
    @Override // f.i.b.c0.t
    public T a() {
        Type type = this.a;
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            StringBuilder o = f.b.a.a.a.o("Invalid EnumSet type: ");
            o.append(this.a.toString());
            throw new f.i.b.p(o.toString());
        }
        StringBuilder o2 = f.b.a.a.a.o("Invalid EnumSet type: ");
        o2.append(this.a.toString());
        throw new f.i.b.p(o2.toString());
    }
}
