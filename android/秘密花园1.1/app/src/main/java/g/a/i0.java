package g.a;

import g.a.f1.c;
import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;

/* compiled from: RealmObjectSchema.java */
/* loaded from: classes.dex */
public abstract class i0 {
    public final k0 a;
    public final g.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public final Table f6270c;

    /* compiled from: RealmObjectSchema.java */
    /* loaded from: classes.dex */
    public static final class a extends g.a.f1.c {
        public a(Table table) {
            super(0, false);
        }

        @Override // g.a.f1.c
        public void b(g.a.f1.c cVar, g.a.f1.c cVar2) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot copy");
        }

        @Override // g.a.f1.c
        public void c(g.a.f1.c cVar) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        @Override // g.a.f1.c
        public c.a d(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getColumnDetails'");
        }
    }

    /* compiled from: RealmObjectSchema.java */
    /* loaded from: classes.dex */
    public static final class b {
        public b(RealmFieldType realmFieldType, RealmFieldType realmFieldType2, boolean z) {
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(String.class, new b(RealmFieldType.STRING, RealmFieldType.STRING_LIST, true));
        hashMap.put(Short.TYPE, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Short.class, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Integer.TYPE, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Integer.class, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Long.TYPE, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Long.class, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Float.TYPE, new b(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, false));
        hashMap.put(Float.class, new b(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, true));
        hashMap.put(Double.TYPE, new b(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, false));
        hashMap.put(Double.class, new b(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, true));
        hashMap.put(Boolean.TYPE, new b(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, false));
        hashMap.put(Boolean.class, new b(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, true));
        hashMap.put(Byte.TYPE, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Byte.class, new b(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(byte[].class, new b(RealmFieldType.BINARY, RealmFieldType.BINARY_LIST, true));
        hashMap.put(Date.class, new b(RealmFieldType.DATE, RealmFieldType.DATE_LIST, true));
        Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(g0.class, new b(RealmFieldType.OBJECT, null, false));
        hashMap2.put(c0.class, new b(RealmFieldType.LIST, null, false));
        Collections.unmodifiableMap(hashMap2);
    }

    public i0(g.a.a aVar, k0 k0Var, Table table, g.a.f1.c cVar) {
        this.a = k0Var;
        this.b = aVar;
        this.f6270c = table;
    }

    public String a() {
        return this.f6270c.d();
    }

    public abstract g.a.f1.u.c b(String str, RealmFieldType... realmFieldTypeArr);
}
