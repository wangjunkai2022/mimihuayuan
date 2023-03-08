package g.a;

import io.realm.internal.OsList;
import java.util.Locale;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class e extends o<Boolean> {
    public e(a aVar, OsList osList, Class<Boolean> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList osList = this.b;
        OsList.nativeAddBoolean(osList.a, ((Boolean) obj).booleanValue());
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof Boolean)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Boolean", obj.getClass().getName()));
        }
    }

    @Override // g.a.o
    public Boolean c(int i2) {
        return (Boolean) this.b.a(i2);
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList osList = this.b;
        OsList.nativeInsertBoolean(osList.a, i2, ((Boolean) obj).booleanValue());
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList osList = this.b;
        OsList.nativeSetBoolean(osList.a, i2, ((Boolean) obj).booleanValue());
    }
}
