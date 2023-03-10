package f.i.a.a;

import java.util.HashSet;
/* compiled from: ExoPlayerLibraryInfo.java */
/* loaded from: classes.dex */
public final class a0 {
    public static final HashSet<String> a = new HashSet<>();
    public static String b = "goog.exo.core";

    public static synchronized void a(String str) {
        synchronized (a0.class) {
            if (a.add(str)) {
                b += ", " + str;
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (a0.class) {
            str = b;
        }
        return str;
    }
}
