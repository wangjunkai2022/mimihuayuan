package f.e.a.j.o0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.tv91.MainActivity;
/* compiled from: MainActivity.java */
/* loaded from: classes.dex */
public class e implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public e(MainActivity mainActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
