package g.a.f1;

import android.content.Context;
import f.g.a.f;
import java.io.File;

/* compiled from: RealmCore.java */
/* loaded from: classes.dex */
public class m {
    public static final String a = File.separator;
    public static final String b = File.pathSeparator;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f6235c = false;

    public static synchronized void a(Context context) {
        synchronized (m.class) {
            if (!f6235c) {
                new f().c(context, "realm-jni", "6.0.2", null);
                f6235c = true;
            }
        }
    }
}
