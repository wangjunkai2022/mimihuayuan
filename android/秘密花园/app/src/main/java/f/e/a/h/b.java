package f.e.a.h;

import androidx.core.view.PointerIconCompat;
import f.e.a.h.h.a;

/* compiled from: M3U8DownloadTask.java */
/* loaded from: classes.dex */
public class b extends Thread {
    public final /* synthetic */ a a;
    public final /* synthetic */ c b;

    public b(c cVar, a aVar) {
        this.b = cVar;
        this.a = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            a.a(this.b.a, this.a);
            if (this.b.a.f3797j != null) {
                this.b.a.f3797j.shutdown();
            }
            while (this.b.a.f3797j != null && !this.b.a.f3797j.isTerminated()) {
                Thread.sleep(100);
            }
            if (this.b.a.f3791d) {
                this.b.a.f3798k.sendEmptyMessage(PointerIconCompat.TYPE_HELP);
                this.b.a.f3791d = false;
            }
        } catch (Exception unused) {
        }
    }
}
