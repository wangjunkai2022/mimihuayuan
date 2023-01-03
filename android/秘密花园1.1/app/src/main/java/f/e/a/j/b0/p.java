package f.e.a.j.b0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.MainActivity;
import com.comeback.data.ui.main.QuestionActivity;

/* compiled from: MainActivity.java */
/* loaded from: classes.dex */
public class p implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;
    public final /* synthetic */ MainActivity b;

    public p(MainActivity mainActivity, AlertDialog alertDialog) {
        this.b = mainActivity;
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
        QuestionActivity.l(this.b);
    }
}
