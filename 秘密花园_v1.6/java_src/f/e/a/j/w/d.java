package f.e.a.j.w;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.jhlf.FengliuActivity;
/* compiled from: FengliuActivity.java */
/* loaded from: classes.dex */
public class d implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;
    public final /* synthetic */ EditText b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ FengliuActivity f4042c;

    public d(FengliuActivity fengliuActivity, AlertDialog alertDialog, EditText editText) {
        this.f4042c = fengliuActivity;
        this.a = alertDialog;
        this.b = editText;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
        this.f4042c.floatingActionButton.show();
        FengliuActivity.t(this.f4042c, true, this.b.getText().toString().trim());
    }
}
