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
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // g.a.o
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T c(int r4) {
        /*
            r3 = this;
            io.realm.internal.OsList r0 = r3.b
            long r1 = (long) r4
            java.lang.Object r4 = r0.a(r1)
            java.lang.Long r4 = (java.lang.Long) r4
            if (r4 != 0) goto L_0x000d
            r4 = 0
            return r4
        L_0x000d:
            java.lang.Class<T> r0 = r3.f6295c
            java.lang.Class<java.lang.Long> r1 = java.lang.Long.class
            if (r0 != r1) goto L_0x0014
            return r4
        L_0x0014:
            java.lang.Class<java.lang.Integer> r1 = java.lang.Integer.class
            if (r0 != r1) goto L_0x0025
            int r4 = r4.intValue()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.Object r4 = r0.cast(r4)
            return r4
        L_0x0025:
            java.lang.Class<java.lang.Short> r1 = java.lang.Short.class
            if (r0 != r1) goto L_0x0036
            short r4 = r4.shortValue()
            java.lang.Short r4 = java.lang.Short.valueOf(r4)
            java.lang.Object r4 = r0.cast(r4)
            return r4
        L_0x0036:
            java.lang.Class<java.lang.Byte> r1 = java.lang.Byte.class
            if (r0 != r1) goto L_0x0047
            byte r4 = r4.byteValue()
            java.lang.Byte r4 = java.lang.Byte.valueOf(r4)
            java.lang.Object r4 = r0.cast(r4)
            return r4
        L_0x0047:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "Unexpected element type: "
            java.lang.StringBuilder r0 = f.b.a.a.a.o(r0)
            java.lang.Class<T> r1 = r3.f6295c
            java.lang.String r1 = r1.getName()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.n.c(int):java.lang.Object");
    }

    @Override // g.a.o
    public void e(int i2, Object obj) {
        OsList osList = this.b;
        long longValue = ((Number) obj).longValue();
        OsList.nativeInsertLong(osList.a, (long) i2, longValue);
    }

    @Override // g.a.o
    public void g(int i2, Object obj) {
        OsList osList = this.b;
        long longValue = ((Number) obj).longValue();
        OsList.nativeSetLong(osList.a, (long) i2, longValue);
    }
}
