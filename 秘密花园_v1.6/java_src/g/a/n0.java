package g.a;

import io.realm.internal.OsList;
import java.util.Locale;
/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class n0 extends o<String> {
    public n0(a aVar, OsList osList, Class<String> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList.nativeAddString(this.b.a, (String) obj);
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof String)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
        }
    }

    @Override // g.a.o
    public String c(int i2) {
        return (String) this.b.a(i2);
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList.nativeInsertString(this.b.a, i2, (String) obj);
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList.nativeSetString(this.b.a, i2, (String) obj);
    }
}
