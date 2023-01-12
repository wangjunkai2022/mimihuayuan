package g.a.f1;

import io.realm.internal.NativeObjectReference;
import java.lang.ref.ReferenceQueue;

/* compiled from: NativeContext.java */
/* loaded from: classes.dex */
public class h {
    public static final ReferenceQueue<i> a = new ReferenceQueue<>();
    public static final Thread b = new Thread(new e(a));

    /* renamed from: c  reason: collision with root package name */
    public static final h f6308c = new h();

    static {
        b.setName("RealmFinalizingDaemon");
        b.start();
    }

    public void a(i iVar) {
        new NativeObjectReference(this, iVar, a);
    }
}
