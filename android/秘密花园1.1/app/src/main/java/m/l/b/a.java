package m.l.b;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;
import m.g;

/* compiled from: AndroidSchedulers.java */
/* loaded from: classes2.dex */
public final class a {
    public static final AtomicReference<a> b = new AtomicReference<>();
    public final g a;

    public a() {
        if (m.l.a.a.b.a() != null) {
            this.a = new b(Looper.getMainLooper());
            return;
        }
        throw null;
    }

    public static g a() {
        a aVar;
        do {
            aVar = b.get();
            if (aVar != null) {
                break;
            }
            aVar = new a();
        } while (!b.compareAndSet(null, aVar));
        return aVar.a;
    }
}
