package g.a;

import io.realm.internal.OsList;
import java.util.Date;
import java.util.Locale;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class g extends o<Date> {
    public g(a aVar, OsList osList, Class<Date> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList.nativeAddDate(this.b.a, ((Date) obj).getTime());
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof Date)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.util.Date", obj.getClass().getName()));
        }
    }

    @Override // g.a.o
    public Date c(int i2) {
        return (Date) this.b.a(i2);
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList.nativeInsertDate(this.b.a, i2, ((Date) obj).getTime());
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList.nativeSetDate(this.b.a, i2, ((Date) obj).getTime());
    }
}
