package f.e.a.h;

import com.comeback.data.ui.main.DownloadActivity;
import f.e.a.h.h.d;

/* compiled from: M3U8DownloadTask.java */
/* loaded from: classes.dex */
public class c implements d {
    public final /* synthetic */ a a;

    public c(a aVar) {
        this.a = aVar;
    }

    public void a() {
        f.e.a.h.h.c cVar = this.a.a;
        if (cVar != null) {
            ((DownloadActivity) cVar).rlDown.setVisibility(0);
        }
        this.a.f3791d = true;
    }
}
