package g.a;

import io.realm.internal.OsList;
import java.util.Locale;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class j extends o<Float> {
    public j(a aVar, OsList osList, Class<Float> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList osList = this.b;
        OsList.nativeAddFloat(osList.a, ((Number) obj).floatValue());
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Number", obj.getClass().getName()));
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // g.a.o
    public Float c(int i2) {
        return (Float) this.b.a((long) i2);
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList osList = this.b;
        OsList.nativeInsertFloat(osList.a, (long) i2, ((Number) obj).floatValue());
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList osList = this.b;
        OsList.nativeSetFloat(osList.a, (long) i2, ((Number) obj).floatValue());
    }
}
