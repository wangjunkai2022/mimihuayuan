package f.e.a.j.w;

import android.content.DialogInterface;
import com.comeback.data.ui.jhlf.InfoActivity;

/* compiled from: InfoActivity.java */
/* loaded from: classes.dex */
public class f implements DialogInterface.OnClickListener {
    public f(InfoActivity infoActivity) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
    }
}
