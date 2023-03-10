package f.e.a.j.v;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.jav.JavActivity;
/* compiled from: JavActivity.java */
/* loaded from: classes.dex */
public class b implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public b(JavActivity javActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
