package i;

import h.o.c.f;
import h.o.c.g;
import h.s.d;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MediaType.kt */
/* loaded from: classes.dex */
public final class z {

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f6787d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e  reason: collision with root package name */
    public static final Pattern f6788e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: f  reason: collision with root package name */
    public static final a f6789f = null;
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6790c;

    /* compiled from: MediaType.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public static final z a(String str) {
            String str2 = null;
            if (str != null) {
                Matcher matcher = z.f6787d.matcher(str);
                if (matcher.lookingAt()) {
                    String group = matcher.group(1);
                    g.b(group, "typeSubtype.group(1)");
                    Locale locale = Locale.US;
                    g.b(locale, "Locale.US");
                    String lowerCase = group.toLowerCase(locale);
                    g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    String group2 = matcher.group(2);
                    g.b(group2, "typeSubtype.group(2)");
                    Locale locale2 = Locale.US;
                    g.b(locale2, "Locale.US");
                    String lowerCase2 = group2.toLowerCase(locale2);
                    g.b(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    Matcher matcher2 = z.f6788e.matcher(str);
                    int end = matcher.end();
                    while (true) {
                        while (end < str.length()) {
                            matcher2.region(end, str.length());
                            if (matcher2.lookingAt()) {
                                String group3 = matcher2.group(1);
                                if (group3 == null || !d.d(group3, "charset", true)) {
                                    end = matcher2.end();
                                } else {
                                    str2 = matcher2.group(2);
                                    boolean z = false;
                                    if (str2 == null) {
                                        str2 = matcher2.group(3);
                                        g.b(str2, "parameter.group(3)");
                                    } else if (d.w(str2, "'", false, 2) && d.c(str2, "'", false, 2) && str2.length() > 2) {
                                        str2 = str2.substring(1, str2.length() - 1);
                                        g.b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    }
                                    if (str2 == null || d.d(str2, str2, true)) {
                                        z = true;
                                    }
                                    if (z) {
                                        end = matcher2.end();
                                    } else {
                                        throw new IllegalArgumentException(("Multiple charsets defined: \"" + str2 + "\" and: \"" + str2 + "\" for: \"" + str + '\"').toString());
                                    }
                                }
                            } else {
                                StringBuilder o = f.b.a.a.a.o("Parameter is not formatted correctly: \"");
                                String substring = str.substring(end);
                                g.b(substring, "(this as java.lang.String).substring(startIndex)");
                                o.append(substring);
                                o.append("\" for: \"");
                                o.append(str);
                                o.append('\"');
                                throw new IllegalArgumentException(o.toString().toString());
                            }
                        }
                        return new z(str, lowerCase, lowerCase2, str2, null);
                    }
                }
                throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
            }
            g.f("$this$toMediaType");
            throw null;
        }

        public static final z b(String str) {
            if (str != null) {
                try {
                    return a(str);
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            } else {
                g.f("$this$toMediaTypeOrNull");
                throw null;
            }
        }
    }

    public z(String str, String str2, String str3, String str4, f fVar) {
        this.a = str;
        this.b = str2;
        this.f6790c = str4;
    }

    public static Charset a(z zVar, Charset charset, int i2) {
        int i3 = i2 & 1;
        try {
            if (zVar.f6790c != null) {
                return Charset.forName(zVar.f6790c);
            }
            return null;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static final z b(String str) {
        return a.a(str);
    }

    public static final z c(String str) {
        return a.b(str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof z) && g.a(((z) obj).a, this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
