package h.s;

import java.nio.charset.Charset;
/* compiled from: Charsets.kt */
/* loaded from: classes.dex */
public final class a {
    public static final Charset a;
    public static Charset b;

    /* renamed from: c  reason: collision with root package name */
    public static Charset f6423c;

    /* renamed from: d  reason: collision with root package name */
    public static final a f6424d = null;

    static {
        Charset forName = Charset.forName("UTF-8");
        h.o.c.g.b(forName, "Charset.forName(\"UTF-8\")");
        a = forName;
        h.o.c.g.b(Charset.forName("UTF-16"), "Charset.forName(\"UTF-16\")");
        h.o.c.g.b(Charset.forName("UTF-16BE"), "Charset.forName(\"UTF-16BE\")");
        h.o.c.g.b(Charset.forName("UTF-16LE"), "Charset.forName(\"UTF-16LE\")");
        h.o.c.g.b(Charset.forName("US-ASCII"), "Charset.forName(\"US-ASCII\")");
        h.o.c.g.b(Charset.forName("ISO-8859-1"), "Charset.forName(\"ISO-8859-1\")");
    }
}
