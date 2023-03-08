package f.e.a.j.w;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.jhlf.FengliuActivity;

/* compiled from: FengliuActivity.java */
/* loaded from: classes.dex */
public class c implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;
    public final /* synthetic */ EditText b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ FengliuActivity f4032c;

    public c(FengliuActivity fengliuActivity, AlertDialog alertDialog, EditText editText) {
        this.f4032c = fengliuActivity;
        this.a = alertDialog;
        this.b = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
        this.f4032c.floatingActionButton.show();
        FengliuActivity.t(this.f4032c, false, this.b.getText().toString().trim());
    }
}
