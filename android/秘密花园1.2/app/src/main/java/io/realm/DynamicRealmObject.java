package io.realm;

import g.a.a;
import g.a.c0;
import g.a.d;
import g.a.e;
import g.a.e0;
import g.a.f1.n;
import g.a.f1.p;
import g.a.f1.s.c;
import g.a.g;
import g.a.g0;
import g.a.h;
import g.a.i;
import g.a.i0;
import g.a.j;
import g.a.j0;
import g.a.n0;
import g.a.o;
import g.a.v;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsList;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.lang.reflect.GenericDeclaration;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class DynamicRealmObject extends g0 implements n {
    public static final String MSG_LINK_QUERY_NOT_SUPPORTED = "Queries across relationships are not supported";
    public final v<DynamicRealmObject> proxyState;

    public DynamicRealmObject(e0 e0Var) {
        this.proxyState = new v<>(this);
        if (e0Var != null) {
            if (!(e0Var instanceof DynamicRealmObject)) {
                if (g0.isManaged(e0Var)) {
                    if (g0.isValid(e0Var)) {
                        n nVar = (n) e0Var;
                        p pVar = nVar.realmGet$proxyState().f6380c;
                        this.proxyState.f6382e = nVar.realmGet$proxyState().f6382e;
                        v<DynamicRealmObject> vVar = this.proxyState;
                        UncheckedRow uncheckedRow = (UncheckedRow) pVar;
                        if (uncheckedRow != null) {
                            vVar.f6380c = new CheckedRow(uncheckedRow);
                            this.proxyState.b = false;
                            return;
                        }
                        throw null;
                    }
                    throw new IllegalArgumentException("A valid object managed by Realm must be provided. This object was deleted.");
                }
                throw new IllegalArgumentException("An object managed by Realm must be provided. This is an unmanaged object.");
            }
            throw new IllegalArgumentException("The object is already a DynamicRealmObject: " + e0Var);
        }
        throw new IllegalArgumentException("A non-null object must be provided.");
    }

    private void checkFieldType(String str, long j2, RealmFieldType realmFieldType) {
        RealmFieldType B = this.proxyState.f6380c.B(j2);
        if (B != realmFieldType) {
            String str2 = "n";
            String str3 = (realmFieldType == RealmFieldType.INTEGER || realmFieldType == RealmFieldType.OBJECT) ? "n" : "";
            if (B != RealmFieldType.INTEGER && B != RealmFieldType.OBJECT) {
                str2 = "";
            }
            throw new IllegalArgumentException(String.format(Locale.US, "'%s' is not a%s '%s', but a%s '%s'.", str, str3, realmFieldType, str2, B));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
        if (r3.a().equals(r1) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void checkIsPrimaryKey(java.lang.String r13) {
        /*
            r12 = this;
            g.a.v<io.realm.DynamicRealmObject> r0 = r12.proxyState
            g.a.a r0 = r0.f6382e
            g.a.k0 r0 = r0.G()
            java.lang.String r1 = r12.getType()
            if (r0 == 0) goto Lbd
            java.lang.String r2 = io.realm.internal.Table.k(r1)
            java.util.Map<java.lang.String, g.a.i0> r3 = r0.f6359d
            java.lang.Object r3 = r3.get(r2)
            g.a.i0 r3 = (g.a.i0) r3
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L3d
            io.realm.internal.Table r6 = r3.f6345c
            long r7 = r6.a
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 == 0) goto L30
            boolean r6 = r6.nativeIsValid(r7)
            if (r6 == 0) goto L30
            r6 = 1
            goto L31
        L30:
            r6 = 0
        L31:
            if (r6 == 0) goto L3d
            java.lang.String r6 = r3.a()
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L59
        L3d:
            g.a.a r3 = r0.f6360e
            io.realm.internal.OsSharedRealm r3 = r3.f6266d
            boolean r3 = r3.hasTable(r2)
            if (r3 == 0) goto Laf
            g.a.k r3 = new g.a.k
            g.a.a r1 = r0.f6360e
            io.realm.internal.OsSharedRealm r6 = r1.f6266d
            io.realm.internal.Table r6 = r6.getTable(r2)
            r3.<init>(r1, r0, r6)
            java.util.Map<java.lang.String, g.a.i0> r0 = r0.f6359d
            r0.put(r2, r3)
        L59:
            g.a.a r0 = r3.b
            io.realm.internal.OsSharedRealm r0 = r0.f6266d
            java.lang.String r1 = r3.a()
            java.lang.String r0 = io.realm.internal.OsObjectStore.a(r0, r1)
            if (r0 == 0) goto L69
            r0 = 1
            goto L6a
        L69:
            r0 = 0
        L6a:
            if (r0 == 0) goto Lae
            g.a.a r0 = r3.b
            io.realm.internal.OsSharedRealm r0 = r0.f6266d
            java.lang.String r1 = r3.a()
            java.lang.String r0 = io.realm.internal.OsObjectStore.a(r0, r1)
            if (r0 == 0) goto L93
            boolean r0 = r0.equals(r13)
            if (r0 != 0) goto L81
            goto Lae
        L81:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.util.Locale r1 = java.util.Locale.US
            java.lang.Object[] r2 = new java.lang.Object[r4]
            r2[r5] = r13
            java.lang.String r13 = "Primary key field '%s' cannot be changed after object was created."
            java.lang.String r13 = java.lang.String.format(r1, r13, r2)
            r0.<init>(r13)
            throw r0
        L93:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r3.a()
            r0.append(r1)
            java.lang.String r1 = " doesn't have a primary key."
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r13.<init>(r0)
            throw r13
        Lae:
            return
        Laf:
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "The class "
            java.lang.String r2 = " doesn't exist in this Realm."
            java.lang.String r0 = f.b.a.a.a.g(r0, r1, r2)
            r13.<init>(r0)
            throw r13
        Lbd:
            r13 = 0
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.DynamicRealmObject.checkIsPrimaryKey(java.lang.String):void");
    }

    private <E> RealmFieldType classToRealmType(Class<E> cls) {
        if (!cls.equals(Integer.class) && !cls.equals(Long.class) && !cls.equals(Short.class) && !cls.equals(Byte.class)) {
            if (cls.equals(Boolean.class)) {
                return RealmFieldType.BOOLEAN_LIST;
            }
            if (cls.equals(String.class)) {
                return RealmFieldType.STRING_LIST;
            }
            if (cls.equals(byte[].class)) {
                return RealmFieldType.BINARY_LIST;
            }
            if (cls.equals(Date.class)) {
                return RealmFieldType.DATE_LIST;
            }
            if (cls.equals(Float.class)) {
                return RealmFieldType.FLOAT_LIST;
            }
            if (cls.equals(Double.class)) {
                return RealmFieldType.DOUBLE_LIST;
            }
            throw new IllegalArgumentException("Unsupported element type. Only primitive types supported. Yours was: " + cls);
        }
        return RealmFieldType.INTEGER_LIST;
    }

    private <E> o<E> getOperator(a aVar, OsList osList, RealmFieldType realmFieldType, Class<E> cls) {
        if (realmFieldType == RealmFieldType.STRING_LIST) {
            return new n0(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.INTEGER_LIST) {
            return new g.a.n(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.BOOLEAN_LIST) {
            return new e(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.BINARY_LIST) {
            return new d(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.DOUBLE_LIST) {
            return new h(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.FLOAT_LIST) {
            return new j(aVar, osList, cls);
        }
        if (realmFieldType == RealmFieldType.DATE_LIST) {
            return new g(aVar, osList, cls);
        }
        StringBuilder o = f.b.a.a.a.o("Unexpected list type: ");
        o.append(realmFieldType.name());
        throw new IllegalArgumentException(o.toString());
    }

    private void setModelList(String str, c0<DynamicRealmObject> c0Var) {
        boolean z;
        int i2;
        OsList t = this.proxyState.f6380c.t(this.proxyState.f6380c.s(str));
        Table table = t.f6995c;
        String d2 = table.d();
        if (c0Var.b == null && c0Var.a == null) {
            z = false;
        } else {
            String str2 = c0Var.b;
            if (str2 == null) {
                str2 = this.proxyState.f6382e.G().e(c0Var.a).d();
            }
            if (!d2.equals(str2)) {
                throw new IllegalArgumentException(String.format(Locale.US, "The elements in the list are not the proper type. Was %s expected %s.", str2, d2));
            }
            z = true;
        }
        int size = c0Var.size();
        long[] jArr = new long[size];
        int i3 = 0;
        while (i3 < size) {
            DynamicRealmObject dynamicRealmObject = c0Var.get(i3);
            if (dynamicRealmObject.realmGet$proxyState().f6382e == this.proxyState.f6382e) {
                if (z) {
                    i2 = size;
                } else {
                    Table d3 = dynamicRealmObject.realmGet$proxyState().f6380c.d();
                    if (d3 != null) {
                        i2 = size;
                        if (!table.nativeHasSameSchema(table.a, d3.a)) {
                            throw new IllegalArgumentException(String.format(Locale.US, "Element at index %d is not the proper type. Was '%s' expected '%s'.", Integer.valueOf(i3), dynamicRealmObject.realmGet$proxyState().f6380c.d().d(), d2));
                        }
                    } else {
                        throw new IllegalArgumentException("The argument cannot be null");
                    }
                }
                jArr[i3] = dynamicRealmObject.realmGet$proxyState().f6380c.l();
                i3++;
                size = i2;
            } else {
                throw new IllegalArgumentException("Each element in 'list' must belong to the same Realm instance.");
            }
        }
        int i4 = size;
        OsList.nativeRemoveAll(t.a);
        for (int i5 = 0; i5 < i4; i5++) {
            OsList.nativeAddRow(t.a, jArr[i5]);
        }
    }

    private void setValue(String str, Object obj) {
        Class<?> cls = obj.getClass();
        if (cls == Boolean.class) {
            setBoolean(str, ((Boolean) obj).booleanValue());
        } else if (cls == Short.class) {
            setShort(str, ((Short) obj).shortValue());
        } else if (cls == Integer.class) {
            setInt(str, ((Integer) obj).intValue());
        } else if (cls == Long.class) {
            setLong(str, ((Long) obj).longValue());
        } else if (cls == Byte.class) {
            setByte(str, ((Byte) obj).byteValue());
        } else if (cls == Float.class) {
            setFloat(str, ((Float) obj).floatValue());
        } else if (cls == Double.class) {
            setDouble(str, ((Double) obj).doubleValue());
        } else if (cls == String.class) {
            setString(str, (String) obj);
        } else if (obj instanceof Date) {
            setDate(str, (Date) obj);
        } else if (obj instanceof byte[]) {
            setBlob(str, (byte[]) obj);
        } else if (cls == DynamicRealmObject.class) {
            setObject(str, (DynamicRealmObject) obj);
        } else if (cls == c0.class) {
            setList(str, (c0) obj);
        } else {
            StringBuilder o = f.b.a.a.a.o("Value is of an type not supported: ");
            o.append(obj.getClass());
            throw new IllegalArgumentException(o.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E> void setValueList(String str, c0<E> c0Var, RealmFieldType realmFieldType) {
        GenericDeclaration genericDeclaration;
        OsList x = this.proxyState.f6380c.x(this.proxyState.f6380c.s(str), realmFieldType);
        switch (realmFieldType.ordinal()) {
            case 10:
                genericDeclaration = Long.class;
                break;
            case 11:
                genericDeclaration = Boolean.class;
                break;
            case 12:
                genericDeclaration = String.class;
                break;
            case 13:
                genericDeclaration = byte[].class;
                break;
            case 14:
                genericDeclaration = Date.class;
                break;
            case 15:
                genericDeclaration = Float.class;
                break;
            case 16:
                genericDeclaration = Double.class;
                break;
            default:
                throw new IllegalArgumentException("Unsupported type: " + realmFieldType);
        }
        o operator = getOperator(this.proxyState.f6382e, x, realmFieldType, genericDeclaration);
        if (c0Var.i() && x.b() == c0Var.size()) {
            int size = c0Var.size();
            Iterator<E> it = c0Var.iterator();
            for (int i2 = 0; i2 < size; i2++) {
                E next = it.next();
                operator.b(next);
                operator.c(i2);
                if (next == null) {
                    operator.f(i2);
                } else {
                    operator.g(i2, next);
                }
            }
            return;
        }
        OsList.nativeRemoveAll(x.a);
        Iterator<E> it2 = c0Var.iterator();
        while (it2.hasNext()) {
            E next2 = it2.next();
            operator.b(next2);
            if (next2 == null) {
                OsList.nativeAddNull(operator.b.a);
            } else {
                operator.a(next2);
            }
        }
    }

    public boolean equals(Object obj) {
        this.proxyState.f6382e.f();
        if (this == obj) {
            return true;
        }
        if (obj == null || DynamicRealmObject.class != obj.getClass()) {
            return false;
        }
        DynamicRealmObject dynamicRealmObject = (DynamicRealmObject) obj;
        String str = this.proxyState.f6382e.b.f6272c;
        String str2 = dynamicRealmObject.proxyState.f6382e.b.f6272c;
        if (str == null ? str2 == null : str.equals(str2)) {
            String j2 = this.proxyState.f6380c.d().j();
            String j3 = dynamicRealmObject.proxyState.f6380c.d().j();
            if (j2 == null ? j3 == null : j2.equals(j3)) {
                return this.proxyState.f6380c.l() == dynamicRealmObject.proxyState.f6380c.l();
            }
            return false;
        }
        return false;
    }

    public <E> E get(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        RealmFieldType B = this.proxyState.f6380c.B(s);
        switch (B.ordinal()) {
            case 0:
                return (E) Long.valueOf(this.proxyState.f6380c.p(s));
            case 1:
                return (E) Boolean.valueOf(this.proxyState.f6380c.m(s));
            case 2:
                return (E) this.proxyState.f6380c.q(s);
            case 3:
                return (E) this.proxyState.f6380c.g(s);
            case 4:
                return (E) this.proxyState.f6380c.w(s);
            case 5:
                return (E) Float.valueOf(this.proxyState.f6380c.o(s));
            case 6:
                return (E) Double.valueOf(this.proxyState.f6380c.k(s));
            case 7:
                return (E) getObject(str);
            case 8:
                return (E) getList(str);
            default:
                throw new IllegalStateException("Field type not supported: " + B);
        }
    }

    public byte[] getBlob(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.g(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.BINARY);
            throw e2;
        }
    }

    public boolean getBoolean(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.m(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.BOOLEAN);
            throw e2;
        }
    }

    public byte getByte(String str) {
        return (byte) getLong(str);
    }

    public Date getDate(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        checkFieldType(str, s, RealmFieldType.DATE);
        if (this.proxyState.f6380c.y(s)) {
            return null;
        }
        return this.proxyState.f6380c.w(s);
    }

    public double getDouble(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.k(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.DOUBLE);
            throw e2;
        }
    }

    public i getDynamicRealm() {
        a aVar = realmGet$proxyState().f6382e;
        aVar.f();
        if (isValid()) {
            return (i) aVar;
        }
        throw new IllegalStateException(g0.MSG_DELETED_OBJECT);
    }

    public String[] getFieldNames() {
        this.proxyState.f6382e.f();
        int c2 = (int) this.proxyState.f6380c.c();
        String[] strArr = new String[c2];
        for (int i2 = 0; i2 < c2; i2++) {
            strArr[i2] = this.proxyState.f6380c.z(i2);
        }
        return strArr;
    }

    public RealmFieldType getFieldType(String str) {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.B(this.proxyState.f6380c.s(str));
    }

    public float getFloat(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.o(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.FLOAT);
            throw e2;
        }
    }

    public int getInt(String str) {
        return (int) getLong(str);
    }

    public c0<DynamicRealmObject> getList(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            OsList t = this.proxyState.f6380c.t(s);
            return new c0<>(t.f6995c.d(), t, this.proxyState.f6382e);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.LIST);
            throw e2;
        }
    }

    public long getLong(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.p(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.INTEGER);
            throw e2;
        }
    }

    public DynamicRealmObject getObject(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        checkFieldType(str, s, RealmFieldType.OBJECT);
        if (this.proxyState.f6380c.e(s)) {
            return null;
        }
        long n = this.proxyState.f6380c.n(s);
        Table i2 = this.proxyState.f6380c.d().i(s);
        return new DynamicRealmObject(this.proxyState.f6382e, CheckedRow.G(i2.b, i2, n));
    }

    public short getShort(String str) {
        return (short) getLong(str);
    }

    public String getString(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        try {
            return this.proxyState.f6380c.q(s);
        } catch (IllegalArgumentException e2) {
            checkFieldType(str, s, RealmFieldType.STRING);
            throw e2;
        }
    }

    public String getType() {
        this.proxyState.f6382e.f();
        return this.proxyState.f6380c.d().d();
    }

    public boolean hasField(String str) {
        this.proxyState.f6382e.f();
        if (str == null || str.isEmpty()) {
            return false;
        }
        return this.proxyState.f6380c.j(str);
    }

    public int hashCode() {
        this.proxyState.f6382e.f();
        v<DynamicRealmObject> vVar = this.proxyState;
        String str = vVar.f6382e.b.f6272c;
        String j2 = vVar.f6380c.d().j();
        long l2 = this.proxyState.f6380c.l();
        return ((((527 + (str != null ? str.hashCode() : 0)) * 31) + (j2 != null ? j2.hashCode() : 0)) * 31) + ((int) ((l2 >>> 32) ^ l2));
    }

    public boolean isNull(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        switch (this.proxyState.f6380c.B(s).ordinal()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return this.proxyState.f6380c.y(s);
            case 7:
                return this.proxyState.f6380c.e(s);
            default:
                return false;
        }
    }

    public j0<DynamicRealmObject> linkingObjects(String str, String str2) {
        i iVar = (i) this.proxyState.f6382e;
        iVar.f();
        this.proxyState.f6380c.h();
        i0 b = iVar.f6344j.b(str);
        if (b != null) {
            if (str2 != null) {
                if (!str2.contains(".")) {
                    long f2 = b.f6345c.f(str2);
                    if (f2 != -1) {
                        RealmFieldType h2 = b.f6345c.h(f2);
                        if (h2 != RealmFieldType.OBJECT && h2 != RealmFieldType.LIST) {
                            Locale locale = Locale.US;
                            RealmFieldType realmFieldType = RealmFieldType.OBJECT;
                            RealmFieldType realmFieldType2 = RealmFieldType.LIST;
                            throw new IllegalArgumentException(String.format(locale, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s.", h2.name(), RealmFieldType.class.getSimpleName(), "OBJECT", "LIST"));
                        }
                        return j0.c(iVar, (CheckedRow) this.proxyState.f6380c, b.f6345c, str2);
                    }
                    throw new IllegalArgumentException(String.format(Locale.US, "Field name '%s' does not exist on schema for '%s'", str2, b.a()));
                }
                throw new IllegalArgumentException(MSG_LINK_QUERY_NOT_SUPPORTED);
            }
            throw new IllegalArgumentException("Non-null 'srcFieldName' required.");
        }
        throw new IllegalArgumentException(f.b.a.a.a.f("Class not found: ", str));
    }

    @Override // g.a.f1.n
    public void realm$injectObjectContext() {
    }

    @Override // g.a.f1.n
    public v realmGet$proxyState() {
        return this.proxyState;
    }

    public void set(String str, Object obj) {
        this.proxyState.f6382e.f();
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        RealmFieldType B = this.proxyState.f6380c.B(this.proxyState.f6380c.s(str));
        if (z && B != RealmFieldType.STRING) {
            int ordinal = B.ordinal();
            if (ordinal == 0) {
                obj = Long.valueOf(Long.parseLong(str2));
            } else if (ordinal == 1) {
                obj = Boolean.valueOf(Boolean.parseBoolean(str2));
            } else if (ordinal == 4) {
                obj = c.a(str2);
            } else if (ordinal == 5) {
                obj = Float.valueOf(Float.parseFloat(str2));
            } else if (ordinal == 6) {
                obj = Double.valueOf(Double.parseDouble(str2));
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", str, obj));
            }
        }
        if (obj == null) {
            setNull(str);
        } else {
            setValue(str, obj);
        }
    }

    public void setBlob(String str, byte[] bArr) {
        this.proxyState.f6382e.f();
        this.proxyState.f6380c.D(this.proxyState.f6380c.s(str), bArr);
    }

    public void setBoolean(String str, boolean z) {
        this.proxyState.f6382e.f();
        this.proxyState.f6380c.i(this.proxyState.f6380c.s(str), z);
    }

    public void setByte(String str, byte b) {
        this.proxyState.f6382e.f();
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.u(this.proxyState.f6380c.s(str), b);
    }

    public void setDate(String str, Date date) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        if (date == null) {
            this.proxyState.f6380c.f(s);
        } else {
            this.proxyState.f6380c.A(s, date);
        }
    }

    public void setDouble(String str, double d2) {
        this.proxyState.f6382e.f();
        this.proxyState.f6380c.C(this.proxyState.f6380c.s(str), d2);
    }

    public void setFloat(String str, float f2) {
        this.proxyState.f6382e.f();
        this.proxyState.f6380c.b(this.proxyState.f6380c.s(str), f2);
    }

    public void setInt(String str, int i2) {
        this.proxyState.f6382e.f();
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.u(this.proxyState.f6380c.s(str), i2);
    }

    public <E> void setList(String str, c0<E> c0Var) {
        E e2;
        this.proxyState.f6382e.f();
        if (c0Var != null) {
            RealmFieldType B = this.proxyState.f6380c.B(this.proxyState.f6380c.s(str));
            switch (B.ordinal()) {
                case 8:
                    if (!c0Var.isEmpty()) {
                        if (c0Var.i()) {
                            c0Var.f6294d.f();
                            if (!(OsList.nativeSize(c0Var.f6293c.b.a) <= 0)) {
                                e2 = c0Var.get(0);
                                if (!(e2 instanceof DynamicRealmObject) && e0.class.isAssignableFrom(e2.getClass())) {
                                    throw new IllegalArgumentException("RealmList must contain `DynamicRealmObject's, not Java model classes.");
                                }
                            }
                            throw new IndexOutOfBoundsException("The list is empty.");
                        }
                        List<E> list = c0Var.f6295e;
                        if (list != null && !list.isEmpty()) {
                            e2 = c0Var.f6295e.get(0);
                            if (!(e2 instanceof DynamicRealmObject)) {
                                throw new IllegalArgumentException("RealmList must contain `DynamicRealmObject's, not Java model classes.");
                            }
                        }
                        throw new IndexOutOfBoundsException("The list is empty.");
                    }
                    setModelList(str, c0Var);
                    return;
                case 9:
                default:
                    throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", str, B));
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    setValueList(str, c0Var, B);
                    return;
            }
        }
        throw new IllegalArgumentException("Non-null 'list' required");
    }

    public void setLong(String str, long j2) {
        this.proxyState.f6382e.f();
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.u(this.proxyState.f6380c.s(str), j2);
    }

    public void setNull(String str) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        if (this.proxyState.f6380c.B(s) == RealmFieldType.OBJECT) {
            this.proxyState.f6380c.E(s);
            return;
        }
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.f(s);
    }

    public void setObject(String str, DynamicRealmObject dynamicRealmObject) {
        this.proxyState.f6382e.f();
        long s = this.proxyState.f6380c.s(str);
        if (dynamicRealmObject == null) {
            this.proxyState.f6380c.E(s);
            return;
        }
        v<DynamicRealmObject> vVar = dynamicRealmObject.proxyState;
        a aVar = vVar.f6382e;
        if (aVar != null && vVar.f6380c != null) {
            v<DynamicRealmObject> vVar2 = this.proxyState;
            if (vVar2.f6382e == aVar) {
                Table i2 = vVar2.f6380c.d().i(s);
                Table d2 = dynamicRealmObject.proxyState.f6380c.d();
                if (d2 != null) {
                    if (i2.nativeHasSameSchema(i2.a, d2.a)) {
                        this.proxyState.f6380c.r(s, dynamicRealmObject.proxyState.f6380c.l());
                        return;
                    }
                    throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was %s, expected %s", d2.j(), i2.j()));
                }
                throw new IllegalArgumentException("The argument cannot be null");
            }
            throw new IllegalArgumentException("Cannot add an object from another Realm instance.");
        }
        throw new IllegalArgumentException("Cannot link to objects that are not part of the Realm.");
    }

    public void setShort(String str, short s) {
        this.proxyState.f6382e.f();
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.u(this.proxyState.f6380c.s(str), s);
    }

    public void setString(String str, String str2) {
        this.proxyState.f6382e.f();
        checkIsPrimaryKey(str);
        this.proxyState.f6380c.a(this.proxyState.f6380c.s(str), str2);
    }

    public String toString() {
        String[] fieldNames;
        this.proxyState.f6382e.f();
        if (this.proxyState.f6380c.v()) {
            StringBuilder sb = new StringBuilder(f.b.a.a.a.f(this.proxyState.f6380c.d().d(), " = dynamic["));
            for (String str : getFieldNames()) {
                long s = this.proxyState.f6380c.s(str);
                RealmFieldType B = this.proxyState.f6380c.B(s);
                sb.append("{");
                sb.append(str);
                sb.append(":");
                String str2 = "null";
                switch (B.ordinal()) {
                    case 0:
                        Long l2 = str2;
                        if (!this.proxyState.f6380c.y(s)) {
                            l2 = Long.valueOf(this.proxyState.f6380c.p(s));
                        }
                        sb.append(l2);
                        break;
                    case 1:
                        Boolean bool = str2;
                        if (!this.proxyState.f6380c.y(s)) {
                            bool = Boolean.valueOf(this.proxyState.f6380c.m(s));
                        }
                        sb.append(bool);
                        break;
                    case 2:
                        sb.append(this.proxyState.f6380c.q(s));
                        break;
                    case 3:
                        sb.append(Arrays.toString(this.proxyState.f6380c.g(s)));
                        break;
                    case 4:
                        Date date = str2;
                        if (!this.proxyState.f6380c.y(s)) {
                            date = this.proxyState.f6380c.w(s);
                        }
                        sb.append(date);
                        break;
                    case 5:
                        Float f2 = str2;
                        if (!this.proxyState.f6380c.y(s)) {
                            f2 = Float.valueOf(this.proxyState.f6380c.o(s));
                        }
                        sb.append(f2);
                        break;
                    case 6:
                        Double d2 = str2;
                        if (!this.proxyState.f6380c.y(s)) {
                            d2 = Double.valueOf(this.proxyState.f6380c.k(s));
                        }
                        sb.append(d2);
                        break;
                    case 7:
                        String str3 = str2;
                        if (!this.proxyState.f6380c.e(s)) {
                            str3 = this.proxyState.f6380c.d().i(s).d();
                        }
                        sb.append(str3);
                        break;
                    case 8:
                        sb.append(String.format(Locale.US, "RealmList<%s>[%s]", this.proxyState.f6380c.d().i(s).d(), Long.valueOf(this.proxyState.f6380c.t(s).b())));
                        break;
                    case 9:
                    default:
                        sb.append("?");
                        break;
                    case 10:
                        sb.append(String.format(Locale.US, "RealmList<Long>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 11:
                        sb.append(String.format(Locale.US, "RealmList<Boolean>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 12:
                        sb.append(String.format(Locale.US, "RealmList<String>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 13:
                        sb.append(String.format(Locale.US, "RealmList<byte[]>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 14:
                        sb.append(String.format(Locale.US, "RealmList<Date>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 15:
                        sb.append(String.format(Locale.US, "RealmList<Float>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                    case 16:
                        sb.append(String.format(Locale.US, "RealmList<Double>[%s]", Long.valueOf(this.proxyState.f6380c.x(s, B).b())));
                        break;
                }
                sb.append("},");
            }
            sb.replace(sb.length() - 1, sb.length(), "");
            sb.append("]");
            return sb.toString();
        }
        return "Invalid object";
    }

    public <E> c0<E> getList(String str, Class<E> cls) {
        this.proxyState.f6382e.f();
        if (cls != null) {
            long s = this.proxyState.f6380c.s(str);
            RealmFieldType classToRealmType = classToRealmType(cls);
            try {
                return new c0<>(cls, this.proxyState.f6380c.x(s, classToRealmType), this.proxyState.f6382e);
            } catch (IllegalArgumentException e2) {
                checkFieldType(str, s, classToRealmType);
                throw e2;
            }
        }
        throw new IllegalArgumentException("Non-null 'primitiveType' required.");
    }

    public DynamicRealmObject(a aVar, p pVar) {
        v<DynamicRealmObject> vVar = new v<>(this);
        this.proxyState = vVar;
        vVar.f6382e = aVar;
        vVar.f6380c = pVar;
        vVar.b = false;
    }
}
