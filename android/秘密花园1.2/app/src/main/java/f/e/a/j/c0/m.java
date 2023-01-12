package f.e.a.j.c0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.MainActivity;

/* compiled from: MainActivity.java */
/* loaded from: classes.dex */
public class m implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public m(MainActivity mainActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
