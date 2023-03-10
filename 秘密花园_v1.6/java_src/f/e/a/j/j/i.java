package f.e.a.j.j;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.fengliu.FengliuActivity;
/* compiled from: FengliuActivity.java */
/* loaded from: classes.dex */
public class i implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public i(FengliuActivity fengliuActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
