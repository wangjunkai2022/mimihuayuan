package f.e.a.h;

import androidx.core.view.PointerIconCompat;

/* compiled from: M3U8DownloadTask.java */
/* loaded from: classes.dex */
public class b extends Thread {
    public final /* synthetic */ f.e.a.h.h.a a;
    public final /* synthetic */ c b;

    public b(c cVar, f.e.a.h.h.a aVar) {
        this.b = cVar;
        this.a = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            a.a(this.b.a, this.a);
            if (this.b.a.f3872j != null) {
                this.b.a.f3872j.shutdown();
            }
            while (this.b.a.f3872j != null && !this.b.a.f3872j.isTerminated()) {
                Thread.sleep(100L);
            }
            if (this.b.a.f3866d) {
                this.b.a.f3873k.sendEmptyMessage(PointerIconCompat.TYPE_HELP);
                this.b.a.f3866d = false;
            }
        } catch (Exception unused) {
        }
    }
}
