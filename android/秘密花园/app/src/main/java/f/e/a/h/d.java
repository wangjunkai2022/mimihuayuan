package f.e.a.h;

import com.comeback.data.ui.main.DownloadActivity;
import f.e.a.e;
import f.e.a.h.h.c;
import f.e.a.h.i.a;
import f.e.a.j.b0.i;
import java.util.TimerTask;

/* compiled from: M3U8DownloadTask.java */
/* loaded from: classes.dex */
public class d extends TimerTask {
    public final /* synthetic */ a a;

    public d(a aVar) {
        this.a = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        String str;
        a aVar = this.a;
        c cVar = aVar.a;
        if (cVar != null) {
            long j2 = aVar.f3790c;
            DownloadActivity downloadActivity = (DownloadActivity) cVar;
            if (j2 - downloadActivity.f1468e > 0) {
                StringBuilder sb = new StringBuilder();
                synchronized (a.class) {
                    if (a.a == null) {
                        a.a = new a();
                    }
                }
                a aVar2 = a.a;
                long j3 = j2 - downloadActivity.f1468e;
                if (aVar2 != null) {
                    if (j3 >= 1073741824) {
                        str = String.format(e.a("EkxSAks0ew=="), Float.valueOf(((float) j3) / 1.07374182E9f));
                    } else if (j3 >= 1048576) {
                        float f2 = ((float) j3) / 1048576.0f;
                        str = String.format(e.a(f2 > 100.0f ? "EkxTAks+ew==" : "EkxSAks+ew=="), Float.valueOf(f2));
                    } else if (j3 >= 1024) {
                        float f3 = ((float) j3) / 1024.0f;
                        str = String.format(e.a(f3 > 100.0f ? "EkxTAks4ew==" : "EkxSAks4ew=="), Float.valueOf(f3));
                    } else {
                        str = String.format(e.a("EgZDJg=="), Long.valueOf(j3));
                    }
                    downloadActivity.runOnUiThread(new i(downloadActivity, f.b.a.a.a.n(sb, str, "GBE=")));
                    downloadActivity.f1468e = j2;
                    return;
                }
                throw null;
            }
        }
    }
}
