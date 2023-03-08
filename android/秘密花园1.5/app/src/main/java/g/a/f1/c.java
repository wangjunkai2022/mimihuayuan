package g.a.f1;

import io.realm.RealmFieldType;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.Property;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: ColumnInfo.java */
/* loaded from: classes.dex */
public abstract class c {
    public final Map<String, a> a;
    public final Map<String, a> b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f6304c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6305d;

    /* compiled from: ColumnInfo.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final long a;
        public final RealmFieldType b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6306c;

        public a(Property property) {
            RealmFieldType realmFieldType;
            long nativeGetColumnIndex = Property.nativeGetColumnIndex(property.a);
            int nativeGetType = Property.nativeGetType(property.a);
            int i2 = nativeGetType & (-65);
            switch (i2) {
                case 0:
                    realmFieldType = RealmFieldType.INTEGER;
                    break;
                case 1:
                    realmFieldType = RealmFieldType.BOOLEAN;
                    break;
                case 2:
                    realmFieldType = RealmFieldType.STRING;
                    break;
                case 3:
                    realmFieldType = RealmFieldType.BINARY;
                    break;
                case 4:
                    realmFieldType = RealmFieldType.DATE;
                    break;
                case 5:
                    realmFieldType = RealmFieldType.FLOAT;
                    break;
                case 6:
                    realmFieldType = RealmFieldType.DOUBLE;
                    break;
                case 7:
                    realmFieldType = RealmFieldType.OBJECT;
                    break;
                default:
                    switch (i2) {
                        case 128:
                            realmFieldType = RealmFieldType.INTEGER_LIST;
                            break;
                        case 129:
                            realmFieldType = RealmFieldType.BOOLEAN_LIST;
                            break;
                        case 130:
                            realmFieldType = RealmFieldType.STRING_LIST;
                            break;
                        case 131:
                            realmFieldType = RealmFieldType.BINARY_LIST;
                            break;
                        case 132:
                            realmFieldType = RealmFieldType.DATE_LIST;
                            break;
                        case 133:
                            realmFieldType = RealmFieldType.FLOAT_LIST;
                            break;
                        case 134:
                            realmFieldType = RealmFieldType.DOUBLE_LIST;
                            break;
                        case 135:
                            realmFieldType = RealmFieldType.LIST;
                            break;
                        case 136:
                            realmFieldType = RealmFieldType.LINKING_OBJECTS;
                            break;
                        default:
                            throw new IllegalArgumentException(String.format(Locale.US, "Unsupported property type: '%d'", Integer.valueOf(nativeGetType)));
                    }
            }
            String nativeGetLinkedObjectName = Property.nativeGetLinkedObjectName(property.a);
            this.a = nativeGetColumnIndex;
            this.b = realmFieldType;
            this.f6306c = nativeGetLinkedObjectName;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ColumnDetails[");
            sb.append(this.a);
            sb.append(", ");
            sb.append(this.b);
            sb.append(", ");
            return f.b.a.a.a.l(sb, this.f6306c, "]");
        }
    }

    public c(int i2, boolean z) {
        this.a = new HashMap(i2);
        this.b = new HashMap(i2);
        this.f6304c = new HashMap(i2);
        this.f6305d = z;
    }

    public final long a(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property property = new Property(OsObjectSchemaInfo.nativeGetProperty(osObjectSchemaInfo.a, str2));
        a aVar = new a(property);
        this.a.put(str, aVar);
        this.b.put(str2, aVar);
        this.f6304c.put(str, str2);
        return Property.nativeGetColumnIndex(property.a);
    }

    public abstract void b(c cVar, c cVar2);

    public void c(c cVar) {
        if (!this.f6305d) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        }
        if (cVar != null) {
            this.a.clear();
            this.a.putAll(cVar.a);
            this.b.clear();
            this.b.putAll(cVar.b);
            this.f6304c.clear();
            this.f6304c.putAll(cVar.f6304c);
            b(cVar, this);
            return;
        }
        throw new NullPointerException("Attempt to copy null ColumnInfo");
    }

    public a d(String str) {
        return this.a.get(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnInfo[");
        StringBuilder o = f.b.a.a.a.o("mutable=");
        o.append(this.f6305d);
        sb.append(o.toString());
        sb.append(",");
        boolean z = false;
        if (this.a != null) {
            sb.append("JavaFieldNames=[");
            boolean z2 = false;
            for (Map.Entry<String, a> entry : this.a.entrySet()) {
                if (z2) {
                    sb.append(",");
                }
                sb.append(entry.getKey());
                sb.append("->");
                sb.append(entry.getValue());
                z2 = true;
            }
            sb.append("]");
        }
        if (this.b != null) {
            sb.append(", InternalFieldNames=[");
            for (Map.Entry<String, a> entry2 : this.b.entrySet()) {
                if (z) {
                    sb.append(",");
                }
                sb.append(entry2.getKey());
                sb.append("->");
                sb.append(entry2.getValue());
                z = true;
            }
            sb.append("]");
        }
        sb.append("]");
        return sb.toString();
    }
}
