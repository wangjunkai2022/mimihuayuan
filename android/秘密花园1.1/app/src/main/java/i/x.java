package i;

import com.tencent.smtt.sdk.TbsListener;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: HttpUrl.kt */
/* loaded from: classes.dex */
public final class x {
    public final boolean a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6772c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6773d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6774e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6775f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f6776g;

    /* renamed from: h  reason: collision with root package name */
    public final List<String> f6777h;

    /* renamed from: i  reason: collision with root package name */
    public final String f6778i;

    /* renamed from: j  reason: collision with root package name */
    public final String f6779j;

    /* renamed from: l  reason: collision with root package name */
    public static final b f6771l = new b(null);

    /* renamed from: k  reason: collision with root package name */
    public static final char[] f6770k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* compiled from: HttpUrl.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        public static final C0115a f6780i = new C0115a(null);
        public String a;

        /* renamed from: d  reason: collision with root package name */
        public String f6782d;

        /* renamed from: f  reason: collision with root package name */
        public final List<String> f6784f;

        /* renamed from: g  reason: collision with root package name */
        public List<String> f6785g;

        /* renamed from: h  reason: collision with root package name */
        public String f6786h;
        public String b = "";

        /* renamed from: c  reason: collision with root package name */
        public String f6781c = "";

        /* renamed from: e  reason: collision with root package name */
        public int f6783e = -1;

