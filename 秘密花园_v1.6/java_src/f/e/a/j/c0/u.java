package f.e.a.j.c0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.QuestionActivity;
import com.comeback.data.ui.main.SecretGardenActivity;
/* compiled from: SecretGardenActivity.java */
/* loaded from: classes.dex */
public class u implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;
    public final /* synthetic */ SecretGardenActivity b;

    public u(SecretGardenActivity secretGardenActivity, AlertDialog alertDialog) {
        this.b = secretGardenActivity;
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
        QuestionActivity.l(this.b);
    }
}
