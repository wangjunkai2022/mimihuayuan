package m.l.a;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: RxAndroidPlugins.java */
/* loaded from: classes2.dex */
public final class a {
    public static final a b = new a();
    public final AtomicReference<b> a = new AtomicReference<>();

    public b a() {
        if (this.a.get() == null) {
            this.a.compareAndSet(null, b.a);
        }
        return this.a.get();
    }
}
