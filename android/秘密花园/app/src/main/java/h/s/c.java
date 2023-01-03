package h.s;

import h.o.c.g;
import java.io.Serializable;
import java.util.regex.Pattern;

/* compiled from: Regex.kt */
/* loaded from: classes.dex */
public final class c implements Serializable {
    public final Pattern a;

    public c(String str) {
        Pattern compile = Pattern.compile(str);
        g.b(compile, "Pattern.compile(pattern)");
        this.a = compile;
    }

    public final boolean a(CharSequence charSequence) {
        if (charSequence != null) {
            return this.a.matcher(charSequence).matches();
        }
        g.f("input");
        throw null;
    }

    @Override // java.lang.Object
    public String toString() {
        String pattern = this.a.toString();
        g.b(pattern, "nativePattern.toString()");
        return pattern;
    }
}
