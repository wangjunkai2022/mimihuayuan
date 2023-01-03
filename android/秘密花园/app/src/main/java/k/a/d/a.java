package k.a.d;

import com.umeng.commonsdk.debug.UMLog;
import j.b;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;

/* compiled from: StringUtil.java */
/* loaded from: classes.dex */
public final class a {
    public static final String[] a = {"", " ", "  ", "   ", "    ", UMLog.INDENT, "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};
    public static final Stack<StringBuilder> b = new Stack<>();

    public static void a(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (!(codePointAt == 32 || codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13 || codePointAt == 160)) {
                if (!(codePointAt == 8203 || codePointAt == 173)) {
                    sb.appendCodePoint(codePointAt);
                    z2 = true;
                    z3 = false;
                }
            } else if ((!z || z2) && !z3) {
                sb.append(' ');
                z3 = true;
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    public static StringBuilder b() {
        StringBuilder sb;
        synchronized (b) {
            if (b.empty()) {
                sb = new StringBuilder(8192);
            } else {
                sb = b.pop();
            }
        }
        return sb;
    }

    public static boolean c(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean e(String str) {
        if (!(str == null || str.length() == 0)) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!g(str.codePointAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean f(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(str.codePointAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean g(int i2) {
        return i2 == 32 || i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13;
    }

    public static String h(Collection collection, String str) {
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return "";
        }
        String obj = it.next().toString();
        if (!it.hasNext()) {
            return obj;
        }
        StringBuilder b2 = b();
        b2.append(obj);
        while (it.hasNext()) {
            b2.append(str);
            b2.append(it.next());
        }
        return j(b2);
    }

    public static String i(int i2) {
        if (i2 >= 0) {
            String[] strArr = a;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
            char[] cArr = new char[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                cArr[i3] = ' ';
            }
            return String.valueOf(cArr);
        }
        throw new IllegalArgumentException("width must be > 0");
    }

    public static String j(StringBuilder sb) {
        b.s(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        synchronized (b) {
            b.push(sb);
            while (b.size() > 8) {
                b.pop();
            }
        }
        return sb2;
    }

    public static String k(String str, String str2) {
        try {
            try {
                return l(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }

    public static URL l(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        if (str.indexOf(46) == 0 && url.getFile().indexOf(47) != 0) {
            String protocol = url.getProtocol();
            String host = url.getHost();
            int port = url.getPort();
            StringBuilder o = f.b.a.a.a.o("/");
            o.append(url.getFile());
            url = new URL(protocol, host, port, o.toString());
        }
        return new URL(url, str);
    }
}
