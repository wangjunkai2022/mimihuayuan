package g.a;

import io.realm.internal.OsList;
import java.util.Locale;
/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class n<T> extends o<T> {
    public n(a aVar, OsList osList, Class<T> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList osList = this.b;
        OsList.nativeAddLong(osList.a, ((Number) obj).longValue());
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", obj.getClass().getName()));
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Long] */
    @Override // g.a.o
    public T c(int i2) {
        ?? r4 = (T) ((Long) this.b.a(i2));
        if (r4 == 0) {
            return null;
        }
        Class<T> cls = this.f6379c;
        if (cls == Long.class) {
            return r4;
        }
        if (cls == Integer.class) {
            return cls.cast(Integer.valueOf(r4.intValue()));
        }
        if (cls == Short.class) {
            return cls.cast(Short.valueOf(r4.shortValue()));
        }
        if (cls == Byte.class) {
            return cls.cast(Byte.valueOf(r4.byteValue()));
        }
        StringBuilder o = f.b.a.a.a.o("Unexpected element type: ");
        o.append(this.f6379c.getName());
        throw new IllegalStateException(o.toString());
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList osList = this.b;
        long longValue = ((Number) obj).longValue();
        OsList.nativeInsertLong(osList.a, i2, longValue);
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList osList = this.b;
        long longValue = ((Number) obj).longValue();
        OsList.nativeSetLong(osList.a, i2, longValue);
    }
}
