package g.a.f1.u;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* compiled from: DynamicFieldDescriptor.java */
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: m  reason: collision with root package name */
    public final Table f6328m;

    public b(Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str, set, set2);
        this.f6328m = table;
    }

    @Override // g.a.f1.u.c
    public void a(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        Table table = this.f6328m;
        String str = null;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        for (int i2 = 0; i2 < size; i2++) {
            str2 = list.get(i2);
            if (str2 != null && str2.length() > 0) {
                str = table.d();
                long f2 = table.f(str2);
                if (f2 >= 0) {
                    realmFieldType = table.h(f2);
                    if (i2 < size - 1) {
                        f(str, str2, realmFieldType, this.b);
                        table = table.i(f2);
                    }
                    jArr[i2] = f2;
                } else {
                    throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", str2, str));
                }
            } else {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
        }
        e(str, str2, realmFieldType, jArr, new long[size]);
    }
}
