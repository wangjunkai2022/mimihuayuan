package f.e.a.j.p;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.hgdd.HGDDBrowseActivity;
/* compiled from: HGDDBrowseActivity.java */
/* loaded from: classes.dex */
public class c implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public c(HGDDBrowseActivity hGDDBrowseActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
