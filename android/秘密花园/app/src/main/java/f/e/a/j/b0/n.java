package f.e.a.j.b0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import c.a.a.b.g.h;
import com.comeback.data.ui.main.MainActivity;
import f.e.a.e;

/* compiled from: MainActivity.java */
/* loaded from: classes.dex */
public class n implements View.OnClickListener {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ AlertDialog b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ MainActivity f3833c;

    public n(MainActivity mainActivity, boolean z, AlertDialog alertDialog) {
        this.f3833c = mainActivity;
        this.a = z;
        this.b = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.a) {
            this.b.dismiss();
        }
        Object tag = view.getTag();
        if (tag != null) {
            MainActivity.l(this.f3833c, (String) tag);
        } else {
            h.n1(e.a("0f7Jg/TW3I/xg4zf"));
        }
    }
}
