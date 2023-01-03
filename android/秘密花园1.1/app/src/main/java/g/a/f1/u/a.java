package g.a.f1.u;

import g.a.f1.c;
import g.a.f1.u.c;
import g.a.l0;
import io.realm.RealmFieldType;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* compiled from: CachedFieldDescriptor.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: m  reason: collision with root package name */
    public final c.a f6243m;
    public final String n;

    public a(c.a aVar, String str, String str2, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str2, set, set2);
        this.n = str;
        this.f6243m = aVar;
    }

    @Override // g.a.f1.u.c
    public void a(List<String> list) {
        long j2;
        int size = list.size();
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        String str = null;
        RealmFieldType realmFieldType = null;
        String str2 = this.n;
        int i2 = 0;
        while (i2 < size) {
            str = list.get(i2);
            if (str != null && str.length() > 0) {
                c.a d2 = ((l0) this.f6243m).a.c(str2).d(str);
                if (d2 != null) {
                    RealmFieldType realmFieldType2 = d2.b;
                    if (i2 < size - 1) {
                        f(str2, str, realmFieldType2, this.b);
                        str2 = d2.f6231c;
                    }
                    jArr[i2] = d2.a;
                    if (realmFieldType2 != RealmFieldType.LINKING_OBJECTS) {
                        j2 = 0;
                    } else {
                        j2 = ((l0) this.f6243m).a.f(d2.f6231c).a;
                    }
                    jArr2[i2] = j2;
                    i2++;
                    realmFieldType = realmFieldType2;
                } else {
                    throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", str, str2));
                }
            } else {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
        }
        e(str2, str, realmFieldType, jArr, jArr2);
    }
}
