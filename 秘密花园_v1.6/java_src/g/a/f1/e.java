package g.a.f1;

import io.realm.internal.NativeObjectReference;
import io.realm.log.RealmLog;
import java.lang.ref.ReferenceQueue;
/* compiled from: FinalizerRunnable.java */
/* loaded from: classes.dex */
public class e implements Runnable {
    public final ReferenceQueue<i> a;

    public e(ReferenceQueue<i> referenceQueue) {
        this.a = referenceQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                ((NativeObjectReference) this.a.remove()).a();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                RealmLog.b(7, null, "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore", new Object[0]);
                return;
            }
        }
    }
}
