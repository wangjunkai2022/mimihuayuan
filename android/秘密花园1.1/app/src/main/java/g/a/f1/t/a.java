package g.a.f1.t;

import android.os.Process;

/* compiled from: BgPriorityRunnable.java */
/* loaded from: classes.dex */
public class a implements Runnable {
    public final Runnable a;

    public a(Runnable runnable) {
        this.a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        this.a.run();
    }
}
