package g.a.f1.s;

import android.os.Looper;

/* compiled from: AndroidCapabilities.java */
/* loaded from: classes.dex */
public class a implements g.a.f1.a {
    public final Looper a = Looper.myLooper();
    public final boolean b;

    public a() {
        String name = Thread.currentThread().getName();
        this.b = name != null && name.startsWith("IntentService[");
    }

    public boolean a() {
        if (!(this.a != null) || this.b) {
            return false;
        }
        return true;
    }

    public void b(String str) {
        String str2 = "";
        if (!(this.a != null)) {
            if (str != null) {
                str2 = f.b.a.a.a.g(str, " ", "Realm cannot be automatically updated on a thread without a looper.");
            }
            throw new IllegalStateException(str2);
        } else if (this.b) {
            if (str != null) {
                str2 = f.b.a.a.a.g(str, " ", "Realm cannot be automatically updated on an IntentService thread.");
            }
            throw new IllegalStateException(str2);
        }
    }
}
