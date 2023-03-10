package i;

import i.m0.b;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* compiled from: Cookie.kt */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: j  reason: collision with root package name */
    public static final Pattern f6832j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k  reason: collision with root package name */
    public static final Pattern f6833k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l  reason: collision with root package name */
    public static final Pattern f6834l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f6835m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public static final n n = null;
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6836c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6837d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6838e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6839f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6840g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6841h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6842i;

    public n(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, h.o.c.f fVar) {
        this.a = str;
        this.b = str2;
        this.f6836c = j2;
        this.f6837d = str3;
        this.f6838e = str4;
        this.f6839f = z;
        this.f6840g = z2;
        this.f6841h = z3;
        this.f6842i = z4;
    }

    public static final int a(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && '9' >= charAt) || (('a' <= charAt && 'z' >= charAt) || (('A' <= charAt && 'Z' >= charAt) || charAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static final String b(String str) {
        if (!h.s.d.c(str, ".", false, 2)) {
            if (h.s.d.w(str, ".", false, 2)) {
                str = str.substring(".".length());
                h.o.c.g.b(str, "(this as java.lang.String).substring(startIndex)");
            }
            String t1 = c.a.a.b.g.h.t1(str);
            if (t1 != null) {
                return t1;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final long c(String str, int i2, int i3) {
        int a = a(str, i2, i3, false);
        Matcher matcher = f6835m.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (a < i3) {
            int a2 = a(str, a + 1, i3, true);
            matcher.region(a, a2);
            if (i5 == -1 && matcher.usePattern(f6835m).matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                i9 = Integer.parseInt(matcher.group(3));
                i8 = parseInt2;
                i5 = parseInt;
            } else if (i6 == -1 && matcher.usePattern(f6834l).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (i7 == -1 && matcher.usePattern(f6833k).matches()) {
                String group = matcher.group(1);
                h.o.c.g.b(group, "matcher.group(1)");
                Locale locale = Locale.US;
                h.o.c.g.b(locale, "Locale.US");
                String lowerCase = group.toLowerCase(locale);
                h.o.c.g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String pattern = f6833k.pattern();
                h.o.c.g.b(pattern, "MONTH_PATTERN.pattern()");
                i7 = h.s.d.j(pattern, lowerCase, 0, false, 6) / 4;
            } else if (i4 == -1 && matcher.usePattern(f6832j).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            }
            a = a(str, a2 + 1, i3, false);
        }
        if (70 <= i4 && 99 >= i4) {
            i4 += 1900;
        }
        if (i4 >= 0 && 69 >= i4) {
            i4 += 2000;
        }
        if (i4 >= 1601) {
            if (i7 != -1) {
                if (1 <= i6 && 31 >= i6) {
                    if (i5 >= 0 && 23 >= i5) {
                        if (i8 >= 0 && 59 >= i8) {
                            if (i9 >= 0 && 59 >= i9) {
                                GregorianCalendar gregorianCalendar = new GregorianCalendar(b.f6587e);
                                gregorianCalendar.setLenient(false);
                                gregorianCalendar.set(1, i4);
                                gregorianCalendar.set(2, i7 - 1);
                                gregorianCalendar.set(5, i6);
                                gregorianCalendar.set(11, i5);
                                gregorianCalendar.set(12, i8);
                                gregorianCalendar.set(13, i9);
                                gregorianCalendar.set(14, 0);
                                return gregorianCalendar.getTimeInMillis();
                            }
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (h.o.c.g.a(nVar.a, this.a) && h.o.c.g.a(nVar.b, this.b) && nVar.f6836c == this.f6836c && h.o.c.g.a(nVar.f6837d, this.f6837d) && h.o.c.g.a(nVar.f6838e, this.f6838e) && nVar.f6839f == this.f6839f && nVar.f6840g == this.f6840g && nVar.f6841h == this.f6841h && nVar.f6842i == this.f6842i) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        int hashCode = this.b.hashCode();
        int hashCode2 = this.f6837d.hashCode();
        return ((((((((this.f6838e.hashCode() + ((hashCode2 + ((((hashCode + ((this.a.hashCode() + 527) * 31)) * 31) + b.a(this.f6836c)) * 31)) * 31)) * 31) + defpackage.a.a(this.f6839f)) * 31) + defpackage.a.a(this.f6840g)) * 31) + defpackage.a.a(this.f6841h)) * 31) + defpackage.a.a(this.f6842i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.f6841h) {
            if (this.f6836c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(i.m0.e.c.b(new Date(this.f6836c)));
            }
        }
        if (!this.f6842i) {
            sb.append("; domain=");
            sb.append(this.f6837d);
        }
        sb.append("; path=");
        sb.append(this.f6838e);
        if (this.f6839f) {
            sb.append("; secure");
        }
        if (this.f6840g) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        h.o.c.g.b(sb2, "toString()");
        return sb2;
    }
}
