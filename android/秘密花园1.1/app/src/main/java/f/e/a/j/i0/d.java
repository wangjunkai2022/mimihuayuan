package f.e.a.j.i0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.senlin.ZYBrowseActivity;

/* compiled from: ZYBrowseActivity.java */
/* loaded from: classes.dex */
public class d implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public d(ZYBrowseActivity zYBrowseActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
