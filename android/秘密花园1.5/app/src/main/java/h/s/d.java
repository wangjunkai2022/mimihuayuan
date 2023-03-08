package h.s;

import c.a.a.b.g.h;
import h.k.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: Indent.kt */
/* loaded from: classes.dex */
public class d {
    public static boolean a(CharSequence charSequence, char c2, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (charSequence != null) {
            return i(charSequence, c2, 0, z, 2) >= 0;
        }
        h.o.c.g.f("$this$contains");
        throw null;
    }

    public static boolean b(CharSequence charSequence, CharSequence charSequence2, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (charSequence != null) {
            return j(charSequence, (String) charSequence2, 0, z, 2) >= 0;
        }
        h.o.c.g.f("$this$contains");
        throw null;
    }

    public static boolean c(String str, String str2, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (str == null) {
            h.o.c.g.f("$this$endsWith");
            throw null;
        } else if (str2 == null) {
            h.o.c.g.f("suffix");
            throw null;
        } else if (!z) {
            return str.endsWith(str2);
        } else {
            return o(str, str.length() - str2.length(), str2, 0, str2.length(), true);
        }
    }

    public static final boolean d(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        } else if (!z) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static final int e(CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence.length() - 1;
        }
        h.o.c.g.f("$this$lastIndex");
        throw null;
    }

    public static final int f(CharSequence charSequence, String str, int i2, boolean z) {
        if (charSequence == null) {
            h.o.c.g.f("$this$indexOf");
            throw null;
        } else if (str != null) {
            if (!z && (charSequence instanceof String)) {
                return ((String) charSequence).indexOf(str, i2);
            }
            return h(charSequence, str, i2, charSequence.length(), z, false, 16);
        } else {
            h.o.c.g.f("string");
            throw null;
        }
    }

    public static final int g(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2) {
        h.p.a a;
        if (!z2) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = charSequence.length();
            if (i3 > length) {
                i3 = length;
            }
            a = new h.p.c(i2, i3);
        } else {
            int e2 = e(charSequence);
            if (i2 > e2) {
                i2 = e2;
            }
            if (i3 < 0) {
                i3 = 0;
            }
            a = h.p.d.a(i2, i3);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int i4 = a.a;
            int i5 = a.b;
            int i6 = a.f6409c;
            if (i6 >= 0) {
                if (i4 > i5) {
                    return -1;
                }
            } else if (i4 < i5) {
                return -1;
            }
            while (!o((String) charSequence2, 0, (String) charSequence, i4, charSequence2.length(), z)) {
                if (i4 == i5) {
                    return -1;
                }
                i4 += i6;
            }
            return i4;
        }
        int i7 = a.a;
        int i8 = a.b;
        int i9 = a.f6409c;
        if (i9 >= 0) {
            if (i7 > i8) {
                return -1;
            }
        } else if (i7 < i8) {
            return -1;
        }
        while (!p(charSequence2, 0, charSequence, i7, charSequence2.length(), z)) {
            if (i7 == i8) {
                return -1;
            }
            i7 += i9;
        }
        return i7;
    }

    public static /* synthetic */ int h(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2, int i4) {
        return g(charSequence, charSequence2, i2, i3, z, (i4 & 16) != 0 ? false : z2);
    }

    public static int i(CharSequence charSequence, char c2, int i2, boolean z, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if (charSequence != null) {
            if (!z && (charSequence instanceof String)) {
                return ((String) charSequence).indexOf(c2, i2);
            }
            return k(charSequence, new char[]{c2}, i2, z);
        }
        h.o.c.g.f("$this$indexOf");
        throw null;
    }

    public static /* synthetic */ int j(CharSequence charSequence, String str, int i2, boolean z, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return f(charSequence, str, i2, z);
    }

    public static final int k(CharSequence charSequence, char[] cArr, int i2, boolean z) {
        boolean z2;
        if (cArr != null) {
            if (!z && cArr.length == 1 && (charSequence instanceof String)) {
                return ((String) charSequence).indexOf(h.o1(cArr), i2);
            }
            if (i2 < 0) {
                i2 = 0;
            }
            int e2 = e(charSequence);
            if (i2 > e2) {
                return -1;
            }
            while (true) {
                char charAt = charSequence.charAt(i2);
                int length = cArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = false;
                        break;
                    } else if (h.O(cArr[i3], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (z2) {
                    return i2;
                }
                if (i2 == e2) {
                    return -1;
                }
                i2++;
            }
        } else {
            h.o.c.g.f("chars");
            throw null;
        }
    }

    public static final boolean l(CharSequence charSequence) {
        boolean z;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                h.p.c cVar = new h.p.c(0, charSequence.length() - 1);
                if (!(cVar instanceof Collection) || !((Collection) cVar).isEmpty()) {
                    Iterator<Integer> it = cVar.iterator();
                    while (((h.p.b) it).b) {
                        if (!h.q0(charSequence.charAt(((l) it).a()))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                return z;
            }
            return true;
        }
        h.o.c.g.f("$this$isBlank");
        throw null;
    }

    public static int m(CharSequence charSequence, char c2, int i2, boolean z, int i3) {
        boolean z2;
        if ((i3 & 2) != 0) {
            i2 = e(charSequence);
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if (charSequence != null) {
            if (!z && (charSequence instanceof String)) {
                return ((String) charSequence).lastIndexOf(c2, i2);
            }
            char[] cArr = {c2};
            if (!z && (charSequence instanceof String)) {
                return ((String) charSequence).lastIndexOf(h.o1(cArr), i2);
            }
            int e2 = e(charSequence);
            if (i2 > e2) {
                i2 = e2;
            }
            while (i2 >= 0) {
                char charAt = charSequence.charAt(i2);
                int i4 = 0;
                while (true) {
                    if (i4 >= 1) {
                        z2 = false;
                        break;
                    } else if (h.O(cArr[i4], charAt, z)) {
                        z2 = true;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (z2) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        h.o.c.g.f("$this$lastIndexOf");
        throw null;
    }

    public static h.r.c n(CharSequence charSequence, char[] cArr, int i2, boolean z, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z = false;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        if (i3 >= 0) {
            return new b(charSequence, i2, i3, new e(cArr, z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i3 + '.').toString());
    }

    public static final boolean o(String str, int i2, String str2, int i3, int i4, boolean z) {
        if (str == null) {
            h.o.c.g.f("$this$regionMatches");
            throw null;
        } else if (str2 == null) {
            h.o.c.g.f("other");
            throw null;
        } else if (!z) {
            return str.regionMatches(i2, str2, i3, i4);
        } else {
            return str.regionMatches(z, i2, str2, i3, i4);
        }
    }

    public static final boolean p(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4, boolean z) {
        if (charSequence == null) {
            h.o.c.g.f("$this$regionMatchesImpl");
            throw null;
        } else if (charSequence2 != null) {
            if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > charSequence2.length() - i4) {
                return false;
            }
            for (int i5 = 0; i5 < i4; i5++) {
                if (!h.O(charSequence.charAt(i2 + i5), charSequence2.charAt(i3 + i5), z)) {
                    return false;
                }
            }
            return true;
        } else {
            h.o.c.g.f("other");
            throw null;
        }
    }

    public static String q(String str, String str2, String str3, boolean z, int i2) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        if (str != null) {
            return h.r0(s(str, new String[]{str2}, z, 0, 4), str3, null, null, 0, null, null, 62);
        }
        h.o.c.g.f("$this$replace");
        throw null;
    }

    public static List r(CharSequence charSequence, char[] cArr, boolean z, int i2, int i3) {
        int i4 = 0;
        boolean z2 = (i3 & 2) != 0 ? false : z;
        int i5 = (i3 & 4) != 0 ? 0 : i2;
        if (charSequence != null) {
            int i6 = 10;
            if (cArr.length == 1) {
                String valueOf = String.valueOf(cArr[0]);
                if (i5 >= 0) {
                    int f2 = f(charSequence, valueOf, 0, z2);
                    if (f2 != -1 && i5 != 1) {
                        boolean z3 = i5 > 0;
                        if (z3 && i5 <= 10) {
                            i6 = i5;
                        }
                        ArrayList arrayList = new ArrayList(i6);
                        do {
                            arrayList.add(charSequence.subSequence(i4, f2).toString());
                            i4 = valueOf.length() + f2;
                            if (z3 && arrayList.size() == i5 - 1) {
                                break;
                            }
                            f2 = f(charSequence, valueOf, i4, z2);
                        } while (f2 != -1);
                        arrayList.add(charSequence.subSequence(i4, charSequence.length()).toString());
                        return arrayList;
                    }
                    return h.s0(charSequence.toString());
                }
                throw new IllegalArgumentException(("Limit must be non-negative, but was " + i5 + '.').toString());
            }
            h.r.d dVar = new h.r.d(n(charSequence, cArr, 0, z2, i5, 2));
            ArrayList arrayList2 = new ArrayList(h.A(dVar, 10));
            Iterator it = dVar.iterator();
            while (it.hasNext()) {
                arrayList2.add(x(charSequence, (h.p.c) it.next()));
            }
            return arrayList2;
        }
        h.o.c.g.f("$this$split");
        throw null;
    }

    public static h.r.c s(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if (i2 >= 0) {
            List asList = Arrays.asList(strArr);
            h.o.c.g.b(asList, "ArraysUtilJVM.asList(this)");
            return h.P0(new b(charSequence, 0, i2, new f(asList, z)), new g(charSequence));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
    }

    public static final boolean t(String str, String str2, int i2, boolean z) {
        if (str == null) {
            h.o.c.g.f("$this$startsWith");
            throw null;
        } else if (str2 == null) {
            h.o.c.g.f("prefix");
            throw null;
        } else if (!z) {
            return str.startsWith(str2, i2);
        } else {
            return o(str, i2, str2, 0, str2.length(), z);
        }
    }

    public static final boolean u(String str, String str2, boolean z) {
        if (str == null) {
            h.o.c.g.f("$this$startsWith");
            throw null;
        } else if (str2 == null) {
            h.o.c.g.f("prefix");
            throw null;
        } else if (!z) {
            return str.startsWith(str2);
        } else {
            return o(str, 0, str2, 0, str2.length(), z);
        }
    }

    public static /* synthetic */ boolean v(String str, String str2, int i2, boolean z, int i3) {
        if ((i3 & 4) != 0) {
            z = false;
        }
        return t(str, str2, i2, z);
    }

    public static /* synthetic */ boolean w(String str, String str2, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return u(str, str2, z);
    }

    public static final String x(CharSequence charSequence, h.p.c cVar) {
        if (charSequence == null) {
            h.o.c.g.f("$this$substring");
            throw null;
        } else if (cVar != null) {
            return charSequence.subSequence(Integer.valueOf(cVar.a).intValue(), Integer.valueOf(cVar.b).intValue() + 1).toString();
        } else {
            h.o.c.g.f("range");
            throw null;
        }
    }

    public static final CharSequence y(CharSequence charSequence) {
        if (charSequence != null) {
            int length = charSequence.length() - 1;
            int i2 = 0;
            boolean z = false;
            while (i2 <= length) {
                boolean q0 = h.q0(charSequence.charAt(!z ? i2 : length));
                if (z) {
                    if (!q0) {
                        break;
                    }
                    length--;
                } else if (q0) {
                    i2++;
                } else {
                    z = true;
                }
            }
            return charSequence.subSequence(i2, length + 1);
        }
        h.o.c.g.f("$this$trim");
        throw null;
    }

    public static String z(String str, String str2, int i2) {
        String str3;
        String str4 = (i2 & 1) != 0 ? "|" : null;
        if (str == null) {
            h.o.c.g.f("$this$trimMargin");
            throw null;
        } else if (str4 != null) {
            if (!l(str4)) {
                int i3 = 0;
                h.r.c s = s(str, new String[]{"\r\n", com.umeng.commonsdk.internal.utils.g.a, "\r"}, false, 0, 6);
                ArrayList arrayList = new ArrayList();
                h.r.e eVar = (h.r.e) s;
                for (T t : eVar.a) {
                    arrayList.add(eVar.b.d(t));
                }
                List T0 = h.T0(arrayList);
                int size = (T0.size() * 0) + str.length();
                int size2 = T0.size() - 1;
                ArrayList arrayList2 = new ArrayList();
                int i4 = 0;
                for (Object obj : T0) {
                    int i5 = i4 + 1;
                    if (i4 >= 0) {
                        String str5 = (String) obj;
                        if ((i4 == 0 || i4 == size2) && l(str5)) {
                            str5 = null;
                        } else {
                            int length = str5.length();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= length) {
                                    i6 = -1;
                                    break;
                                } else if (!h.q0(str5.charAt(i6))) {
                                    break;
                                } else {
                                    i6++;
                                }
                            }
                            if (i6 != -1 && v(str5, str4, i6, false, 4)) {
                                str3 = str5.substring(str4.length() + i6);
                                h.o.c.g.b(str3, "(this as java.lang.String).substring(startIndex)");
                            } else {
                                str3 = null;
                            }
                            if (str3 != null) {
                                str5 = str3;
                            }
                        }
                        if (str5 != null) {
                            arrayList2.add(str5);
                        }
                        i4 = i5;
                    } else {
                        h.q1();
                        throw null;
                    }
                }
                StringBuilder sb = new StringBuilder(size);
                sb.append((CharSequence) "");
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    i3++;
                    if (i3 > 1) {
                        sb.append((CharSequence) com.umeng.commonsdk.internal.utils.g.a);
                    }
                    h.f(sb, next, null);
                }
                sb.append((CharSequence) "");
                String sb2 = sb.toString();
                h.o.c.g.b(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
                return sb2;
            }
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        } else {
            h.o.c.g.f("marginPrefix");
            throw null;
        }
    }
}
