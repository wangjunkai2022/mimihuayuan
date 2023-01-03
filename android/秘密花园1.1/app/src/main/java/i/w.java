package i;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: Headers.kt */
/* loaded from: classes.dex */
public final class w implements Iterable<h.c<? extends String, ? extends String>>, h.o.c.o.a {
    public static final b b = new b(null);
    public final String[] a;

    /* compiled from: Headers.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public final List<String> a = new ArrayList(20);

        public final a a(String str, String str2) {
            if (str == null) {
                h.o.c.g.f("name");
                throw null;
            } else if (str2 != null) {
                if (str.length() > 0) {
                    int length = str.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        char charAt = str.charAt(i2);
                        if (!('!' <= charAt && '~' >= charAt)) {
                            throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str).toString());
                        }
                    }
                    int length2 = str2.length();
                    for (int i3 = 0; i3 < length2; i3++) {
                        char charAt2 = str2.charAt(i3);
                        if (!(charAt2 == '\t' || (' ' <= charAt2 && '~' >= charAt2))) {
                            throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i3), str, str2).toString());
                        }
                    }
                    c(str, str2);
                    return this;
                }
                throw new IllegalArgumentException("name is empty".toString());
            } else {
                h.o.c.g.f("value");
                throw null;
            }
        }

        public final a b(String str) {
            int i2 = h.s.d.i(str, ':', 1, false, 4);
            if (i2 != -1) {
                String substring = str.substring(0, i2);
                h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String substring2 = str.substring(i2 + 1);
                h.o.c.g.b(substring2, "(this as java.lang.String).substring(startIndex)");
                c(substring, substring2);
            } else if (str.charAt(0) == ':') {
                String substring3 = str.substring(1);
                h.o.c.g.b(substring3, "(this as java.lang.String).substring(startIndex)");
                c("", substring3);
            } else {
                c("", str);
            }
            return this;
        }

        public final a c(String str, String str2) {
            if (str == null) {
                h.o.c.g.f("name");
                throw null;
            } else if (str2 != null) {
                this.a.add(str);
                this.a.add(h.s.d.y(str2).toString());
                return this;
            } else {
                h.o.c.g.f("value");
                throw null;
            }
        }

        public final w d() {
            Object[] array = this.a.toArray(new String[0]);
            if (array != null) {
                return new w((String[]) array, null);
            }
            throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
        }

        public final String e(String str) {
            if (str != null) {
                h.p.a b = h.p.d.b(h.p.d.a(this.a.size() - 2, 0), 2);
                int i2 = b.a;
                int i3 = b.b;
                int i4 = b.f6334c;
                if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                    while (!h.s.d.d(str, this.a.get(i2), true)) {
                        if (i2 != i3) {
                            i2 += i4;
                        }
                    }
                    return this.a.get(i2 + 1);
                }
                return null;
            }
            h.o.c.g.f("name");
            throw null;
        }

        public final a f(String str) {
            if (str != null) {
                int i2 = 0;
                while (i2 < this.a.size()) {
                    if (h.s.d.d(str, this.a.get(i2), true)) {
                        this.a.remove(i2);
                        this.a.remove(i2);
                        i2 -= 2;
                    }
                    i2 += 2;
                }
                return this;
            }
            h.o.c.g.f("name");
            throw null;
        }

        public final a g(String str, String str2) {
            if (str2 != null) {
                if (str.length() > 0) {
                    int length = str.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        char charAt = str.charAt(i2);
                        if (!('!' <= charAt && '~' >= charAt)) {
                            throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str).toString());
                        }
                    }
                    int length2 = str2.length();
                    for (int i3 = 0; i3 < length2; i3++) {
                        char charAt2 = str2.charAt(i3);
                        if (!(charAt2 == '\t' || (' ' <= charAt2 && '~' >= charAt2))) {
                            throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i3), str, str2).toString());
                        }
                    }
                    f(str);
                    c(str, str2);
                    return this;
                }
                throw new IllegalArgumentException("name is empty".toString());
            }
            h.o.c.g.f("value");
            throw null;
        }
    }

    /* compiled from: Headers.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(h.o.c.f fVar) {
        }

        public final void a(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        public final void b(String str, String str2) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (!(charAt == '\t' || (' ' <= charAt && '~' >= charAt))) {
                    throw new IllegalArgumentException(i.m0.b.l("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str2, str).toString());
                }
            }
        }

        public final w c(String... strArr) {
            if (strArr != null) {
                if (strArr.length % 2 == 0) {
                    Object clone = strArr.clone();
                    if (clone != null) {
                        String[] strArr2 = (String[]) clone;
                        int length = strArr2.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (strArr2[i2] != null) {
                                String str = strArr2[i2];
                                if (str == null) {
                                    throw new h.f("null cannot be cast to non-null type kotlin.CharSequence");
                                }
                                strArr2[i2] = h.s.d.y(str).toString();
                            } else {
                                throw new IllegalArgumentException("Headers cannot be null".toString());
                            }
                        }
                        h.p.a b = h.p.d.b(h.p.d.c(0, strArr2.length), 2);
                        int i3 = b.a;
                        int i4 = b.b;
                        int i5 = b.f6334c;
                        if (i5 < 0 ? i3 >= i4 : i3 <= i4) {
                            while (true) {
                                String str2 = strArr2[i3];
                                String str3 = strArr2[i3 + 1];
                                a(str2);
                                b(str3, str2);
                                if (i3 == i4) {
                                    break;
                                }
                                i3 += i5;
                            }
                        }
                        return new w(strArr2, null);
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                }
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            h.o.c.g.f("namesAndValues");
            throw null;
        }
    }

    public w(String[] strArr, h.o.c.f fVar) {
        this.a = strArr;
    }

    public final String b(String str) {
        if (str != null) {
            String[] strArr = this.a;
            h.p.a b2 = h.p.d.b(h.p.d.a(strArr.length - 2, 0), 2);
            int i2 = b2.a;
            int i3 = b2.b;
            int i4 = b2.f6334c;
            if (i4 >= 0) {
                if (i2 > i3) {
                    return null;
                }
            } else if (i2 < i3) {
                return null;
            }
            while (!h.s.d.d(str, strArr[i2], true)) {
                if (i2 == i3) {
                    return null;
                }
                i2 += i4;
            }
            return strArr[i2 + 1];
        }
        h.o.c.g.f("name");
        throw null;
    }

    public final String c(int i2) {
        return this.a[i2 * 2];
    }

    public final a d() {
        a aVar = new a();
        List<String> list = aVar.a;
        String[] strArr = this.a;
        if (list == null) {
            h.o.c.g.f("$this$addAll");
            throw null;
        } else if (strArr != null) {
            List asList = Arrays.asList(strArr);
            h.o.c.g.b(asList, "ArraysUtilJVM.asList(this)");
            list.addAll(asList);
            return aVar;
        } else {
            h.o.c.g.f("elements");
            throw null;
        }
    }

    public final Map<String, List<String>> e() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        h.o.c.g.b(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        TreeMap treeMap = new TreeMap(comparator);
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            String c2 = c(i2);
            Locale locale = Locale.US;
            h.o.c.g.b(locale, "Locale.US");
            if (c2 != null) {
                String lowerCase = c2.toLowerCase(locale);
                h.o.c.g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                List list = (List) treeMap.get(lowerCase);
                if (list == null) {
                    list = new ArrayList(2);
                    treeMap.put(lowerCase, list);
                }
                list.add(f(i2));
            } else {
                throw new h.f("null cannot be cast to non-null type java.lang.String");
            }
        }
        return treeMap;
    }

    public boolean equals(Object obj) {
        return (obj instanceof w) && Arrays.equals(this.a, ((w) obj).a);
    }

    public final String f(int i2) {
        return this.a[(i2 * 2) + 1];
    }

    public final List<String> g(String str) {
        ArrayList arrayList = null;
        if (str != null) {
            int size = size();
            for (int i2 = 0; i2 < size; i2++) {
                if (h.s.d.d(str, c(i2), true)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(2);
                    }
                    arrayList.add(f(i2));
                }
            }
            if (arrayList != null) {
                List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
                h.o.c.g.b(unmodifiableList, "Collections.unmodifiableList(result)");
                return unmodifiableList;
            }
            return h.k.i.a;
        }
        h.o.c.g.f("name");
        throw null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }

    @Override // java.lang.Iterable
    public Iterator<h.c<? extends String, ? extends String>> iterator() {
        int size = size();
        h.c[] cVarArr = new h.c[size];
        for (int i2 = 0; i2 < size; i2++) {
            cVarArr[i2] = new h.c(c(i2), f(i2));
        }
        return new h.o.c.a(cVarArr);
    }

    public final int size() {
        return this.a.length / 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append(c(i2));
            sb.append(": ");
            sb.append(f(i2));
            sb.append(com.umeng.commonsdk.internal.utils.g.a);
        }
        String sb2 = sb.toString();
        h.o.c.g.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
