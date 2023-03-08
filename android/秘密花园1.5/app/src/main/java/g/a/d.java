package g.a;

import io.realm.internal.OsList;
import java.util.Locale;

/* compiled from: RealmList.java */
/* loaded from: classes.dex */
public final class d extends o<byte[]> {
    public d(a aVar, OsList osList, Class<byte[]> cls) {
        super(aVar, osList, cls);
    }

    @Override // g.a.o
    public void a(Object obj) {
        OsList.nativeAddBinary(this.b.a, (byte[]) obj);
    }

    @Override // g.a.o
    public void b(Object obj) {
        if (obj != null && !(obj instanceof byte[])) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "byte[]", obj.getClass().getName()));
        }
    }

    @Override // g.a.o
    public byte[] c(int i2) {
        return (byte[]) this.b.a(i2);
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList.nativeInsertBinary(this.b.a, i2, (byte[]) obj);
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList.nativeSetBinary(this.b.a, i2, (byte[]) obj);
    }
}
