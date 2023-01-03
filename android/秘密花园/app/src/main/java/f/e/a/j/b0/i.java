package f.e.a.j.b0;

import com.comeback.data.ui.main.DownloadActivity;

/* compiled from: DownloadActivity.java */
/* loaded from: classes.dex */
public class i implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ DownloadActivity b;

    public i(DownloadActivity downloadActivity, String str) {
        this.b = downloadActivity;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.tvSpeed.setText(this.a);
    }
}
