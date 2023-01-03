package g.a.f1.u;

import g.a.l0;
import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: FieldDescriptor.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f6245h = Pattern.compile("\\.");

    /* renamed from: i  reason: collision with root package name */
    public static final Set<RealmFieldType> f6246i;

    /* renamed from: j  reason: collision with root package name */
    public static final Set<RealmFieldType> f6247j;

    /* renamed from: k  reason: collision with root package name */
    public static final Set<RealmFieldType> f6248k;

    /* renamed from: l  reason: collision with root package name */
    public static final Set<RealmFieldType> f6249l;
    public final List<String> a;
    public final Set<RealmFieldType> b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<RealmFieldType> f6250c;

    /* renamed from: d  reason: collision with root package name */
    public String f6251d;

    /* renamed from: e  reason: collision with root package name */
    public RealmFieldType f6252e;

    /* renamed from: f  reason: collision with root package name */
    public long[] f6253f;

    /* renamed from: g  reason: collision with root package name */
    public long[] f6254g;

    /* compiled from: FieldDescriptor.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    static {
        HashSet hashSet = new HashSet(3);
        hashSet.add(RealmFieldType.OBJECT);
        hashSet.add(RealmFieldType.LIST);
        hashSet.add(RealmFieldType.LINKING_OBJECTS);
        f6246i = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(RealmFieldType.OBJECT);
        hashSet2.add(RealmFieldType.LIST);
        f6247j = Collections.unmodifiableSet(hashSet2);
        HashSet hashSet3 = new HashSet(1);
        hashSet3.add(RealmFieldType.LIST);
        Collections.unmodifiableSet(hashSet3);
        HashSet hashSet4 = new HashSet(1);
        hashSet4.add(RealmFieldType.OBJECT);
        f6248k = Collections.unmodifiableSet(hashSet4);
        f6249l = Collections.emptySet();
    }

    public c(String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        List<String> singletonList;
        if (str != null && !str.equals("")) {
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf != str.length() - 1) {
                if (lastIndexOf > -1) {
                    singletonList = Arrays.asList(f6245h.split(str));
                } else {
                    singletonList = Collections.singletonList(str);
                }
                this.a = singletonList;
                if (singletonList.size() > 0) {
                    this.b = set;
                    this.f6250c = set2;
                    return;
                }
                throw new IllegalArgumentException("Invalid query: Empty field descriptor");
            }
            throw new IllegalArgumentException("Invalid query: field name must not end with a period ('.')");
        }
        throw new IllegalArgumentException("Invalid query: field name is empty");
    }

    public static c c(a aVar, Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        c bVar;
        if (aVar != null) {
            if (((l0) aVar).a.f6286f != null) {
                String d2 = table.d();
                if (set == null) {
                    set = f6246i;
                }
                bVar = new g.a.f1.u.a(aVar, d2, str, set, set2);
                return bVar;
            }
        }
        if (set == null) {
            set = f6247j;
        }
        bVar = new b(table, str, set, set2);
        return bVar;
    }

    public static c d(a aVar, Table table, String str, RealmFieldType... realmFieldTypeArr) {
        return c(aVar, table, str, null, new HashSet(Arrays.asList(realmFieldTypeArr)));
    }

    public abstract void a(List<String> list);

    public final void b() {
        if (this.f6252e == null) {
            a(this.a);
        }
    }

    public final void e(String str, String str2, RealmFieldType realmFieldType, long[] jArr, long[] jArr2) {
        Set<RealmFieldType> set = this.f6250c;
        if (set != null && set.size() > 0) {
            f(str, str2, realmFieldType, this.f6250c);
        }
        this.f6251d = str2;
        this.f6252e = realmFieldType;
        this.f6253f = jArr;
        this.f6254g = jArr2;
    }

    public final void f(String str, String str2, RealmFieldType realmFieldType, Set<RealmFieldType> set) {
        if (!set.contains(realmFieldType)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' in class '%s' is of invalid type '%s'.", str2, str, realmFieldType.toString()));
        }
    }
}
