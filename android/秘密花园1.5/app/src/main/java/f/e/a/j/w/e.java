package f.e.a.j.w;

import android.content.DialogInterface;
import com.comeback.data.ui.jhlf.DownloadActivity;
import com.comeback.data.ui.jhlf.InfoActivity;

/* compiled from: InfoActivity.java */
/* loaded from: classes.dex */
public class e implements DialogInterface.OnClickListener {
    public final /* synthetic */ InfoActivity a;

    public e(InfoActivity infoActivity) {
        this.a = infoActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        DownloadActivity.l(this.a);
        dialogInterface.dismiss();
    }
}
