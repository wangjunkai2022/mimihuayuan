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
        return (this.a != null) && !this.b;
    }

    public void b(String str) {
        if (!(this.a != null)) {
            throw new IllegalStateException(str != null ? f.b.a.a.a.g(str, " ", "Realm cannot be automatically updated on a thread without a looper.") : "");
        } else if (this.b) {
            throw new IllegalStateException(str != null ? f.b.a.a.a.g(str, " ", "Realm cannot be automatically updated on an IntentService thread.") : "");
        }
    }
}
