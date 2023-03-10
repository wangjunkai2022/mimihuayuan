package i.m0.e;

import i.c0;
import java.io.IOException;
import java.net.ProtocolException;
/* compiled from: StatusLine.kt */
/* loaded from: classes.dex */
public final class j {
    public final c0 a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6682c;

    public j(c0 c0Var, int i2, String str) {
        if (c0Var == null) {
            h.o.c.g.f("protocol");
            throw null;
        } else if (str == null) {
            h.o.c.g.f("message");
            throw null;
        } else {
            this.a = c0Var;
            this.b = i2;
            this.f6682c = str;
        }
    }

    public static final j a(String str) throws IOException {
        String str2;
        c0 c0Var = c0.HTTP_1_0;
        if (str != null) {
            int i2 = 9;
            if (h.s.d.w(str, "HTTP/1.", false, 2)) {
                if (str.length() >= 9 && str.charAt(8) == ' ') {
                    int charAt = str.charAt(7) - '0';
                    if (charAt != 0) {
                        if (charAt == 1) {
                            c0Var = c0.HTTP_1_1;
                        } else {
                            throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
                        }
                    }
                } else {
                    throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
                }
            } else if (!h.s.d.w(str, "ICY ", false, 2)) {
                throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
            } else {
                i2 = 4;
            }
            int i3 = i2 + 3;
            if (str.length() >= i3) {
                try {
                    String substring = str.substring(i2, i3);
                    h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    int parseInt = Integer.parseInt(substring);
                    if (str.length() <= i3) {
                        str2 = "";
                    } else if (str.charAt(i3) == ' ') {
                        str2 = str.substring(i2 + 4);
                        h.o.c.g.b(str2, "(this as java.lang.String).substring(startIndex)");
                    } else {
                        throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
                    }
                    return new j(c0Var, parseInt, str2);
                } catch (NumberFormatException unused) {
                    throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
                }
            }
            throw new ProtocolException(f.b.a.a.a.f("Unexpected status line: ", str));
        }
        h.o.c.g.f("statusLine");
        throw null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.a == c0.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.f6682c);
        String sb2 = sb.toString();
        h.o.c.g.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
