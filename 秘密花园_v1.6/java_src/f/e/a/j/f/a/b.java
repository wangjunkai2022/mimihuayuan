package f.e.a.j.f.a;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
/* compiled from: DialogUtils.java */
/* loaded from: classes.dex */
public final class b implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public b(AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
