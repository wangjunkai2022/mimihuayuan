package h.s;

import java.io.Serializable;
import java.util.regex.Pattern;
/* compiled from: Regex.kt */
/* loaded from: classes.dex */
public final class c implements Serializable {
    public final Pattern a;

    public c(String str) {
        Pattern compile = Pattern.compile(str);
        h.o.c.g.b(compile, "Pattern.compile(pattern)");
        this.a = compile;
    }

    public final boolean a(CharSequence charSequence) {
        if (charSequence != null) {
            return this.a.matcher(charSequence).matches();
        }
        h.o.c.g.f("input");
        throw null;
    }

    public String toString() {
        String pattern = this.a.toString();
        h.o.c.g.b(pattern, "nativePattern.toString()");
        return pattern;
    }
}
