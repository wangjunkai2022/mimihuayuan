package f.e.a.j.b0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.MainActivity;
import f.e.a.e;
import f.e.a.k.j;

/* compiled from: MainActivity.java */
/* loaded from: classes.dex */
public class l implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;
    public final /* synthetic */ int b;

    public l(MainActivity mainActivity, AlertDialog alertDialog, int i2) {
        this.a = alertDialog;
        this.b = i2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
        j.b().g(e.a("WwMQEDQdVkcaBVE="), this.b);
    }
}