        /* compiled from: HttpUrl.kt */
        /* renamed from: i.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0115a {
            public C0115a(h.o.c.f fVar) {
            }
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f6784f = arrayList;
            arrayList.add("");
        }

        public final a a(String str, String str2) {
            if (str != null) {
                if (this.f6785g == null) {
                    this.f6785g = new ArrayList();
                }
                List<String> list = this.f6785g;
                if (list != null) {
                    list.add(b.a(x.f6771l, str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, TbsListener.ErrorCode.RENAME_EXCEPTION));
                    List<String> list2 = this.f6785g;
                    if (list2 != null) {
                        list2.add(str2 != null ? b.a(x.f6771l, str2, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, TbsListener.ErrorCode.RENAME_EXCEPTION) : null);
                        return this;
                    }
                    h.o.c.g.e();
                    throw null;
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.f("name");
            throw null;
        }

        public final x b() {
            String str = this.a;
            if (str != null) {
                String d2 = b.d(x.f6771l, this.b, 0, 0, false, 7);
                String d3 = b.d(x.f6771l, this.f6781c, 0, 0, false, 7);
                String str2 = this.f6782d;
                if (str2 != null) {
                    int c2 = c();
                    List<String> c3 = x.f6771l.c(this.f6784f, false);
                    List<String> list = this.f6785g;
                    List<String> c4 = list != null ? x.f6771l.c(list, true) : null;
                    String str3 = this.f6786h;
                    return new x(str, d2, d3, str2, c2, c3, c4, str3 != null ? b.d(x.f6771l, str3, 0, 0, false, 7) : null, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        public final int c() {
            int i2 = this.f6783e;
            if (i2 != -1) {
                return i2;
            }
            String str = this.a;
            if (str == null) {
                h.o.c.g.e();
                throw null;
            } else if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != 3213448) {
                    if (hashCode == 99617003 && str.equals("https")) {
                        return 443;
                    }
                } else if (str.equals("http")) {
                    return 80;
                }
                return -1;
            } else {
                h.o.c.g.f("scheme");
                throw null;
            }
        }

        public final a d(String str) {
            ArrayList arrayList = null;
            if (str != null) {
                String a = b.a(x.f6771l, str, 0, 0, " \"'<>#", true, false, true, false, null, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM);
                ArrayList arrayList2 = new ArrayList();
                int i2 = 0;
                while (i2 <= a.length()) {
                    int i3 = h.s.d.i(a, '&', i2, false, 4);
                    if (i3 == -1) {
                        i3 = a.length();
                    }
                    int i4 = h.s.d.i(a, '=', i2, false, 4);
                    if (i4 != -1 && i4 <= i3) {
                        String substring = a.substring(i2, i4);
                        h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring);
                        String substring2 = a.substring(i4 + 1, i3);
                        h.o.c.g.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring2);
                    } else {
                        String substring3 = a.substring(i2, i3);
                        h.o.c.g.b(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring3);
                        arrayList2.add(null);
                    }
                    i2 = i3 + 1;
                }
                arrayList = arrayList2;
            }
            this.f6785g = arrayList;
            return this;
        }

        public final a e(String str) {
            if (str != null) {
                String r1 = c.a.a.b.g.h.r1(b.d(x.f6771l, str, 0, 0, false, 7));
                if (r1 != null) {
                    this.f6782d = r1;
                    return this;
                }
                throw new IllegalArgumentException(f.b.a.a.a.f("unexpected host: ", str));
            }
            h.o.c.g.f("host");
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:123:0x0265, code lost:
            if (65535 < r1) goto L137;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0066, code lost:
            if (r15 == ':') goto L31;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final i.x.a f(i.x r28, java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 904
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: i.x.a.f(i.x, java.lang.String):i.x$a");
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00fa, code lost:
            if (r19 != false) goto L49;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00fe A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0039 -> B:14:0x003a). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void g(java.lang.String r21, int r22, int r23) {
            /*
                Method dump skipped, instructions count: 255
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: i.x.a.g(java.lang.String, int, int):void");
        }

        public final a h(String str) {
            if (str != null) {
                if (h.s.d.d(str, "http", true)) {
                    this.a = "http";
                } else if (!h.s.d.d(str, "https", true)) {
                    throw new IllegalArgumentException(f.b.a.a.a.f("unexpected scheme: ", str));
                } else {
                    this.a = "https";
                }
                return this;
            }
            h.o.c.g.f("scheme");
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
            if ((r10.f6781c.length() > 0) != false) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00b4, code lost:
            if (r1 != r6) goto L82;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 345
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: i.x.a.toString():java.lang.String");
        }
    }

    /* compiled from: HttpUrl.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(h.o.c.f fVar) {
        }

        public static String a(b bVar, String str, int i2, int i3, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i4) {
            int i5 = (i4 & 1) != 0 ? 0 : i2;
            int length = (i4 & 2) != 0 ? str.length() : i3;
            boolean z5 = (i4 & 8) != 0 ? false : z;
            boolean z6 = (i4 & 16) != 0 ? false : z2;
            boolean z7 = (i4 & 32) != 0 ? false : z3;
            boolean z8 = (i4 & 64) != 0 ? false : z4;
            int i6 = 128;
            Charset charset2 = (i4 & 128) != 0 ? null : charset;
            if (bVar != null) {
                if (str != null) {
                    int i7 = i5;
                    while (i7 < length) {
                        int codePointAt = str.codePointAt(i7);
                        int i8 = 32;
                        int i9 = 2;
                        if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < i6 || z8) && !h.s.d.a(str2, (char) codePointAt, false, 2) && ((codePointAt != 37 || (z5 && (!z6 || bVar.b(str, i7, length)))) && (codePointAt != 43 || !z7)))) {
                            i7 += Character.charCount(codePointAt);
                            i6 = 128;
                        } else {
                            j.g gVar = new j.g();
                            gVar.d0(str, i5, i7);
                            j.g gVar2 = null;
                            while (i7 < length) {
                                int codePointAt2 = str.codePointAt(i7);
                                if (!z5 || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                                    if (codePointAt2 == 43 && z7) {
                                        gVar.c0(z5 ? "+" : "%2B");
                                    } else {
                                        if (codePointAt2 >= i8 && codePointAt2 != 127 && (codePointAt2 < 128 || z8)) {
                                            if (!h.s.d.a(str2, (char) codePointAt2, false, i9) && (codePointAt2 != 37 || (z5 && (!z6 || bVar.b(str, i7, length))))) {
                                                gVar.e0(codePointAt2);
                                                i7 += Character.charCount(codePointAt2);
                                                i9 = 2;
                                                i8 = 32;
                                            }
                                        }
                                        if (gVar2 == null) {
                                            gVar2 = new j.g();
                                        }
                                        if (charset2 != null && !h.o.c.g.a(charset2, StandardCharsets.UTF_8)) {
                                            gVar2.b0(str, i7, Character.charCount(codePointAt2) + i7, charset2);
                                        } else {
                                            gVar2.e0(codePointAt2);
                                        }
                                        while (!gVar2.p()) {
                                            int readByte = gVar2.readByte() & 255;
                                            gVar.Q(37);
                                            gVar.Q(x.f6770k[(readByte >> 4) & 15]);
                                            gVar.Q(x.f6770k[readByte & 15]);
                                        }
                                        i7 += Character.charCount(codePointAt2);
                                        i9 = 2;
                                        i8 = 32;
                                    }
                                }
                                i7 += Character.charCount(codePointAt2);
                                i9 = 2;
                                i8 = 32;
                            }
                            return gVar.I();
                        }
                    }
                    String substring = str.substring(i5, length);
                    h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    return substring;
                }
                h.o.c.g.f("$this$canonicalize");
                throw null;
            }
            throw null;
        }

        public static String d(b bVar, String str, int i2, int i3, boolean z, int i4) {
            int i5;
            if ((i4 & 1) != 0) {
                i2 = 0;
            }
            if ((i4 & 2) != 0) {
                i3 = str.length();
            }
            if ((i4 & 4) != 0) {
                z = false;
            }
            if (str != null) {
                int i6 = i2;
                while (i6 < i3) {
                    char charAt = str.charAt(i6);
                    if (charAt == '%' || (charAt == '+' && z)) {
                        j.g gVar = new j.g();
                        gVar.d0(str, i2, i6);
                        while (i6 < i3) {
                            int codePointAt = str.codePointAt(i6);
                            if (codePointAt == 37 && (i5 = i6 + 2) < i3) {
                                int w = i.m0.b.w(str.charAt(i6 + 1));
                                int w2 = i.m0.b.w(str.charAt(i5));
                                if (w != -1 && w2 != -1) {
                                    gVar.Q((w << 4) + w2);
                                    i6 = Character.charCount(codePointAt) + i5;
                                }
                                gVar.e0(codePointAt);
                                i6 += Character.charCount(codePointAt);
                            } else {
                                if (codePointAt == 43 && z) {
                                    gVar.Q(32);
                                    i6++;
                                }
                                gVar.e0(codePointAt);
                                i6 += Character.charCount(codePointAt);
                            }
                        }
                        return gVar.I();
                    }
                    i6++;
                }
                String substring = str.substring(i2, i3);
                h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return substring;
            }
            h.o.c.g.f("$this$percentDecode");
            throw null;
        }

        public final boolean b(String str, int i2, int i3) {
            int i4 = i2 + 2;
            return i4 < i3 && str.charAt(i2) == '%' && i.m0.b.w(str.charAt(i2 + 1)) != -1 && i.m0.b.w(str.charAt(i4)) != -1;
        }

        public final List<String> c(List<String> list, boolean z) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String next = it.next();
                arrayList.add(next != null ? d(this, next, 0, 0, z, 3) : null);
            }
            List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
            h.o.c.g.b(unmodifiableList, "Collections.unmodifiableList(result)");
            return unmodifiableList;
        }

        public final List<String> e(String str) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 <= str.length()) {
                int i3 = h.s.d.i(str, '&', i2, false, 4);
                if (i3 == -1) {
                    i3 = str.length();
                }
                int i4 = h.s.d.i(str, '=', i2, false, 4);
                if (i4 != -1 && i4 <= i3) {
                    String substring = str.substring(i2, i4);
                    h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    String substring2 = str.substring(i4 + 1, i3);
                    h.o.c.g.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                } else {
                    String substring3 = str.substring(i2, i3);
                    h.o.c.g.b(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                    arrayList.add(null);
                }
                i2 = i3 + 1;
            }
            return arrayList;
        }
    }

    public x(String str, String str2, String str3, String str4, int i2, List<String> list, List<String> list2, String str5, String str6) {
        this.b = str;
        this.f6772c = str2;
        this.f6773d = str3;
        this.f6774e = str4;
        this.f6775f = i2;
        this.f6776g = list;
        this.f6777h = list2;
        this.f6778i = str5;
        this.f6779j = str6;
        this.a = h.o.c.g.a(str, "https");
    }

    public static final x f(String str) {
        if (str != null) {
            a aVar = new a();
            aVar.f(null, str);
            return aVar.b();
        }
        h.o.c.g.f("$this$toHttpUrl");
        throw null;
    }

    public final String a() {
        if (this.f6773d.length() == 0) {
            return "";
        }
        int i2 = h.s.d.i(this.f6779j, ':', this.b.length() + 3, false, 4) + 1;
        int i3 = h.s.d.i(this.f6779j, '@', 0, false, 6);
        String str = this.f6779j;
        if (str != null) {
            String substring = str.substring(i2, i3);
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new h.f("null cannot be cast to non-null type java.lang.String");
    }

    public final String b() {
        int i2 = h.s.d.i(this.f6779j, '/', this.b.length() + 3, false, 4);
        String str = this.f6779j;
        int i3 = i.m0.b.i(str, "?#", i2, str.length());
        String str2 = this.f6779j;
        if (str2 != null) {
            String substring = str2.substring(i2, i3);
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new h.f("null cannot be cast to non-null type java.lang.String");
    }

    public final List<String> c() {
        int i2 = h.s.d.i(this.f6779j, '/', this.b.length() + 3, false, 4);
        String str = this.f6779j;
        int i3 = i.m0.b.i(str, "?#", i2, str.length());
        ArrayList arrayList = new ArrayList();
        while (i2 < i3) {
            int i4 = i2 + 1;
            int h2 = i.m0.b.h(this.f6779j, '/', i4, i3);
            String str2 = this.f6779j;
            if (str2 == null) {
                throw new h.f("null cannot be cast to non-null type java.lang.String");
            }
            String substring = str2.substring(i4, h2);
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(substring);
            i2 = h2;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f6777h == null) {
            return null;
        }
        int i2 = h.s.d.i(this.f6779j, '?', 0, false, 6) + 1;
        String str = this.f6779j;
        int h2 = i.m0.b.h(str, '#', i2, str.length());
        String str2 = this.f6779j;
        if (str2 != null) {
            String substring = str2.substring(i2, h2);
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new h.f("null cannot be cast to non-null type java.lang.String");
    }

    public final String e() {
        if (this.f6772c.length() == 0) {
            return "";
        }
        int length = this.b.length() + 3;
        String str = this.f6779j;
        int i2 = i.m0.b.i(str, ":@", length, str.length());
        String str2 = this.f6779j;
        if (str2 != null) {
            String substring = str2.substring(length, i2);
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new h.f("null cannot be cast to non-null type java.lang.String");
    }

    public boolean equals(Object obj) {
        return (obj instanceof x) && h.o.c.g.a(((x) obj).f6779j, this.f6779j);
    }

    public final a g() {
        int i2;
        a aVar = new a();
        aVar.a = this.b;
        aVar.b = e();
        aVar.f6781c = a();
        aVar.f6782d = this.f6774e;
        int i3 = this.f6775f;
        String str = this.b;
        String str2 = null;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 3213448) {
                if (hashCode == 99617003 && str.equals("https")) {
                    i2 = 443;
                }
                i2 = -1;
            } else {
                if (str.equals("http")) {
                    i2 = 80;
                }
                i2 = -1;
            }
            aVar.f6783e = i3 != i2 ? this.f6775f : -1;
            aVar.f6784f.clear();
            aVar.f6784f.addAll(c());
            aVar.d(d());
            if (this.f6778i != null) {
                int i4 = h.s.d.i(this.f6779j, '#', 0, false, 6) + 1;
                String str3 = this.f6779j;
                if (str3 == null) {
                    throw new h.f("null cannot be cast to non-null type java.lang.String");
                }
                str2 = str3.substring(i4);
                h.o.c.g.b(str2, "(this as java.lang.String).substring(startIndex)");
            }
            aVar.f6786h = str2;
            return aVar;
        }
        h.o.c.g.f("scheme");
        throw null;
    }

    public final a h(String str) {
        if (str != null) {
            try {
                a aVar = new a();
                aVar.f(this, str);
                return aVar;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        h.o.c.g.f("link");
        throw null;
    }

    public int hashCode() {
        return this.f6779j.hashCode();
    }

    public final String i(String str) {
        if (str != null) {
            List<String> list = this.f6777h;
            if (list == null) {
                return null;
            }
            h.p.a b2 = h.p.d.b(h.p.d.c(0, list.size()), 2);
            int i2 = b2.a;
            int i3 = b2.b;
            int i4 = b2.f6334c;
            if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                while (!h.o.c.g.a(str, this.f6777h.get(i2))) {
                    if (i2 != i3) {
                        i2 += i4;
                    }
                }
                return this.f6777h.get(i2 + 1);
            }
            return null;
        }
        h.o.c.g.f("name");
        throw null;
    }

    public final Set<String> j() {
        if (this.f6777h == null) {
            return h.k.k.a;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        h.p.a b2 = h.p.d.b(h.p.d.c(0, this.f6777h.size()), 2);
        int i2 = b2.a;
        int i3 = b2.b;
        int i4 = b2.f6334c;
        if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
            while (true) {
                String str = this.f6777h.get(i2);
                if (str == null) {
                    h.o.c.g.e();
                    throw null;
                }
                linkedHashSet.add(str);
                if (i2 == i3) {
                    break;
                }
                i2 += i4;
            }
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        h.o.c.g.b(unmodifiableSet, "Collections.unmodifiableSet(result)");
        return unmodifiableSet;
    }

    public final String k() {
        a h2 = h("/...");
        if (h2 == null) {
            h.o.c.g.e();
            throw null;
        } else if (h2 != null) {
            h2.b = b.a(f6771l, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
            h2.f6781c = b.a(f6771l, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
            return h2.b().f6779j;
        } else {
            throw null;
        }
    }

    public final x l(String str) {
        if (str != null) {
            a h2 = h(str);
            if (h2 != null) {
                return h2.b();
            }
            return null;
        }
        h.o.c.g.f("link");
        throw null;
    }

    public final URI m() {
        a g2 = g();
        int size = g2.f6784f.size();
        for (int i2 = 0; i2 < size; i2++) {
            List<String> list = g2.f6784f;
            list.set(i2, b.a(f6771l, list.get(i2), 0, 0, "[]", true, true, false, false, null, TbsListener.ErrorCode.HOST_CONTEXT_IS_NULL));
        }
        List<String> list2 = g2.f6785g;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str = list2.get(i3);
                list2.set(i3, str != null ? b.a(f6771l, str, 0, 0, "\\^`{|}", true, true, true, false, null, 195) : null);
            }
        }
        String str2 = g2.f6786h;
        g2.f6786h = str2 != null ? b.a(f6771l, str2, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, TbsListener.ErrorCode.STARTDOWNLOAD_4) : null;
        String aVar = g2.toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e2) {
            try {
                Pattern compile = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                h.o.c.g.b(compile, "Pattern.compile(pattern)");
                String replaceAll = compile.matcher(aVar).replaceAll("");
                h.o.c.g.b(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                URI create = URI.create(replaceAll);
                h.o.c.g.b(create, "URI.create(stripped)");
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String toString() {
        return this.f6779j;
    }
}
