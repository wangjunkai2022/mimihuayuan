package io.realm.log;

import android.util.Log;
import com.umeng.commonsdk.internal.utils.g;
import java.util.Locale;

/* loaded from: classes.dex */
public final class RealmLog {
    public static void a(String str, Object... objArr) {
        b(6, null, str, objArr);
    }

    public static void b(int i2, Throwable th, String str, Object... objArr) {
        if (i2 >= nativeGetLogLevel()) {
            StringBuilder sb = new StringBuilder();
            if (!(str == null || objArr == null || objArr.length <= 0)) {
                str = String.format(Locale.US, str, objArr);
            }
            if (th != null) {
                sb.append(Log.getStackTraceString(th));
            }
            if (str != null) {
                if (th != null) {
                    sb.append(g.a);
                }
                sb.append(str);
            }
            nativeLog(i2, "REALM_JAVA", th, sb.toString());
        }
    }

    public static void c(String str, Object... objArr) {
        b(5, null, str, objArr);
    }

    public static native int nativeGetLogLevel();

    public static native void nativeLog(int i2, String str, Throwable th, String str2);
}
