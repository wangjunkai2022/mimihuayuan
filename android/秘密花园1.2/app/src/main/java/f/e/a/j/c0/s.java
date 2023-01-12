package f.e.a.j.c0;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.ui.main.SecretGardenActivity;

/* compiled from: SecretGardenActivity.java */
/* loaded from: classes.dex */
public class s implements View.OnClickListener {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ AlertDialog b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ SecretGardenActivity f3912c;

    public s(SecretGardenActivity secretGardenActivity, boolean z, AlertDialog alertDialog) {
        this.f3912c = secretGardenActivity;
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
            SecretGardenActivity.l(this.f3912c, (String) tag);
        } else {
            c.a.a.b.g.h.n1(f.e.a.e.a("0f7Jg/TW3I/xg4zf"));
        }
    }
}
