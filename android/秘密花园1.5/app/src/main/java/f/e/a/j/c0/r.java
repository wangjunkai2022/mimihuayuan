package f.e.a.j.c0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.SecretGardenActivity;

/* compiled from: SecretGardenActivity.java */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public r(SecretGardenActivity secretGardenActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
