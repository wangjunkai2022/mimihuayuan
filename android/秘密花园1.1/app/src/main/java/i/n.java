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
    public static final Pattern f6748j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k  reason: collision with root package name */
    public static final Pattern f6749k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l  reason: collision with root package name */
    public static final Pattern f6750l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f6751m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public static final n n = null;
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6752c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6753d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6754e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6755f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6756g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6757h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6758i;

    public n(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, h.o.c.f fVar) {
        this.a = str;
        this.b = str2;
        this.f6752c = j2;
        this.f6753d = str3;
        this.f6754e = str4;
        this.f6755f = z;
        this.f6756g = z2;
        this.f6757h = z3;
        this.f6758i = z4;
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
            String r1 = c.a.a.b.g.h.r1(str);
            if (r1 != null) {
                return r1;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final long c(String str, int i2, int i3) {
        int a = a(str, i2, i3, false);
        Matcher matcher = f6751m.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (a < i3) {
            int a2 = a(str, a + 1, i3, true);
            matcher.region(a, a2);
            if (i5 == -1 && matcher.usePattern(f6751m).matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                i9 = Integer.parseInt(matcher.group(3));
                i8 = parseInt2;
                i5 = parseInt;
            } else if (i6 == -1 && matcher.usePattern(f6750l).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (i7 == -1 && matcher.usePattern(f6749k).matches()) {
                String group = matcher.group(1);
                h.o.c.g.b(group, "matcher.group(1)");
                Locale locale = Locale.US;
                h.o.c.g.b(locale, "Locale.US");
                String lowerCase = group.toLowerCase(locale);
                h.o.c.g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String pattern = f6749k.pattern();
                h.o.c.g.b(pattern, "MONTH_PATTERN.pattern()");
                i7 = h.s.d.j(pattern, lowerCase, 0, false, 6) / 4;
            } else if (i4 == -1 && matcher.usePattern(f6748j).matches()) {
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
                                GregorianCalendar gregorianCalendar = new GregorianCalendar(b.f6503e);
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
            if (h.o.c.g.a(nVar.a, this.a) && h.o.c.g.a(nVar.b, this.b) && nVar.f6752c == this.f6752c && h.o.c.g.a(nVar.f6753d, this.f6753d) && h.o.c.g.a(nVar.f6754e, this.f6754e) && nVar.f6755f == this.f6755f && nVar.f6756g == this.f6756g && nVar.f6757h == this.f6757h && nVar.f6758i == this.f6758i) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        int hashCode = this.b.hashCode();
        int hashCode2 = this.f6753d.hashCode();
        return ((((((((this.f6754e.hashCode() + ((hashCode2 + ((((hashCode + ((this.a.hashCode() + 527) * 31)) * 31) + b.a(this.f6752c)) * 31)) * 31)) * 31) + defpackage.a.a(this.f6755f)) * 31) + defpackage.a.a(this.f6756g)) * 31) + defpackage.a.a(this.f6757h)) * 31) + defpackage.a.a(this.f6758i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.f6757h) {
            if (this.f6752c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(i.m0.e.c.b(new Date(this.f6752c)));
            }
        }
        if (!this.f6758i) {
            sb.append("; domain=");
            sb.append(this.f6753d);
        }
        sb.append("; path=");
        sb.append(this.f6754e);
        if (this.f6755f) {
            sb.append("; secure");
        }
        if (this.f6756g) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        h.o.c.g.b(sb2, "toString()");
        return sb2;
    }
}
