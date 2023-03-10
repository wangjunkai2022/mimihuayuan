package f.e.a.j.j;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.fengliu.MyFengliuActivity;
/* compiled from: MyFengliuActivity.java */
/* loaded from: classes.dex */
public class k implements View.OnClickListener {
    public final /* synthetic */ AlertDialog a;

    public k(MyFengliuActivity myFengliuActivity, AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
