package io.realm.internal.core;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import g.a.f1.u.c;
import g.a.m0;
import io.realm.RealmFieldType;
import io.realm.internal.Keep;
import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

@Keep
/* loaded from: classes.dex */
public class QueryDescriptor {
    public final boolean[] ascendings;
    public final long[][] columnIndices;
    public final Table table;
    public static final Set<RealmFieldType> SORT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.STRING, RealmFieldType.DATE)));
    public static final Set<RealmFieldType> DISTINCT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.STRING, RealmFieldType.DATE)));

    public QueryDescriptor(Table table, long[][] jArr, m0[] m0VarArr) {
        this.table = table;
        this.columnIndices = jArr;
        if (m0VarArr != null) {
            this.ascendings = new boolean[m0VarArr.length];
            for (int i2 = 0; i2 < m0VarArr.length; i2++) {
                this.ascendings[i2] = m0VarArr[i2].a;
            }
            return;
        }
        this.ascendings = null;
    }

    public static void checkFieldType(c cVar, Set<RealmFieldType> set, String str, String str2) {
        cVar.b();
        if (!set.contains(cVar.f6252e)) {
            Locale locale = Locale.US;
            cVar.b();
            cVar.b();
            throw new IllegalArgumentException(String.format(locale, "%s on '%s' field '%s' in '%s'.", str, cVar.f6252e, cVar.f6251d, str2));
        }
    }

    public static QueryDescriptor getInstance(c.a aVar, Table table, String[] strArr, m0[] m0VarArr, Set<RealmFieldType> set, Set<RealmFieldType> set2, String str) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one field name.");
        }
        long[][] jArr = new long[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            c c2 = c.c(aVar, table, strArr[i2], set, null);
            checkFieldType(c2, set2, str, strArr[i2]);
            c2.b();
            long[] jArr2 = c2.f6253f;
            jArr[i2] = Arrays.copyOf(jArr2, jArr2.length);
        }
        return new QueryDescriptor(table, jArr, m0VarArr);
    }

    public static QueryDescriptor getInstanceForDistinct(c.a aVar, Table table, String str) {
        return getInstanceForDistinct(aVar, table, new String[]{str});
    }

    public static QueryDescriptor getInstanceForSort(c.a aVar, Table table, String str, m0 m0Var) {
        return getInstanceForSort(aVar, table, new String[]{str}, new m0[]{m0Var});
    }

    private long getTablePtr() {
        return this.table.a;
    }

    public static QueryDescriptor getTestInstance(Table table, long[] jArr) {
        return new QueryDescriptor(table, new long[][]{jArr}, null);
    }

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public boolean[] getAscendings() {
        return this.ascendings;
    }

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public long[][] getColumnIndices() {
        return this.columnIndices;
    }

    public static QueryDescriptor getInstanceForDistinct(c.a aVar, Table table, String[] strArr) {
        return getInstance(aVar, table, strArr, null, c.f6249l, DISTINCT_VALID_FIELD_TYPES, "Distinct is not supported");
    }

    public static QueryDescriptor getInstanceForSort(c.a aVar, Table table, String[] strArr, m0[] m0VarArr) {
        if (m0VarArr == null || m0VarArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one sort order.");
        } else if (strArr.length == m0VarArr.length) {
            return getInstance(aVar, table, strArr, m0VarArr, c.f6248k, SORT_VALID_FIELD_TYPES, "Sort is not supported");
        } else {
            throw new IllegalArgumentException("Number of fields and sort orders do not match.");
        }
    }
}
