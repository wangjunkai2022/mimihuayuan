package g.a.f1;

import android.content.Context;
import java.io.File;

/* compiled from: RealmCore.java */
/* loaded from: classes.dex */
public class m {
    public static final String a = File.separator;
    public static final String b = File.pathSeparator;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f6310c = false;

    public static synchronized void a(Context context) {
        synchronized (m.class) {
            if (f6310c) {
                return;
            }
            new f.g.a.f().c(context, "realm-jni", "6.0.2", null);
            f6310c = true;
        }
    }
}
